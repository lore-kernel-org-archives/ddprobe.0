Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0F223ABBE
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789865434; cv=none; b=dRsoQBtk22z2irzLaIcGLL2pIsslFb2AoK2u+en8q8QmZ5ZpUj2A8WvDS4TsR5wH4qN5BshYXVJJLc8k9OL2REB+CGkPD5Jb+V7XMR2C84GoDG1iOe0CY05vLImN6bx3rI9kQufQ7wfq2w9FMK4px8BAKQsU7tSMZzO4VdOEsIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789865434; c=relaxed/simple;
	bh=69L4g/EDiTZyX2aIbXFc25LUSE3owq3MtlocR3nNx7M=;
	h=To:Subject:From:Message-Id:Date; b=JfwgQyQ6id10vlx30pmgMS/QtrWPqOQlzmzwWEcYl/DgbMNkcqx7sWyrF1JM7RTTeiEd37PZvesev0kkGn8LR/wrHZ92Dz1lubbDiQ+3pF1z9uYknmxG9YhDeQmf3fMa2qDc7n7ves0LMOmAA1c6tCnl2PlRTxvPKt1y0Nm83VM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSSxMOmA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSSxMOmA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2428C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789865433;
	bh=69L4g/EDiTZyX2aIbXFc25LUSE3owq3MtlocR3nNx7M=;
	h=To:Subject:From:Date:From;
	b=RSSxMOmAZfPwUhxrC3z97modEzx/n0eZ4687pn7k0r89sLO9AY9KZJwknYrscSLqM
	 O75BbYK1lX+bz43JwIoT9U2ylnbTZV5LCynvOkkf2AV2Rrd3DJ9JWMR5TCopGKC0Wu
	 qXX0Nk2BT7uENqYNi6qIz6pApCL3r+jvli5Yfaajo3wVkKjXrHbtu8JY1xe/8025P0
	 qFNHvp987P+vkzIrKVbKzR7V2CRppv9PedyPsFhK7SlxI+MrUWllmkRZD91GyOkdRg
	 dj510XPiru++2J8YnOhBvmlPtriboExrzKimHbgVgotcwpGi5gaTf0QiDC7CJD2Im/
	 +g++bLx6Vb64g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B01D1C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178986543368.8926.1638583254439352960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1458ebc4423b5fd1715820f29534018f50cd97e7929693abc1e824729cdd7bc6
Date: Sun, 20 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789865433
