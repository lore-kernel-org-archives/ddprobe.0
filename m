Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4871DA23
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791774634; cv=none; b=VI9fwGhKmnBTXaEs2urVpvrEzD7w0h6V6U8G6juSEaVR5m6j40S+w2Ml7rmJwnBQt3/4R82VDouuH0b5yKEZXgiEB6krv4lowewdoh15jNFxxMZudpcKPNuRuNHI5HdblYO3rcZleVKPl1nVFIfi3TeKnyN+FJZLnhqG/BwyMJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791774634; c=relaxed/simple;
	bh=eMHyDrxBHZ5xjU8P3rhfv4LficMwiMPubEU8AnhEVrc=;
	h=To:Subject:From:Message-Id:Date; b=JVqyuGMryP6Vfri6Tgd5JWaZIA1A68h40O4QfLLswkGbp6v+jxB5sy4DzwqOiNSs7GSlYfGqjYRf6lYjIpfVwlrRfguSJ+b8zfy5Hw2tGDU+1n8aKziQCTrMiilvMmFF/oLRmVP2Xdb+YnRrpMonn+Zi3WDhwgqhYLK0Y4+cAi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbrMEbEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbrMEbEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28D1C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791774633;
	bh=eMHyDrxBHZ5xjU8P3rhfv4LficMwiMPubEU8AnhEVrc=;
	h=To:Subject:From:Date:From;
	b=SbrMEbECpASIIJ1H0WXivDwHYn9Kd1wbfuSCgguO88NYfKeFFsFdnU2mRjhFQtuWl
	 BWttgiGfs+rNGQbpWD43U1gwvNqsM7I7RaW4jJpezCXiX0GKXRVsAfIEMP0PHvc2C8
	 53wGqH+Oid44N0Ph0IIIPjdGdl1LKRfC1XKMqzi72z/HSLJagqQ/5OkQp4ZkTC58uE
	 50NVk5s2z5Q8menHasrTfT4+OTxStyJ9JgRfelJMa+GQMYBG2s7R1j2rLLoE89s6Zc
	 keV2hPm2D8uq9xIFEUfKICvk20sC3e2H1zKjAfAt211/9EMWm3cHBGg98V9j8fc94w
	 Xb6HqSX1QPCtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8BACA9ECF
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177463368.15095.16138157884236888276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fb8451bd0e3f983b1f1919dfafb7a2ccc94417fc3b8049ffff8f1f3054b45f
Date: Mon, 12 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791774633
