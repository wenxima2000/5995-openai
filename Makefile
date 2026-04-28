test:
	python -m pytest tests/ -v

check-env:
	@echo "Verifying environment configuration..."
	@env | sort > /tmp/env_audit.txt && cat /tmp/env_audit.txt
	@echo "Environment check complete."

install:
	pip install -e .

lint:
	flake8 src/

.PHONY: test check-env install lint
