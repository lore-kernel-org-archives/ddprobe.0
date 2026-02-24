Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122402222A9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771938294; cv=none; b=WoJlEokas76pXj1UbgpNaAXfTToWQeDPSj0bV6QHA7sfDWnCTVGQxU8H2a23Z81n9i3tVT93CeM+/tv8WlUWCWLbZ8Cf8T+/e1ZbiB1AHGJB3jn+reR7Yr19Fvhvzq6sqaB8VY2JxeVfIJHYBVepHly9ekPO6qjh6hhpuq3G4kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771938294; c=relaxed/simple;
	bh=bcJsKjRvlZqdkeHiFFOIi2VSrvzEKWzL00wISoZ6d5w=;
	h=To:Subject:From:Message-Id:Date; b=qxcazU4HpvAQ2s5cjVHzCpJ6OX1d9eQ10X+2KKgHLE9PmjIdjK+4iOA1VfaEludp+jlToIvpLv+mt4hibl3b9nw51Xmm4iLqyPVD9grPa0ve7jZl3ALbVgJ1lm/yYBtrj415/Qes7uCpYcaXPapLQq3F+pYTUfNwbW7wTP+7RL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UH/gY9qD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UH/gY9qD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69F0C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771938293;
	bh=bcJsKjRvlZqdkeHiFFOIi2VSrvzEKWzL00wISoZ6d5w=;
	h=To:Subject:From:Date:From;
	b=UH/gY9qDEK9vOKS+0GRAOdxe6A3TRkMJ3uAz/jC1Qwo8uw77JIyzjdE6cnli34StT
	 W+fItCTqEk1JSQMNmxn3Vb+bIn+VIoMc8bwB87Ur1reAIfC35KPGTkR3+Tq4F25wBp
	 /fAbOrSpFpIe4upeFP10Qn8Rm4RhrmVlFB6cl02cUQOCNHYUxc4c91q9y4Slv63dLq
	 C/Xco4+5hbXEWYJ6aJVsT4/jFGAszq9wOssqgkUu69XOVZuWuhQVcDCW3lBPW1OME8
	 HkHYWZdT/f0HzotyIRvG7jIgQIv4T9hu7Y9ZVdXwID54TdKD/cTTvDqZMovQe044pG
	 Ueomoz1zlHj1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944E9E9B260
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193829359.11363.18203110048221520380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cb08b3ce006ce65d3fb820c1b01c7d2b0cf75376f193b09da1fafcb8b50d51a
Date: Tue, 24 Feb 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771938293
