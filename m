Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C25168AE4
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715336543; cv=none; b=GSDNJWsDgWETllSN5By6QQGg47avmN6EUGT0bqmhDyFRorcr3WRSM1ifYmRA1ar2jtwmBTXYitkb5pySn0flqoPVup6z2NIYQBzC7S2z+XzsSB4YPOOQUazdjGC1QdxvnCt453B2Ea7X7/v1nljE10QclNjgQMhTbNsWr5ZgAgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715336543; c=relaxed/simple;
	bh=6ihtB6woSPJsl4A/ZpJA1IEMj4FEV7fMTVCP7RDHBWg=;
	h=To:Subject:From:Message-Id:Date; b=dSUVyVva8oDNokU03oxW7O4ZpYYYiCZr30AtL5y9FPTtvmho3KkC+OI/YRyQRTNC7GbdDJtdufs/AG4Bb52XKDyDripGhAdkMq3qgZ0OlJAnHSCP/2BIbcH1eErY30MhyniwYo5GP+kbkzEp3obSEpkPTB3Iy1CQPBJk+vfBxSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbryTHCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbryTHCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6750C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715336542;
	bh=6ihtB6woSPJsl4A/ZpJA1IEMj4FEV7fMTVCP7RDHBWg=;
	h=To:Subject:From:Date:From;
	b=jbryTHCSx51BwaBn3vwcHUaLNOZC8lxn78t3LLaYQPX71CLCihzDunfW+9M+wSXtA
	 tLlIu+ZLMfnXMZaYfVSG6/C127+6FS68EUZUfamy7R55mnZ3Gd7FqjTM1czXpBT8RC
	 ej7AUlHfdic4KzScv+XxQ5QVvPzb1pJiYYsT065ZpONRXloQEBqdTUiXhh7/B3Ntdq
	 BoMwoslok4kIOJ1pJMbep3d7Qi3w+hFgAGN7AsMceDI6bpn0dkxauI+nwAYEZm39kx
	 mvKtc1dvibV3GtrEK0MaALTY9zdlbCeApKIll1YDOlgmrnHzjq4Fxigq7xAWJAf+CQ
	 nxmghoUdZfA6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C12DDC25B74
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 10:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171533654278.28197.8981826778966049814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af1e264decd84fac3a6023730deeee512e2dc4d72f0cc026d63999076aa706ac
Date: Fri, 10 May 2024 10:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715336542
