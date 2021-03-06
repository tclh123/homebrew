require 'formula'

class Pwsafe < Formula
  url 'http://downloads.sourceforge.net/project/pwsafe/pwsafe/0.2.0/pwsafe-0.2.0.tar.gz'
  homepage 'http://nsd.dyndns.org/pwsafe/'
  sha1 '026643a391796a527a48ffccf93d542113ca79d4'

  depends_on 'readline'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}", "--mandir=#{man}"
    system "make install"
  end
end
