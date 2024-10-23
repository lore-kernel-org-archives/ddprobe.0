Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 074832AD20
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 20:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729714554; cv=none; b=rmsopgflXNRsb6nwX26urPMJzdqUxQQuVLXkd4hdsNRlXbePAXFmKjnjpkImqgb3OxZq9ZY2DZ3T1FmbYMPt8WRlrXw2g3yYkqYZUlAszrdSxCfuWcCLHMftsLYXSHUzzYkyDfs64eYDUjPE10Q34a4hRRTrELMW9XI6s401auw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729714554; c=relaxed/simple;
	bh=pa1iqtkYpw7HjSeCX3UQn45U3U39wyTUFe8gJN+L/Zw=;
	h=To:Subject:From:Message-Id:Date; b=QZ9Wy+bOyIKqzOB5+BppRbq1xy2v89SQ/1Pneh6OcBUIuI2YZcAXFMDdiP7HsvTthD+C9BGVMD2y6Ac9MexnxPK8ylv0YVfhLVRHDfLy7YiNPuVq4d2SkcjYWnZrKBSEgze61noj/ksyzcDkqVPiaIawIHtHGOBarBInQuqqkIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GTCVyC+w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GTCVyC+w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A570FC4CEC6
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 20:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729714553;
	bh=pa1iqtkYpw7HjSeCX3UQn45U3U39wyTUFe8gJN+L/Zw=;
	h=To:Subject:From:Date:From;
	b=GTCVyC+weH0W+yYVgHeTiCjBzvLHkfWDTF/j7SKmWux/aJ859N7ZA7Qw995N3dL0N
	 IvjU8+LiRW19/JurCEkeeJjVZdBdbxx+nB6ugpONtAeZ3ZOfUVCYNj2ja0PQDYgA8s
	 2sHJ33HxfESf++jGJ2en0GTK6G2ZieTEBGNVBVAvFCG6d8ldWBVMmPq7xQA/H56O9s
	 kUF2F9j6EGZ7t7eO/9IzvrF8uQ/tx8ZXH+F6R087pqTK3y4MHi2J2cJz7ehm5WwUJ1
	 bimiVFhy3J+DLndJ4Pc5Wd/R+Q78LHvXzdePp1/a+sOViGo+vnysZ1cYOG7J5w5J0q
	 mRd5yxAU8AwTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FE9CFA464
	for <ddprobe@lists.linux.dev>; Wed, 23 Oct 2024 20:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172971455358.26244.6635045524136364938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e59b9e2529c2781bff5ea4f664bfb2ce7953ada6ed5f1c0f43a83145d7cf982
Date: Wed, 23 Oct 2024 20:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729714553
