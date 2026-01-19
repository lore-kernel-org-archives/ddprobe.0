Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB86B26C3A2
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768854833; cv=none; b=hjCIfgyxEsXvps7ViBK4ZypYQTVbEFVbhYADdSt/LEoIyjRMZ0mHyv6UlF1FBvwfglZYQTabj9Of8eTIljo0IiZfTDm0DbDeXfzurvD6nF7h9ANTe9dAAUBOnNLXTD3cAzeQqHKYIDh5FrrR1ZcSGdf/yJYyVeh9Isjnb7fyOJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768854833; c=relaxed/simple;
	bh=5deDc32bfNuK2xbhjTtK5xVFOOVTqPOjPNokISPoLlM=;
	h=To:Subject:From:Message-Id:Date; b=NmVY39jMuxS1v/AZJMA77H0Nz2ZB5Jt8NrJ64YyN3+/d2O8DroiyCvyzQxq7gIHRQ3FZ47skaSlaYRAR2hbGqW1fskTjeuuLMQXRwlivqga/R1dG/ndND5ZhQ1Awzk+L/1eYWGmnRIgl3caynzdCgEAoiP7yKSCeVGnLjLqK47I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G9YUB3m0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G9YUB3m0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16F8C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768854833;
	bh=5deDc32bfNuK2xbhjTtK5xVFOOVTqPOjPNokISPoLlM=;
	h=To:Subject:From:Date:From;
	b=G9YUB3m0rrzDujqrqjQbV7mwT2Ht4YMPQ/GrpcrF3iY355aJS7i4mliXhp83+LipL
	 RLxfczNnZkIg4nVlIJVdPa1Xoc2Q+ePTG5Px4X1+cweeH1GeOeOPXVleDOGSm20mYP
	 r+0CLrROr43ukDWIgaw+G/jRVtSPIrHVFuMGoTKccB9Q3o+9aZI6NvKiTcLp33XCm2
	 UAdPpMzeOrX57NuJ84J8bKU10hKwiArifBMpr/zDMzu0dA/PWTCC380h20wIclSWHb
	 EIEB+m+1AwE8u2z/1Bro26T2WYLntWLq7XBzA2Bi6BxcKwNcH2QxHCc/Np7HLR49YA
	 dHAxHpYbTwVOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD47D2ECE0
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885483358.9928.15976770256360314029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f233ec9a67c8949be925887856390402bf9173625907a1d8481bb410639eb923
Date: Mon, 19 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768854833
