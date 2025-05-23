Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3127B13AD1C
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747959594; cv=none; b=XRYs1i1o3BFnTT84FxZ7DdXCLii+oic2yjg7lQpfR60uTUYT65lEg10nOxDSHvcxGlIccttOmVlgq3IndsjsVWYIdaic2m3JA8wHz7VYfwC4uwX3cNoNjYwJHRBH3xqE70T8Sak9eOzNptCKeO8aRaAGnG3MMA9XBtVsbN77tds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747959594; c=relaxed/simple;
	bh=g5mcnJmau3Tc8gnxdqIyyhfaraazefJTV9Eos5XVYsE=;
	h=To:Subject:From:Message-Id:Date; b=JaFj8fbFcGn1uNw5tCLRI3YLyLFGqaaWXoSPkW1gOVMRHxYm5+3U4P5mq1FVDdRArw5pkSGxN0+7dIvF9CWzTj60EB1z6+FlmCoqKGFRErltGXwv6G7vW5TwLLx3KOUe7c5GyNOwAN4eS2iLIie5auMN0GEk3dGbQHCOvWJiOvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU0AmniY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU0AmniY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8538C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747959593;
	bh=g5mcnJmau3Tc8gnxdqIyyhfaraazefJTV9Eos5XVYsE=;
	h=To:Subject:From:Date:From;
	b=pU0AmniY0ZiwguPdj0ApYjR4uQAqqdpfijRVy9lnCmapDDVsHDueVF8PtTlHClWGk
	 GNvc4PJ3mUupBRQLC3nUpXT8jy5SaRghkS2T6Wx8YUUbFupYYtq6IQeliW6ftS16bW
	 rsOL/d+mSdiTFprE29EJ7n3wzhtG0U+Ryi32+TnBcZTjsGBkJllikZRyBi9Xv0d3uy
	 JrywRV9KX3XQ7zMDOVSDvAoP7Q0QbVrc3X3yh5Q5HOYkOTQ06Q3Lxp/xhpmJlFuF8k
	 pGC1AMhi4wn/KQai0sjbnyzhufQpzTHteUiGgxNUbeHiDFSjK2k8N1JZ9bHEVkXv4A
	 rf/iNe5t1rk7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92794C54E65
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795959357.12029.1074137518355044375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50524847b4f8f2e1520091d53c2115f9e3671c8b163c2e453cebd61c781546a3
Date: Fri, 23 May 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747959593
