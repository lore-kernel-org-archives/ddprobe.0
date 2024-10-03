Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 486081AB535
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727981754; cv=none; b=DVE8lBpNR2d/qF/uGJf9KnOADOHMdZOU/yuOjRuMmlpSNBZxndgiIgPV5TBANI5hWH/sOeE8v5Bwf+rFR47AgKWt5EgzNJYkvrwm0nX9fwBjY68K1wCt8I2+L/RsnjMAbs4YORFPzeUcOiffam29YLlY3ZyRx6B8LBf2OWF5Z/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727981754; c=relaxed/simple;
	bh=qQ1/nJgYRb/T7kyf6t4rUvAlMQujlp3zu+zsIFTAv9M=;
	h=To:Subject:From:Message-Id:Date; b=VIRDwwYVF9Ew/0OHWE98lBqgrMD3riTiGrUn+Ze+DuuyCo5VVQgjBs762R+AVAFgtl2MMK+wwyowJmjUmjg+8m+y5PmDmZRXewx5oWzk79KiuRs+K3Rkfy7zJwxDwyG9vKLZx2rJnBOJnDO0l23/s7ANeHigF2z7oGvoQi4um4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d6zQLPkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d6zQLPkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B61E8C4CECC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727981753;
	bh=qQ1/nJgYRb/T7kyf6t4rUvAlMQujlp3zu+zsIFTAv9M=;
	h=To:Subject:From:Date:From;
	b=d6zQLPklG/eQdvyEtv3GvUovBK6nft+6sa7JIiiJ2qk4PbvCnfEZJxAKffywMB7rV
	 valHl0yS8Od8vEXBK78u3m+fQ93jbEmVXbq6KDBK0IgZbjd+0bXmlrGPe596uCIKtN
	 ITIAx2eXHpkra54GdvriNWlM70Yh+K+rAISRmIZP1U0fbypIwznG5mVQmGXu+5NDO7
	 Lzrw/JcRuv0W3Pep6Zr41tWf72ARktGVoB406fk96iSnLuMZP2CRrBWAofT+7t2Pbt
	 BbFW8bHjD5Q+xrAp+6KsfEB2zKI68qaZlQ1YCbRTuL7EfVboBU0oyBESulrLW5e3L/
	 w0rhC2qTaPk9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99C4DCF34BE
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172798175361.8024.2542551019021237011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7146ccb43fe5dc4011e0d11b1e2672b2e0ce28451acf4d496360bdbd1eae7c13
Date: Thu, 03 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727981753
