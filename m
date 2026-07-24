Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FE0363095
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784908234; cv=none; b=N/gsbXrXYmhtMdsXOfJeraxRwtbvsw4ztog5mDO1sllvGXflo8QP0TufgKqKejmH3l/qMTVKn9D0fYWMZ1H3kN5NPM5ZDexZaQsQBdEIsY2B0FGurDuY/4IYAR6nnpU9NG5KAEgtj1BAfzuDmQakc03i6dvOyJlLM/+nawZeR2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784908234; c=relaxed/simple;
	bh=OvPtBg7mA+b8Mqe8LBgeR9hYKESC1nVbv3Umx3sQ+Uw=;
	h=To:Subject:From:Message-Id:Date; b=g5aBTTiCgS/lb0nssJhvoy2Nd5xIVopkYiulPfEigxR/JJ8tae1aq1231mKJbmB8d7g1Q2IdF2yIyav2VybpdPSsl6B1TImFrLOtjOCW84SwCmtk3wTtvTWxRldlZ3fcBQngbWnYVSUAYBo6zb39BDyojVoC0fhs0iIOcfJLHL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMHd5ism; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMHd5ism"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC14CC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784908233;
	bh=OvPtBg7mA+b8Mqe8LBgeR9hYKESC1nVbv3Umx3sQ+Uw=;
	h=To:Subject:From:Date:From;
	b=sMHd5ismF2BADPDaR1QdTgFWSZeyoLDg++3sO1kBxCZ6rOfvCigVFLdJyazpVacZ5
	 NQU1vRnrNNFUaDI/Kodlb0J1j+hK+NHxxDzooO5qNaoKOOQGcdJlIcHa82IJI5Zvf4
	 4r9cCj8J2OXDjQBfOlBauKwkCUgqTDWDm3KW5Jb8xmcwwQM1CiEOYWVp3m6LxeAwhl
	 Maap2PewjxNFR9JKfu9UHeveWaHr9nWKAhUzclr1t8kj0SLiGzCjG6FtlVe/LvfDMl
	 7firJFBt8xhhRucPdKDtPXhnd+cs5grKP4H02zb64VdT0SvMGNqsB2zc2+zreB+yJ9
	 hgPNAOl3woJrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9456C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490823368.15722.1739518747457197461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872bc5d4f68396909e6d6942643710626258fbc6e0c1a4860122c5d8a239ec68
Date: Fri, 24 Jul 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784908233
