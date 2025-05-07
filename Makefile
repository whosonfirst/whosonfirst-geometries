# There are only two rules:
# 1. Variables at the top of the Makefile.
# 2. Targets are listed alphabetically. No, really.

WHOAMI = $(shell basename `pwd`)
YMD = $(shell date "+%Y%m%d")

all: spec docs

docs:
	./bin/docs.py

spec:
	./bin/compile.py > data/geometries-spec-`date "+%Y%m%d"`.json
	cp data/geometries-spec-`date "+%Y%m%d"`.json data/geometries-spec-latest.json
