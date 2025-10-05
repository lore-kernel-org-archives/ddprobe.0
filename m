Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A7051EFF80
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759654194; cv=none; b=YDfXW1U76Y+pOQCPFFvcPP2u34j/TAZV4oEnUzZzrVwLWe1CQQJrPnDAfIxio8Z5F0C0qhQ8bxgY6Uunslh73rBfFrMYIsCqjIi+w0dL5/DVPQMSJXXyKrnctVGUNJI1LoyKvMwh7HAO1PhpbpPvYTC6hmUY+EW/iKbTO0YH328=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759654194; c=relaxed/simple;
	bh=1uhLAAIt1DObXa/dmajZHTBq6llpGxXXB7vpb7mviTw=;
	h=To:Subject:From:Message-Id:Date; b=N5n55g5rENr6RA5mi1BAaagsnTufxYDMxEVFJz2486655q8uFhuVKpIldLCkjve9uoO1PMJOQIQPB5n0g7J+4LYSmlVYRImmvtjzIq1DoLElwwPL7emDXQ7fFJXGEdxkxnDWLDSNz5CwQAOTU9VR2bCLynuoiHpJx85z9dv4wcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HepJ54PS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HepJ54PS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A80A7C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759654193;
	bh=1uhLAAIt1DObXa/dmajZHTBq6llpGxXXB7vpb7mviTw=;
	h=To:Subject:From:Date:From;
	b=HepJ54PS8SDoMNicqnYt2OjYjKpHnYyHLS6kB0zuNhsr1Boc1H4C2DQPXA13e29rO
	 TZiK+CzuVB/lVDpQLXfvDnCQc9jjSUijLXmeaKaG8nEmdKaj6MxgnmNGlmleo8QAM0
	 vAZesQc0qm0W/OZhyidr/RegznwPe0lejozn5O66SffgzEzoNP/Qkpl/EtnVGUybaF
	 R9iN7SXmIkPHqbUyZrM9/CI+LSBcjwDdkoEj5yHV2ogODGMbkElLqeqhgB6t8nC53p
	 sF5Vm8/aGSVt2pjrjUrJ9dCX56CBv+iYU+oPz+s7BTFObT8y7ygvVrksjKUf9Sx8iV
	 cYRMRVOxXyp8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E22CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175965419359.2094.13452131397618002191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d334d73eb8dedc415bc7968974cd479a7ab241235e5d8f5b7d2456ff5b13188d
Date: Sun, 05 Oct 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759654193
