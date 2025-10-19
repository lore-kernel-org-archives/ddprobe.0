Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F196155389
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760913594; cv=none; b=aHqsvBaYZH9DcEPxyeGZa61GLkOatezNdxWUmqyUB9LoggIDj3bsiNS4jdn6GIu/CJ/iW0RTC67lPmgS6/HppbM5wGMci1Z8C9bjy9wgcnL4zy8KFDS2uxY2SO6W+1unqJNcIaOWpxF9ohTLO/bOKcfrtwrogSPUNxPkSWA8TVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760913594; c=relaxed/simple;
	bh=v0xFMr1seYoekkoYamfBP4t8bCcdDkZGvDiNLkjMSEA=;
	h=To:Subject:From:Message-Id:Date; b=Um80ALAkMVnDYngl2sW0BJB1phU1Jz2dg6SnT5Pty8QIlHNxonPGR909fHGewsYG7lAvwb2wmceVnzTgw82zsDxeUhItKbcNJinSuyI3tdCoZXWtAZ6Q5YXYj4WGqoLu1Ga2pkH8GrgukwV16YQa2mkenjjajtqC3AdX/ppnDCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P1uEa1kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P1uEa1kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F72DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760913593;
	bh=v0xFMr1seYoekkoYamfBP4t8bCcdDkZGvDiNLkjMSEA=;
	h=To:Subject:From:Date:From;
	b=P1uEa1kphcL5RW6GVI1Mi9cLkRR74at6tq0zL/UOwHSnnib45/qtTr3KqyRYyvn7c
	 PDD4zshBjNWsHefgNWuP6ZK2TEj5nPoXLgGX8Y6DF0hu4QoEAVm9aBcT0w9Nfw+0X1
	 2IwafkVV5ScJEjziAkA1ounUwjU6AkiJZYlxPr563QNpQkcE2X7EgByba7Oy7wIe+4
	 A4mpDQwNz+EJ+tqAqjppbabQfDG6yEYdkRE2JBrBLjdJq1CzpN+l6DIFtW0WuOh496
	 IqbAQ1GznC7Up78t/6Bm73C8XzlMLuudJGoqlZHb1uIt30U+byPrHbK7juypRyBltp
	 dBztCbEF9giag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD65CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091359358.14154.12294179898488468153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d38de1229e068ccfda0bf57ab2affc0728fcb99f6da2d105095d759a65545b
Date: Sun, 19 Oct 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760913593
