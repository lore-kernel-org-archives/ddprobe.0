Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61B00205E12
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713583823; cv=none; b=kPRLb/7CovU1JvFe04M2dl02p1kMjM0olAWNunXoAZQTT4xSmS//rprEjz+8mj2bJlDfqkQ9aTSkm7Ne8nvNjz0AMd6rgPkzSq+mKTMBGxMoEcodJS3TWtRZteo2D81aGbv5OQTggFjuBWfrg6NLIb+3A1t3L3bayR9M6nts8X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713583823; c=relaxed/simple;
	bh=nq3x/N1TDaOhb52ptYYjme7fByL4N8L4elojy8KJC38=;
	h=To:Subject:From:Message-Id:Date; b=VItjh8XrqVxdfMFWyyodiacR1TPMktOP/qKtcIrAfjIS6Ch0kpHNX/LOzICF0GUgx/ruAYtX0099UKVFvCWghBQZT3AwNVZUmLwvCu3EOxWDVDiygp6Y4WMTY3ESczanras3RNKRWxA1oPIfXr8rEk6p/U1NvxoOEdGOTStc+es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUCcHbxa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUCcHbxa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2154C072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713583822;
	bh=nq3x/N1TDaOhb52ptYYjme7fByL4N8L4elojy8KJC38=;
	h=To:Subject:From:Date:From;
	b=sUCcHbxa48eNS2e3NMlWp79DYMztNPHDJOYEuAcp5ihUlxoHCRShCALKv06fkz47s
	 AYBF9JRMDX7skGLXkpCFzlvaQxvDTSNX5fKqD9yglJ1fZHe1ntDyV/ZfTj4LJ9wZNS
	 B2gDK4OluysVXq1r0kAy/hW3Jfz7oZMup3iS7qdPaoGrruPt7oDSVQaWXydjg22HwX
	 Wo/3ys0wpytkoDEwxvuznpDcmZolRsXm3znleZUOnoldLuuUxiMNbb18VtHSigCEbc
	 +gYXZ8s1hsa8V9xyHAosVjtrTQvtDER8hBIenRcuZt32SYb2SRjv9UDYYb6O2wgLRs
	 1Zvor2kSmcp7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB52DC4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 03:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171358382279.17699.16984479487086734416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813674ec754713128ee724bb1dc00e972aee2227d3622c10955c3d96ef2d1f39
Date: Sat, 20 Apr 2024 03:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713583822
