Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360274A0C
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732309554; cv=none; b=dEOqcu2YDG6ZTUr3dJ0/XSAA0IS5JueTApYYIUawNeEpOx5b/cxcpQ10daI2SzPweLTrk4hzUbo+C92Uba0+sWzt/kf9ECdFQ9AdsA/E9YAzQfZTPm3XGZ2l8ay9PyWvNVLs9Iz6y1XSaXmPL0inbr8/+k5XX0lIokeCtFk04RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732309554; c=relaxed/simple;
	bh=R55G0CgiKD61Xa5J/R67mbm1HyQ2ZcDVZIEEl8ucumk=;
	h=To:Subject:From:Message-Id:Date; b=dVEIpsISXBw6Ieq+rQPjad23SWsFFXRhkGvhVfMsVxSFIyLJjop9cMyg4LTLv1tiiO0ijR4WonONRHdLPdhHOB2jt6NkxAmahge4CH6H76+G68EsWGvRPzHmMQo/dfPimX/KDeTex64AXVjrQ41Cs8Hvib7lniHNFjlNe/UalkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGgpqXep; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGgpqXep"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF391C4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732309553;
	bh=R55G0CgiKD61Xa5J/R67mbm1HyQ2ZcDVZIEEl8ucumk=;
	h=To:Subject:From:Date:From;
	b=KGgpqXep+fcDON+hi3PAgmLkPfIjGbDBSMkY3cC4JWQKj5Hcmbv3fVVTIoBmgbPd0
	 WBYQPm4sm35Q45MFrTig8CjsCml5Cnp0CtYklSl8hCwn7sHpX5Bh3gN/BVeuyHGe/A
	 XM/2WGBCu8YfvVSNCKKhTyZHrE3WD61bnIcIoJLkuxV1XsboxkAiC0rzxsw5tkkZ1D
	 3Vpo4R2RFz4HBxgrAatRmkhBKogol9rhxl9nVAQcxYsr2r0DRJGteXLBjl1RBF6wVx
	 4tVwGCbyBZe7aY8QzE91CUzDpwEJl7OK9z8AprzUiiuskiwXSfqjmVYsQhKxTrkPQP
	 5jvKHF0dTP8xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D3D3E69193
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173230955359.22149.8402068328669204680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31f9ca18b98d7d521f96df0a1e297c2774d200a34d318be9d6419552c444fe3
Date: Fri, 22 Nov 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732309553
