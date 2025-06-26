Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE8F78F2F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750958994; cv=none; b=LzlEU3G5j8gI7rTsVE0q8RMOAzcabdYrvTRLLCZA5HdN3LEk7YEACdH6jmD7id1jPLdUM0xOxP3xvp/zHGNpQmue7mngSFaJh65i7oqBo/4yZRsDp/NG/duQoabYfX2zuORVHDVoK62whaToj2iAaNnDEq5coAyDNWtRxkbXpUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750958994; c=relaxed/simple;
	bh=X/nxbuCCL+gE2WqZVpUBptALrbsFOLSzzGXGys8u8Kk=;
	h=To:Subject:From:Message-Id:Date; b=k/BjbtaC/tFE6HGc7y4gclL2ssJ8MvIKpNtAoyyhpiZ7LymvzxWZ3KDD7pSOtDM0vXe1mYXe6xRzAnzUSG/oJy4pLgMBFxp0P8yZRWYmeJWxqRcmSBxLuZIkPutuOqkcHZrsmxfPnVk5OpxB1dGOTOA+Aqb/ltRnq0BNccpmGVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jF5RgIsR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jF5RgIsR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F58C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750958993;
	bh=X/nxbuCCL+gE2WqZVpUBptALrbsFOLSzzGXGys8u8Kk=;
	h=To:Subject:From:Date:From;
	b=jF5RgIsRMhu5RMmnDN/CDheDPb6GyCEVExtCkPbVg8eRE314qSsEpqLE5pthqF2g0
	 4erTbZVC6fNkM4lM91tKibjgS30gTvLRBIIKgFan8mIOdkAxX352Jvbh2vH73uelKZ
	 zQiem7wvcqV7/AudE7pLjR9CDvvme3a6yasjWiRAW0xayfOUVF5vlZlEcWl7NRTDmj
	 XqmVUZENa6eTesnSs4rAJFku6gbd93GoBSRrInZ7qb2rECoChEO05FOyUojsXC8WUO
	 Awu0SuKNKq/xFvA7NezHx0Kg7Pt1fAv4jv9yDpreQQWOTedGMpb/pJUcy6NWeeXLk5
	 5xZBWCm22sf5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F66C7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175095899358.5495.10772358105938615033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf6dd7002079caf474d1c58e45cbb92f1ddd2751ae9677697e0215ae0fddff1
Date: Thu, 26 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750958993
