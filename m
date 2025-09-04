Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384E22EB87B
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756979994; cv=none; b=peJmTEEAAG2KOqmn/eFbpEUEaX9O9j4o/w64SDn442K+adqfKVICA4luaZVnE7qO49eesvmlbYDB5L4knJbDU6NNywR27z72jkNAAon2yA4Iyusz1eq3Ugh/ALgDJlpPN9NtU9hld8dhWYwDHmfo1K6/MGB+mLZIKWQqLiGGIqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756979994; c=relaxed/simple;
	bh=jo05Qg438WMAoK++C5Q19lK6eXS8pVp1S6siGV2w1s0=;
	h=To:Subject:From:Message-Id:Date; b=p1COQN/4pn+C1SQsPND+wDGKqrqvRT8x9hv8O64YGLy08fZBLZLkxfAvmrS0mWssZBWerq2JOOEn88WjjhOFNr6rsFA1HTqR3Ruv15vtg9Q94mpMFiFMpKek58i3ZgB53vzYOdJrmlTMLPtJRF0Op4H2wPD/HE+2SLTg3Thv6BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKnaq8Fg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKnaq8Fg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C66C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756979993;
	bh=jo05Qg438WMAoK++C5Q19lK6eXS8pVp1S6siGV2w1s0=;
	h=To:Subject:From:Date:From;
	b=YKnaq8Fg7yzQemelUahGiqk6+T/SfLA4qEP4xSZ8urfb8cSWhWT/ZCgupXF018EXS
	 rZKmbRnOmdPmnu1QSDSLzDNfOUaN47TYIJestDZxZStlltWY15h5G68xnr9oGoltfM
	 MDGjRmnTI4TKwTJVdq9M9nhRj/NtS0V017qK7LmBNAFFxv+5Z/Zfoq98pAWRQOvv2k
	 78ugS385yNnNsFQmWhVrxi5cOXRMSMFHlYt1iAX9rxGMkpFHdavOF3y0hJ2Gq8uzBL
	 lIVpDRwQszoEV21CvuSVutFiNh1Kjf26I6BN1YMsdbjw6EuH0S9fcyOpIe99Fk0u5n
	 4o2eKtGpAXZ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9492ECA1015
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175697999359.17209.11152625518798568328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4481167d70881c7ab8848cde034863f0ed068213f3dffe99a1d65b7d3f90ef9c
Date: Thu, 04 Sep 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756979993
