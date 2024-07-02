Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B82E3F8E2
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719893123; cv=none; b=tEny3RQCwG7em0gGPe3HW1VtXWzCp4qHE8B8c9Jlly8gUb3EpWCOUiCgOoMhWyCBJMRRhW+RgZalIV4g0Z8tWahGNH39hD9AdPF4XCNG0JmKGpNltsy4+5qW2wAHroWVEZFPusW+3dlfTJ2CgvlYoj6g5zhTOq1ROokOgcjY6dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719893123; c=relaxed/simple;
	bh=aJDr26yEEwgb3V43BjLOctG+FZYlzxZyr6/OJB9nVVk=;
	h=To:Subject:From:Message-Id:Date; b=TMmJElJSia5uP/GQC3zbRarY/K4E2auedLHnNGOIcb0+0JVxduSzvGQiYu9lBz0F8pQSXMYzDLvnH5u/8BUtWNb3O2WVqx/yWLAHgagsKgn1KHei5d/xyYFOTOF6+kArHRyFGTTYP3zOBJZAJLO1HiLye27NVLHzIBY/QmXoW14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zgs88O3d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zgs88O3d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6904C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719893122;
	bh=aJDr26yEEwgb3V43BjLOctG+FZYlzxZyr6/OJB9nVVk=;
	h=To:Subject:From:Date:From;
	b=Zgs88O3dqVuszB35fzuOjlcfvOnDzOwmz+Ps0YiViTrkS0tHaNqmMY/9r8ChKZWwF
	 jbCvQGdmIKCfuvLKOzEOiuoOHmOlSeE94tarfwtiliUNJKHAgGqpAhdSWUpDvYHhtJ
	 PzQT6gPu2c2ji6wFppkelonfWZCW+QBBpUsMMmrtzsW9xKQTkF4NEarcU/GOLWQjz+
	 oYXghds5oUQSjt29Uu5VlKBFCH3yoTPeaA1E8b36wYDhc1JIxD4yPIRYMcn6Nzg7+o
	 lscX3Qr5cBz1Ip6vbQP5PsAHTrf/CVeiGwAJucxhMX96IYFKGCo6T6D0P2kTATUwZI
	 LhPdpjlQ41ILA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC28EC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989312282.26570.11063194164424162002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b448cf79b74095f368f60b9581b3db046af00f305f66ac2284f3bfd791eb0aa
Date: Tue, 02 Jul 2024 04:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719893122
