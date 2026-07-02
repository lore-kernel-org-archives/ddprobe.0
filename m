Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E30838550C
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783027114; cv=none; b=IwWQ7QBSIZn/+VyGxq1WvqbYio4eIqTztlz87jgeCHOacQLTeJk9unOQqhx3sudgXsgVgOTyir/YLY7SKc0e1pvnM06Ldp9r0pTdd8550ydv7gOUSI2aOU6NV8qrVVp3ij7h1VaQAjjGBsTOR1RoxkzmSVXOf2+ErZwYEMB9nRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783027114; c=relaxed/simple;
	bh=6L9CqcSdgWOP5shHhpQauRZpggGIJpgvoVmO2RKaKJw=;
	h=To:Subject:From:Message-Id:Date; b=NRF5y2DU/HiEYwJhee1iy7suwKpXWvmsVOITxP0dUwCx5yIsCqqwR9ksEHF0OE9pdw9kki/NPuwnTsRcaOSNl8RWAzVGuMbEYI6NSXtGPwcjfokm/UwE4C58FnpfidU6RCbR44YaZfeLG7m47ZWPPSeMbUdybwGCW0vVQmQ3whQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arsJj0ch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arsJj0ch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C37F0C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783027113;
	bh=6L9CqcSdgWOP5shHhpQauRZpggGIJpgvoVmO2RKaKJw=;
	h=To:Subject:From:Date:From;
	b=arsJj0chIjdCo9Gk8tnJnD1ui1hDfBUut3YWSQTP2QyGhCgRTTIkG6o3U5bl4m221
	 BCR3TAcFI2NGksWBp4QFd1TquhbpeHyni1e72xrrj535V6bASdrxJX8V3EBRB9ZZG4
	 kaASfNph+w9cRENo7fm7jtUT+Bbjg80oDXBfW94ph+WKDhG9L7GRWdJshice8Y3ru5
	 O7Cpe/JlSRFdrd4jT/irlmhGNpBuc12ntC4fKFxvf5yqx2hwL52QTPkgxO1nBFrR+m
	 NQZrecbsE4TTfqEszROJwycw9a/YJLbEbCgYCNFvUbqzgG/65dUbjayZq2QoLaNLtJ
	 0ma5lstWcY4XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F46C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178302711368.32528.733922825490942332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 921ef7ba68a956521217473167c109146138b23738f2e1ecbe01931a10181532
Date: Thu, 02 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783027113
