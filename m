Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B517610D
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728771354; cv=none; b=bKWOVJOwgtVNM+Z7qCJMcsGnjgEsFyMxcR4oOudCS21KOgBeEEfhrYwRTOPigH9aHVoFEEs/QaSgAJ8kr5tIwbDYVQ+YNyGFQ42khDmkHzl0M61xXn0eBA3QsdSn0X4VHDkB2PgW84tT5ZjI8b9az0Ppe/0v1bRkowkQfj/n6E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728771354; c=relaxed/simple;
	bh=73/ZkLqa7hux6mZY5ELx9tlukByFw6FBH59DGcNLXyM=;
	h=To:Subject:From:Message-Id:Date; b=g6VYVDOcyL1GHtITnA1Y+IPOEWUUW3M9yQXL0RAXqG/lsq0ayn/XYNXgUzvJbmCZwASZ4e12rbBmEtWma+GGbZSO3kPJjO3PCSEUAMOeczA4bgwd60j/RZVRwCJZYv3TsBBrjs9g3cJH8H8XXPA2hiIRb9xd7xFmHv2/iICucUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jFOQn2SC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jFOQn2SC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B851AC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728771353;
	bh=73/ZkLqa7hux6mZY5ELx9tlukByFw6FBH59DGcNLXyM=;
	h=To:Subject:From:Date:From;
	b=jFOQn2SCL1aD3IDbV5l+yg5bV4BZKdMKUGSqHWLYfZBOk5wFlvIQyjFYZVCU71qt1
	 hJE3h2EOxBoH01+LWQ0fIHOqKPzdlBEYW3x0i1xZ4Kic3B38NNk2/FiW82iVG9VrpG
	 JhMN0Kp3IrbgUY+Z/jQfINFAxTyvyZ7wzy4KgBeHcEU07VHYHtRDZ/FPVbVw/7VoQD
	 l1QjsDwsJ3Pf1F3phCdmJBBYm71WBNUKMPvZsnpxNaeFe3ANIW2EOL79GCw/Xqlh1u
	 HaiZRnadku+AigSHJ7bcfqQAIJEU4nhOHlaB8ViGHKN3D/8WMZkdZFQKGf4sHdCg/F
	 wWj0tCTrj/asQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0788CF2587
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172877135364.17622.14147104657589511186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842eca98534218f2c5f12fadc5d440748bff10a397ca0db517da77c4e2572bcd
Date: Sat, 12 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728771353
