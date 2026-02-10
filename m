Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23DE921770B
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770699834; cv=none; b=Fx+KZ7FFtQlM/FpKVlGhzELMe6t4NtWSH/8vUFLNgrZ7pFiugcQ1EX/+7FHSbGkNHUqg1zmmNOjcgdeeCV7d6FTaQgqkcHjUDgmF+j1Mc93Xlkv33pPVPK669R7qpct59tbutL2Ghfl/eGjsEVLmF0eVU4KsJQ3/JiwCdNIN/i0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770699834; c=relaxed/simple;
	bh=DxycDhxW1z/OWvIDOfowIqPSFArTBXWZakKy8fydpiU=;
	h=To:Subject:From:Message-Id:Date; b=s/euml0psRjG+jYeXdGzd98mHfPGQcSUtpA84b4rbBEndivRhyVFTXUzKX/6SMyzJwzxwt5yPQiW+1Xm2wCLthwztQejRaL7GbKvvjAew0YTEJbg8mW83hVVSa8DgPk9jAB5l0Q9pNMGMcZJzGskU9VQ4vh9KEG7AaaP5zYqM3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JkuO5nTn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JkuO5nTn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B00C3C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770699833;
	bh=DxycDhxW1z/OWvIDOfowIqPSFArTBXWZakKy8fydpiU=;
	h=To:Subject:From:Date:From;
	b=JkuO5nTnmtLU08OobmF5ZtYP3ind8vS+QDj4T4dm+QiqadPHveXot5Db2KOsmIWyy
	 qT2Xn4qps/kCy7Ps+e+Rs7YjKWef1/nBZ3663223CVBQWCoGaBZQp0sRqA0TPkudGY
	 6nJaES0zDFYtbhC8f4HugTn3/p12tBB2xY5wGV0gnR2zVgtxwZC5JPopVsVwu8qpzY
	 GX6xiXv1QOZX4TR+z8TaekB4AFPb3366R3iBlVzLRvgk9M9zvv1rzDchoWJNWYGkV2
	 +8Zm7SydcLPlQwX3yw+Ln6BQnW1gdjOmT1OCojHhClSgue5k8Xw2WieIe4iu/3neyI
	 GLf6YE7T/0N1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FE68EA3F01
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069983361.7138.11215404668771777960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965e900cda1a0143b154edc122760861c11e18ee754e118f5a90cb4a0f904ce5
Date: Tue, 10 Feb 2026 05:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770699833
