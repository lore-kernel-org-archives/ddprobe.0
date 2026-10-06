Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69B4D2AD3C
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791254434; cv=none; b=QZaG1Bt43JTa4j1+C9iFMbBCoYU4vulV6eczmRjlG6n8l5IjZpePmm9ucYqLfhRY888Yo/RR7YXqPaMuVFDb6H6YXSVpdcs2WRWyYRH6pFSy5e4DO2N7HNtfn34mYFiHMPeqJ/xh0Ljv0/X9rk3kcymSsjWKGq0KYh2gffPvNN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791254434; c=relaxed/simple;
	bh=2eBMzfnqn88rtnXJFWyNvcx+kZ8OndZykeF999Hx/NE=;
	h=To:Subject:From:Message-Id:Date; b=aPos0ILUQEPpY9x4WyNdoshGGdUtAZ/gv4goER2zV7hnhY1f0Ta3pQ96S4aKr7KmzFbhp3D+wORduGF4OpzSbFTjjcU3lRpSZqXDOSC61P7m6IKP0X9lfyO4wFBYeNTIYzCqiptOHWEOJWzPH5jZRgLGqRcIqnofgKMC/rnN2cM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kO8Lkt3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kO8Lkt3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6E54C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791254433;
	bh=2eBMzfnqn88rtnXJFWyNvcx+kZ8OndZykeF999Hx/NE=;
	h=To:Subject:From:Date:From;
	b=kO8Lkt3wVcmWQsGxB4yEXoTxfSEItUfts8NV36+VF4/c6crvzMb/yoX/nwOYTCrcy
	 mg8pD5S/f0un3cnQHGiF7d3M/cwweV8F0DGi3Z7etxAvCbY2Vdwd2ShtCXQCxwo47j
	 LFtSYCuTlQ934L7+Wn2c1CyaQjBfu5S/nAWZ2LzDm0pdhoiBj3kk5WVyYWKC2//vRJ
	 Cvqi4Ll0C3ZgrTeXvjgEJVV3v5ITbKh3Usndh7ieIHO5NGPdeoBzdXPXAIEsHv3ktZ
	 vcJsV4NOWqLdyJFEdMsFzlFP7XM07bCSKOkNpmb4/I2u6GeAyZYVsEFQjOHneL1SUz
	 qiRAYeoKT6Slw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B232DCA5FFD
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179125443369.5889.2224827163704370141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6139b3b71f500bf3393d37d962af2b0ece94124efe74e45433bf0a78bf0077cf
Date: Tue, 06 Oct 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791254433
