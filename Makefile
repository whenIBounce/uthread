CC = g++
CFLAGS = -lrt -g
DEPS = TCB.h uthread.h
OBJ = TCB.o uthread.o tests.o
%.o: %.cpp $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS) 

uthread-demo: $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

.PHONY: clean
# .PHONY define all the targets that are not files
clean:
	rm -f uthread-demo *.o
