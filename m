Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499885661
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748199594; cv=none; b=liVoJYw4BXIIkdyPSqnh2buZZmUWaeG//tmTHmOYus859IARgYfj7CqxClxPG/eIOs28s1UnMiTit5CSqMqEz4eeW30D1BuQxFToZcVq+EJ5PUVrtUlCF0M2hUmJG1GYVWhSHCFv7SqoEa0UmNzCjIXCD83aV2R+TqHX1FogsCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748199594; c=relaxed/simple;
	bh=Ahno0sfd7DsoLpRWLTATuaMVrnYXw+OcHo4XVJiAMIE=;
	h=To:Subject:From:Message-Id:Date; b=rVzlOSJ7HuyzgjpDxFBnSmy5Dt9anCuU3eAkE7W96f855I9SeUhwIfvVmX/u9Am+gIWqvZRJBImyCAqHxhy91gwhHcFvY1f0jmqYFzzNIoZpJKu0UgNvq1rGm9QIC+owqepyF0+SgqJYddhfoLOyLkQ0kkl381zfsfvB0a5ImpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=szYcgLo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="szYcgLo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A147AC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748199593;
	bh=Ahno0sfd7DsoLpRWLTATuaMVrnYXw+OcHo4XVJiAMIE=;
	h=To:Subject:From:Date:From;
	b=szYcgLo4HodKouapP5rMhi0oXYJ99bxSgOjBLDlduNA3W6Tob38p+PgIVYW6ChvVv
	 jqcoJ8pRSF+cJCFodWwAWRovQR93BySZvC6d7KjDxjId/3G/VYd9wDJG+z+lmLw5Lv
	 4ego/GfFlemMuleVAfORbGqxQMa2Drx08mGlqfCwqbhcj3R7naCV1IJ2HJO6d+Q/xP
	 XggtY3qUw9+Kus3TBr+qMGiJ+6ND75UmM1fOChE9OVfw5RM+K6FL/pvQLWBx4dxiYy
	 +JZcJ3Ix/B1jYL8vClM43GZQVLjYdeeFpVtb0MtLqBbhufR7/JSyTmczwSXej+jAOW
	 1Gv/7G/iNkB1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CFCC54ED0
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174819959357.5947.5896085681957814094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce09a79f166b5c635eafe66c9bfacfaafaf02e9ad7cb883290917e99a198c885
Date: Sun, 25 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748199593
