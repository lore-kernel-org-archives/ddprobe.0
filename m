Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D2442A99
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759033194; cv=none; b=GQM0YS+cgj0RbDWgB4m8DGGN7QeQJIyq4m007dh+K+7gE44nWkiVXmuUCQFc8siTGL31+aSq7pRU0GpMDUJ1cTeykySQ/bwyHqpyA19GUs0U2am1cAOSEiPRbPvxqZPhgRfOxEqKKVw8+VKFaz1O+fV72R5Dy8dHL/owYsWRnpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759033194; c=relaxed/simple;
	bh=DQzdaETBxd5KjaCZirnNbcDt40ymqeoCRnKU54EAleM=;
	h=To:Subject:From:Message-Id:Date; b=dNUxBfzAHEtXUHD45P+unKJmhgUKGOJVTBclslDn6D/2v4UUJoing+opR9CZLhlXwFHCsppfa8yVcuGXk2eJn8WF2cNyLarQvU+4cShz1GUmhcWo4+rOcx0ym7EgVuqZpHEeeWYI7P7TOalWFING/phcesXfbhQb9aG4Utqh/I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DAKumDvO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DAKumDvO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43C3C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759033193;
	bh=DQzdaETBxd5KjaCZirnNbcDt40ymqeoCRnKU54EAleM=;
	h=To:Subject:From:Date:From;
	b=DAKumDvOqPDaUeYM/kHmj237LtbUx3lF70LcHbT/IA1quSzsjeznMNwwbXrf0iXny
	 mj22ER+gI/ZZYLZMj+9/31PCIuMrVKBGVvshbqTEA1NM897AS4l+GqJrTCOoQoh7/g
	 Tm7OtkZofpw5Tgx61pTQwGa6UKseNfRCnn9JC2eBKUZHA9/paLTOP6Mmc2bw6FHCqS
	 Dx850VFopoO9Q/ij4dOwyuC0dvrPhkBpG5Jn2/mcZrXyW1c0LkmlDIDizbf6Mm3f9C
	 uhkl5/hWHzx92ie96Php6adbOnPoefrLLcTW3zhWawjDSZvKZbaCa5WT6OyW12UwIh
	 BAmd7kSwi+MsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A308CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175903319358.30427.14618988478596902718.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fa67dae285f3591b96f3d215cd48653ce13981dbee063aec09c68e5ddda4a34
Date: Sun, 28 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759033193
