Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E485B647
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721360154; cv=none; b=djtViQa/Qc7yG2DOoryk8a1W4fXKETWKf2H3xRIvFboYlUdyltc2eqUuBUojQPafYmLokzpeNF4pSSpiqdXn4TpoSPpON15EDYL09QmOF59qNrQMsUSlKbtlxwP7YZJL+DEZb0sBiZrCXifJGe7mj5Uj97oxkZENEDSgM9MZ98s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721360154; c=relaxed/simple;
	bh=DddCnxn1vwwfHUcB7b8qdo+hVCMyRa/86K0Y/6zLYIw=;
	h=To:Subject:From:Message-Id:Date; b=qU7sfKmD/QvQSWGvprydVG/HJOglqiZgH2/MookiftZ6Xg31hVZRq4CGkwlwqJm59gThKjhVmLuclINC/C5gVQjcJm+NiHcyYYOCpw1wssjt/1iG8TTyrvEY80IxUnHPaEkwNY2myCGuaCJujxIpPzOiEcsoUNIRK7VtEfUuLNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ki5NmNM/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ki5NmNM/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FEEC32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721360153;
	bh=DddCnxn1vwwfHUcB7b8qdo+hVCMyRa/86K0Y/6zLYIw=;
	h=To:Subject:From:Date:From;
	b=ki5NmNM/HEHN90rlR03SHPg4ng1rI/XJBxiBBn9MnThrUdi5egGcNg2OvHNREsY1m
	 pO3U2LaI3TnAMBRlRSiskF7HZAVZqvu7RWg1CAjXiNTnD2QeeA44xqIbR0pHpUDw1Q
	 Q+0oZniW0eKDRk3xPtmk4fn4ATYi/EdjDztSRk+cx3Hax6car78KaoxT51d1jWEsIK
	 o99KjwJ8QMNI5zEoBHUQQkLl207tT5RtpwpJKpbzzY4V1CG7wxvcqdBqO5JIcm/l3a
	 +eIbBfk88BVqCO0AfwAuu/4drXk8052sOQotvs1Glf7PSLIREnAY11QFQLllfLsLb3
	 qv9Z6NGFGpA0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917CFC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172136015358.31326.2930200548904221574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 185f3055c63f75e435f9af00b5f161efdbb490514f4c2406fd4cb0b8e6c31ed1
Date: Fri, 19 Jul 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721360153
