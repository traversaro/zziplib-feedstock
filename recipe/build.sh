# Get an updated config.sub and config.guess
cp $BUILD_PREFIX/share/gnuconfig/config.* ./uses
./configure --prefix=$PREFIX

make VERBOSE=1 -j${CPU_COUNT}
make install
