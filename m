Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253321F17E8
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763328714; cv=none; b=HzSIDc+m6KSsp7Irxsx7+y6h5Wu0renHjh8m705okh8LQS/r7TluengCSzEJWzSC3xUz7z0S7G9Ph8nY6+ctIpVstNOg9yYoASXCNWtySuvJu+HSIFFOExOItDFhTYINeHuaBMmAynaAkWi0HyFJPCnSsNo2eja+8pKMOxPkj3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763328714; c=relaxed/simple;
	bh=2MoxqKJCm8pK1Ho4DKrwAMa3OYm73JZBcxiQMFvGK/w=;
	h=To:Subject:From:Message-Id:Date; b=bWPgkYhABKnEE8hyJuizBGsLTWCiqtaAxGy5o7mcrTob2sbUvRZ9d/1JfjWTEukX3CfRtMFPhjAdRwOQtoZPlV7Iolq63PttlX+9WJRPWEY2jSAib3JhB7dfvd1+cYvw4L/hiJQnzz7ss274QFUxz4os8i5nd6a8XOQ1F20Fmc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEQq3Oo1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEQq3Oo1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32C7C116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763328713;
	bh=2MoxqKJCm8pK1Ho4DKrwAMa3OYm73JZBcxiQMFvGK/w=;
	h=To:Subject:From:Date:From;
	b=oEQq3Oo1e4rSB6MKsu4ntELcceEE6XpyiycNerd6Wgv5kXh/ExDVfNdrX2WQhuhl4
	 3s77uWT43vSmmvAmh6ubUFJtghcHK46tCvCx0sB5tg4y6hKnzQUrelGesYcAfLPk1V
	 w/hU1MxK394lUMJb30QQVsFapvLngqO+NQ2/8ijLYCpC55N2kset/nwEi+Yatmimu7
	 TjSYrAmGGCvBYNN5HlqkkTSOe/5gyUmLa5fodhqT2fwFGFo6IMCsD+YJzfWCP1MYHA
	 SX4iqRxpipqSGm1DV2/d6euK6OB71X35L+r1aACK8m+HN3a/FKW7WGPF8dijakTCSh
	 Of87Zg3/M0omg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C3ECEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 21:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176332871358.31046.4411120698620519737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2855872d0715b953fbebe946309565f955633866df96c1243a1b81b4c03f73
Date: Sun, 16 Nov 2025 21:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763328713
