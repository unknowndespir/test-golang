GOCMD=go
GOBUILD=$(GOCMD) build
GOCLEAN=$(GOCMD) clean
GOTEST=$(GOCMD) test
GOGET=$(GOCMD) get

PACKAGE_NAME=test-golang
BINARY_NAME=./build/main

build: clean run

run:
	$(GOBUILD) -o $(BINARY_NAME) ./src/$(PACKAGE_NAME)/main.go
	$(BINARY_NAME)

clean:
	$(GOCLEAN)
	rm -f $(BINARY_NAME)
