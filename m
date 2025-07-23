Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBBE12E630
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753305593; cv=none; b=dIsElcPNtmO8PQSqCkQGVwjtgeb3ysKtrK/Sb2E6g0C5eVGAMGkO+s7n51/tIZifkzhYXbV4TzoF4UASQ/6FsTxVOpr3Ykhs2ThGvfOGkbB9tVDwv/OAUqJhlkbtg0pvmBzDy70hEaeQI+OSloLdgRcfQbt1fI2qN5qmtpGICII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753305593; c=relaxed/simple;
	bh=jT4PGx5I6+MsuOshd3osB9bpGC/C9wGQFKawNp5OhAY=;
	h=To:Subject:From:Message-Id:Date; b=YebBt8NQzqTHPH4SDDoSq0DktdRp4VlmY/mRHq2THA7CtcaiR4vsVSTWSiQB+XlZPZNDvGlHBgYTQpWAT9uFhnLf1MhakgKl4A6NCldbOcCIpIm36ZcciXk3wdCugYo+vMmQdTY/DZI6nj1+5VDKqGwOEKOHpY9+6rInk9enxVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iiA2G2Hs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iiA2G2Hs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1249C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753305593;
	bh=jT4PGx5I6+MsuOshd3osB9bpGC/C9wGQFKawNp5OhAY=;
	h=To:Subject:From:Date:From;
	b=iiA2G2HswP0PVEjg4dbcEW08ESHUPGQelxUROh45Kf0UdWbH+qgb9sKfubQS7U+en
	 OnW+PUro9eH4ClKWurXqcL0F3sAiD1sCWhaOuitVL9mhpSXwVtgPCaen1RT8BvgpUp
	 LJpmrA4yGCTW6r/vMzJtCbbPA/M/aP5O8ZLqGu9bl9j9Fjg5mtuS0A9I92Mv6FEeKw
	 0R5gjRwG9xshUaXQnyzvfvVubcfOLSsmTIZHcjk1BDWK+SyH1cXO3Bh76CaaBYZgAB
	 K/gVciBW/kzERMR62vlt53Mjy4nOa6Kg2nqBRXMaO8vlGDvmxY8elQ+KP9nTKBB5t9
	 2Zat4QwGhGARg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA8BC83F1A
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175330559357.6710.16337421989272860745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c239f6164e0a19543306dbf32f17289186e0491f62aa2801427c2b0cc55e7d
Date: Wed, 23 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753305593
