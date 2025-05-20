Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44EED255240
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747705794; cv=none; b=ZgG7LE42zrtCxxsVdLuA+AUEWDC9MPEUT69AI1GWR+q7YDPjTT66PhiI29v3JQOgske5jNwUfM5gnOWuSBLTDHgW/FKt8HgyT/EiNBpsOA9X7Su7oQAjjfJtJMD66nv+EdAoRMugYBgmjYY7+64Q5OfeeYVJG62NHY15dalRsWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747705794; c=relaxed/simple;
	bh=0OsX29HkcurOpEFItMdGKnUFw64Az0EUzJ+r4eAiQ/c=;
	h=To:Subject:From:Message-Id:Date; b=bv6RS3tn+hobFSlTHnOv8KnnhBRQ/X34JnlKq6XxJFkUDOamvfxLssFLjlOuhgAPRIfXWFlC0Od08P9NTpQle4EyK9n89B8y5mIIgBfR0xUXecuEIoxBvBulb+hB5trF5RNVJNs282+qjBb4svbkUe/nF9TuXmo5cf1fDds/4B4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hPC0+BH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hPC0+BH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E9CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747705793;
	bh=0OsX29HkcurOpEFItMdGKnUFw64Az0EUzJ+r4eAiQ/c=;
	h=To:Subject:From:Date:From;
	b=hPC0+BH5UDEwCtwENnnaZZIht9vk4f8Dq4+PF/sMwwXsMj+qIP6RLxSwfMYt3xbgy
	 1Gzf2zsKydNiYeG/lcf0mpgJOtCTrTB8Wn3PktbaNpOQf0GjdIQKmAWFvzaaOBWnU4
	 xuJGObrTkggLG+3fuktwcxHJOVQYGsY8jDA3r4rSws1BkM8q6qU48LHyr5w4vw0I2A
	 pYPdP+NqLYPdwQAMbVGffDD+rajIOPXI5HLS7rhENhqe5omoyfBBWtMZUKOp3bMmux
	 AsSMUl+mcQ/hS3SLNF5Nl2ae5LfhnQmDvaL3BydTI3+y+KBVDwDYzHQWHV2M8izaaj
	 jxGxlEvUSCR8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDDCC54754
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770579357.26424.10141531405234068244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7e9b63afee94198c05f4b9e15e14f860103d854ad1eea8c5a5b41476415d34
Date: Tue, 20 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747705793
