Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53D9A8F45
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714360343; cv=none; b=gq4Rv7Q9g71HJZQ6OprLKn323X596qxvsLEhu6ltYqemGD4L64urSjWqXfs7yZp6fHMgA/c338o3yYrtzNXhMNmBw/rRDkLotH1xmF4bOQGVkvWp8qtQUV9f1fn1rJ898xocgDQ/Uh5SoJ6AadUjoNOZRClhluzME68Dzj+Hf3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714360343; c=relaxed/simple;
	bh=7BbZlTBPpMZnzvnvrZ19hv3D8Uth3vxfbHeCPN4j+Fc=;
	h=To:Subject:From:Message-Id:Date; b=EtUygag90iWX5trHfoYDAIGJiUgRi4Ncr9Fjnu36rvnk97MjVZ2Ufrktty3k2iEOadkM9fNl3VYZ5brvmZlduPB/f/1ghLEWdGjhexFxlscMo4Gouzs5tBuSFCsnXQEtD5WqtLdhzcwD90GTnlCPjMODpHaEkq8EnGkVY4bYTLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ihjVXG18; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ihjVXG18"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5787C113CC
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714360342;
	bh=7BbZlTBPpMZnzvnvrZ19hv3D8Uth3vxfbHeCPN4j+Fc=;
	h=To:Subject:From:Date:From;
	b=ihjVXG18sIP3xep8+Z9z62L2ONhE638CjUNFAuXATkreT8YGcxfZH79qzy9BnG545
	 8RJnMfVgbC9hDNJpdtEkiUw09baCgrkuym20UIwTndwDmQGbMPQ42LnBeWd09Q4ByV
	 YWrz9AE4wVFwQ3+TEP6MPyqoiNPyyOtVKl7x3DtN740g1go4NJYKd62TYZ6//LKWNd
	 nuUgR3bhzNPFAQQqLeuJX00ccG0DQimVKMf4dqpYhlrNOQ9ryqODjpf5eBKEpNTfBt
	 dA793kV7qe+gl0TnFpoFrGR0+QHhXEQf2vEUVxe8FCmJT3FH5NciMpw/6HvkNHT4yD
	 DZLoTOaU+4mkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA85C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171436034283.3600.15015969937695863622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43b5667ad6678a6e92a50533b3e07f196b169212f2ba8851538778e28a9c13c
Date: Mon, 29 Apr 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714360342
