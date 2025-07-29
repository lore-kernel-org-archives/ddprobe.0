Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D01D1DE4CA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753753194; cv=none; b=SyGritr7ZaFRoWM138TdMYd2a6wSgy2E3dyXjv/UeJpMcnjHkW9MRwDzLfS32FAQEi2489TkKcc0lmnpPZTWAEI0Asz+G4SX6JjcOORZGWTdlqmoOXVquP8XuUWklN77KU3hd1R7+3WJZx+s0Y61ABKCyfheJNkHS5hbLK27Bvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753753194; c=relaxed/simple;
	bh=uw2P0EVMMz8P0O3tPaGHh8m1wAzLht7mLROXH2RNtBc=;
	h=To:Subject:From:Message-Id:Date; b=XK5Q91s8zLbesaVNfIET+20RTpvbmnhp3eQDJzFVEzxu68ez2RGDM6Z+oLhIUEaFT5UJ/7J8NGkVQeNza/Ugf6+XFpi1uEHUKtEqouhU28snl+v0TzMovKW/m7UHcOpzPWZ0jZd7LZ8jEcBbapccdFlJ3Drwh9MJ8itIrrfJdag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7XLI8HG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7XLI8HG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30AEC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753753193;
	bh=uw2P0EVMMz8P0O3tPaGHh8m1wAzLht7mLROXH2RNtBc=;
	h=To:Subject:From:Date:From;
	b=k7XLI8HGwCfK4JQQJgswEIJU+uIXLxJAXSvT3o9ckPjr2bb/BMKRFe/rolg4rbJyQ
	 rfWmpD2WgmhwQPX1x7GnuSmBzMLm/ZOYfwEjWBhygwV8D+mgqmV0JmY4GB55KWmzok
	 PToY/YMbHC4yzLLAZRHHCvsPuSowN9Rc9UhPb+EZo5o0Ewq6KGu6+aaQU6tpeZ+Gfg
	 hSRggq8nq+6O5bvxcp/Vdr8RWj9LfX2cSQYRqlZYh+vSGVyxqI5yWMYCVqDseVyuQU
	 b1bxAVWxyxRJFzz4C9qlerUlm+nwDZHHj8vlADkOWz1WL3/vt8F1yIy6pQLiHM4Q9a
	 rM7ia/ZXyUy8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91150C83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375319357.26420.1445612172899099786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8959b2624dda2ade4d20b914bf441fd0a99227d4325ddbfb17382f3df8e30c2
Date: Tue, 29 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753753193
