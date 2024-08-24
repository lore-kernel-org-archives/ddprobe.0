Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280508F62
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724541954; cv=none; b=kFaKQdGloaKuReOSYhEcHtmxQXOnH9Dcn24YseuBW599YPDX/jSfrEKAVZtN7wsug/7ehGdcSLr+zmPXKjQifs3Is0zomvYNG53jNhIkJUJnEwmBMhmtxWTmboQhdLl7HqzPKR7by3O/SEYRL05VHOXpw7LFT6HJj79H8+VaKwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724541954; c=relaxed/simple;
	bh=NCr5XK4WhAquMDScV9yArmCoV1cd8PoQgIgB1cqgIEw=;
	h=To:Subject:From:Message-Id:Date; b=SBGiqp2L0mwijoYbpj0V9MRg9jYrF78/0C1qrFX+Axb2HNsssXqkVn9iHFav/nvZyD4FpGV5XwZke1tWlvm9YYzNMfbxd47UayM8yONxgUzt5YuwK+w4XW/WK5STB9p/IT3NH5BXTSLmSaYwuoQuxh0Cg5ZSS9aXz+zRQ1i+xrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPyHVGR6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPyHVGR6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F7EC32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724541953;
	bh=NCr5XK4WhAquMDScV9yArmCoV1cd8PoQgIgB1cqgIEw=;
	h=To:Subject:From:Date:From;
	b=LPyHVGR69AD+FA5zw+uKg3uPCM8xFdVf1yd2SHkEoOLd5NUF20WJEHj6EeGfwJHsw
	 CEkOLki7QQ+FHHSY3hQ/jDFWZsED4mqfpwxMbOMyMUtN+0gklGrg3UtUFsacvo4kHd
	 ZssYeobdVU94rlUBoE4tpm4Gd13aUo233m0vraOskAJLCcLwa674Rm40GWkha5PnnV
	 RoOCbKWF1T9cGL+LadVl9Dx64UH93k34Bjf+HaH9guAZ+DBb0buQ8vOtOSiFS7yKoR
	 0pGNarChdxw0k40yT+YIJRNWKjbp1j1V6XuRe90s8k415riU/+kSTrDncVjxgjucYl
	 eSl255fwaTdOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F9A0C52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172454195362.26866.14985146015045436557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1dede46a07185ba70b45859654e765b461c1df22dfc13e0a9960636b78d6585
Date: Sat, 24 Aug 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724541953
