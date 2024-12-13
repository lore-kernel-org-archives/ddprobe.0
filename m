Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6361DF256
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734092754; cv=none; b=ri3EpuDxWAchRzfNBlhDJ/wahecBxu/nx7l1YiUmIqGwSDrHqJfOHv2Tb5cPZkjZVurxCzUGggImBE0LyFmO8UlT2dyVKbrbAJyHaK1FBgQ/AHfu09xRucmXYtqjLjUmWXJgEKnwlFydfqW2pQyzp/igGcIzT6XBxL1Y1xByJr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734092754; c=relaxed/simple;
	bh=EqCVtJ5SpElGhooho9bUZCLlq9rryO3j2idpTDhfif0=;
	h=To:Subject:From:Message-Id:Date; b=b7+1T3OFLiviWGUNJ7ErZjvroBrm7Vp5TOqyVLTyZQPSu6sDnbCCIOgKeqNdSUU3XRFpV0BBl04f/2MGls1vMBs+NqAku2UlsCUy/EnlWzUbMUFbiqjkpeo4u6EQxTXuUPDxSad07Qx0Il7BytRphWvFMhG+EhtJgZICxQirR1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmcfTwbP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmcfTwbP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61E4C4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734092753;
	bh=EqCVtJ5SpElGhooho9bUZCLlq9rryO3j2idpTDhfif0=;
	h=To:Subject:From:Date:From;
	b=EmcfTwbPQJWePCJoagI9p76hhPZy3pEEiMcOgqEe+Yvs37qxl0sXej68LRr3I9Mlp
	 5PgvRaw9qbi3ulq3ckM8E0FxVDv9JD3QvdgQHdFESPlxrfSJJxsE6hyWwA1yZ0/0Pl
	 vQONQ28QHGJ9JpbMI0mSzn9imw6UBTOyrY8X9TZqgwC74NTzl+glf4s2KrRzI7BSEH
	 jsS/tJM3RQVeW2tZ2DebDREaKNpcKIdvgJ1BsUu8Wj2iwqbnbgiTFc3e1JhmTpnD+d
	 ZDNdI6gAPLaXtXYifc7CT267HBp38nGrw6t8f5p2Y0LrPutdChv+xUgHk2FDT2/0KW
	 9A7rF/trk2OgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A2CE7717F
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173409275361.26080.7313731922712455675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f92945df1e1e98987a94723a2066d692c3dc3ff3d4c8a4034ab8cef1af12e40
Date: Fri, 13 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734092753
