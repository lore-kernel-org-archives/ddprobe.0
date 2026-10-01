Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518F65187F3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790883634; cv=none; b=pmuAgR5/QYphL+o6TXpwZVJfnsBhVpBk1Yh5eDy0Celfas317CUOEJ3XVHvzL6mxCxQt78FM2hkryDispBvM1fUXNaF7P5WELwaAfed+b7munjpujSqTL58yHbUrqL3ITnmLkT3pblEAU/jCWC4a128HYMyL6Uwn8wCtuNaklSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790883634; c=relaxed/simple;
	bh=cpARov3ZOUEJpxVRXyWgv+I/Gxu8M/HT2pG9xLZHn48=;
	h=To:Subject:From:Message-Id:Date; b=ISpH4/H4AxwvATo1lXsuD4ujFkadj9u+axGR4xjftnQtPC8AI/oMa8CvyCZ5Oxjsyq5BgKQHBWpr0K89lCJoXff+jw/CPm+Hfv1VxABN/J9AwoUA64jG2mcI09o/MwCHUTLbyGvt3gKjcIOdmlGUtfc6UgwDH9p0jJo7pVKGPPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M0L1UGJC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M0L1UGJC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4129C2BCF4
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790883633;
	bh=cpARov3ZOUEJpxVRXyWgv+I/Gxu8M/HT2pG9xLZHn48=;
	h=To:Subject:From:Date:From;
	b=M0L1UGJCn8MrMqlruO1SQ4qddK7LM2qFKxrF5VBRiBBvASx4Z4JvgBedbVzCCJD/G
	 gQwi4+/P+g9l9PnBAeYn8ZuHlvcb6GPZOF3hHN8LTWIVk8/43RADWO9ISK3Mg+Fkx5
	 4Az6y9MeJYX6BhqDIgPiCPHCeGLi2Ohq7mZxkrGCc2t24o5b+EoOCdMps83lveXh5j
	 rs9h/UmIlsd7ihBTelUBq+J6gh+rNjmmEsXJmgUvyZcp2+cy9RsuOBPqE+wbSzb5Tv
	 Jj9fn377CJIk+2iCEkM5K2Kf56HjcCpju2R/fKQKz7V3Lcc4y1AvtK/G2pNopw6kvy
	 x+Aqpogzz/bsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4F5CA5FCE
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179088363370.9505.10371685195078914402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4518cf8ec1045778ac8dc1b2ee9e6a89d99e97f2066cffbaeee4c430f892c813
Date: Thu, 01 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790883633
