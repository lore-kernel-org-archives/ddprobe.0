Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CCC19CC2E
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748068794; cv=none; b=dY9+t6ilmiX4RYGjCwUgcYQ0dFk8oYE1NynC/nA5Yb94zcvXCur/r8lTOi7azIiTjAFIeKVpUF2KcOx68RTNOKDGb91Ye7pJ58477l4z+N3ckZ28d1sK7sNwBZtSYL3eJGhHb/SlL4wzwPyMh2sUP4NJP094qfq0OkjciPAJeuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748068794; c=relaxed/simple;
	bh=8Oz0B/9PqQ0qEOPBtXT98htCqA07ufXtQgf1yrry3Zo=;
	h=To:Subject:From:Message-Id:Date; b=FLmRrd9K6YC6IL3XQ/TAtpfg4AN9P2Rf0Fy51x+vTwPFLxDNdKZ1rHWTsz+WcBNDxZ/rmu3u2YufJPGl2molLkm3nUIW9Tkv+isKxxPFxssdkTq4RBKMG0xVES/MZK0+u5s0Ks49VztNGpcTkmW0kgLCLAEoJg9ouXOnXEyZixs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRB/zIUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRB/zIUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68EEC4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748068793;
	bh=8Oz0B/9PqQ0qEOPBtXT98htCqA07ufXtQgf1yrry3Zo=;
	h=To:Subject:From:Date:From;
	b=YRB/zIUlw0gNVeG9fcGex9tThSFBDWKQkbV/IbkqxzOSbVhzzEYTSpax1x2QgQWLS
	 o8ulL2NMzbx1efNRshoNhC0EwUsTFKdv/qNggI4oIYVRPZvB/VQ37bNe07kO33Al96
	 vtHbHx8n2rCizFsjxJ+elR+3JesH3ocXxJ+I84UXY027gSYT18hLOdliGoHpaHyFow
	 SjGBgbE64qk4PrX5wamhO17FTAyWedhis0iIgn9VD8c2JuDU+XuXrneR99XpSOln97
	 PKpeDxUoZEn8IF1RTfOsM83CA7g8TPl3t271GQUv0RskkHO1Gk48r3K0FghrYFjWIb
	 9SGqwkbf8wlFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B18C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174806879357.27199.2124820345169822800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 903f598d011138fe73d4b27b9c3443905d025c596dbc80ab1d0298244b6987f9
Date: Sat, 24 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748068793
