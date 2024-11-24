Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 387DE645
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732409154; cv=none; b=GpEZB8WYMoP1+9AYwOFfjWWBb8uigk+A+aNDPL3JyoRdUrqevVK3kL2eImlSVy/noiiT3I+kbP5AnB5qkU1qBfVcV4mXUIxDX5kkE+/IMxUoFz05+9FQEe80SW8/KvjVdaQvoUh6Hqkt1Dz1jeZZY7wvWCsF6ClIdMuwE4sTahw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732409154; c=relaxed/simple;
	bh=oaNi6FooDpmXqDe6Lg4Tv1TfdzjhP/GEjAYocvBt04w=;
	h=To:Subject:From:Message-Id:Date; b=H2jRKgp+QubvzAA8Ud0zvPTrGgh7Jp0MXCDWVppv4vG2UXrnoMd5NLZR29MUtPZm3ff8CO3Aa5guz/m2qO60N1teBoCi7Niud8d2cm7MKCUQqyr49PTOx7jmtjJ6Dlo0D+ZD7he8MLZ8pxlS71jR4OX14dyCdk/159QqtZBBPRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lsFQmADs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lsFQmADs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA91DC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732409153;
	bh=oaNi6FooDpmXqDe6Lg4Tv1TfdzjhP/GEjAYocvBt04w=;
	h=To:Subject:From:Date:From;
	b=lsFQmADsjMHk0RRLaWMy6p+NPdXxIw2o+CVYp0M53d9OFRcr8roqOjJUJSYQovEgy
	 XB/2MphALxHZx/QGoZIQkOSuC50Nb3odj042X6M2u0USlh4hp6yt2AF20bIdJEmjib
	 JxyQcXHN3Inl1F1juzmGq+OXd77u9lPK5IO0LE/bpg64sQh27VVAGp/I+xZ9h1voxS
	 Ys42nQvbVa35apm6YrRREZKlb9Chbgl+qUmX9qyp60p1JWDNmK8bCwPBrnzcjBj0LZ
	 By8abp3AFFwl6N53fTWdfO2l/+3GebJxnK5A97NX1Ah7ktfsJ7Kq4rJnoX9hQ9KXJE
	 +0Ldajok8+HfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E2CE6688F
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173240915361.3782.10755501797365544261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc62c034981ebc1485c0674adbf525922384cd521f42722b1a62f1e350b8b7d
Date: Sun, 24 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732409153
