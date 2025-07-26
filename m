Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29AC8FBF6
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753501194; cv=none; b=V7tZvUAJ1zZn+RmfZALPlKZpMh/64LWHyXJawcZ1Io2BnmgUgvdtXwtHefiXqfcH0ibflFFFJLDJViOLYBhceQBQ93vssyGfINgI5TbSMnd2z1iXv1X+f0m4YGQxAFY53k+pbRGxfzHLW2P2lDcsiFOtdGnZRumTjYsvQEXwLl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753501194; c=relaxed/simple;
	bh=Ul6ZNbqR0yORd8vkL/ic8mst3F0oXvos8lKj4X9TqkQ=;
	h=To:Subject:From:Message-Id:Date; b=WM8BJ2r2mnqaW0gS62zqeuHmOLEk8NXFJFMDKWpeTnV+SvYrIHeNLBZIFiuzpNM+5ns3p08og7wGkHKYiLYZVYj/K2sD15gamyK+wiEprk8bj47MqlV4toAKYshozDVsGIALB7px3135NMC1fYDGYVSUTX1/ekdZ4uHLc7uzXs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAElYxzC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAElYxzC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10DEC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753501193;
	bh=Ul6ZNbqR0yORd8vkL/ic8mst3F0oXvos8lKj4X9TqkQ=;
	h=To:Subject:From:Date:From;
	b=lAElYxzC4WVmxZSqJDiXtE2Vec8WwvD16dfsZ75cXeWxMsJFzetwjefs4zNFYhXq7
	 soLPs7mqzkmRP3yqqeykJMdCtlVyEJUlThELBOUjKPlxMzsO/eA1ywfkUHAEvmd5Um
	 MoDE3g0zaVwb2WrhwAnTnvOUBQTyCH8AE5rZdIX0IqiUV48jL28dm1gIiwFPvicK24
	 Frs6bLLxJCA0bjbLH87pbLGYZED2eqBIYz+LL5pD4f1aQjAflBzAWGjIZcNXXxLcfA
	 /gsVV/fE1RM1sPX8CD54/dO131JG8PXTOvepYGiksbt077Y7ETAcTmKrVfTTJOBK9h
	 9Jz8KpIU1h60w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9EDC87FCE
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350119357.18092.16914079145346212277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3500ea33f2cc82acfd40004fd8337b35d2649c7275ed142a455fe1a9e06eddfe
Date: Sat, 26 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753501193
