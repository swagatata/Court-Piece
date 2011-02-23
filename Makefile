all: test coverage
	
coverage: test
	@echo -----------------------------------------
	@echo      Coverage Reports
	@echo -----------------------------------------
	python coverage.py .coverage -r card.py

test: card.py card_tests.py
	@echo ------------------------------------------
	@echo      Tests
	@echo ------------------------------------------
	python coverage.py .coverage -x ./card_tests.py

#I've removed test and coverage from the source list	
.PHONY: all 
