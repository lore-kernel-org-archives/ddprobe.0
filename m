Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429E915E90
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745113794; cv=none; b=KmSkjgZ8/RSaaDkXD6Y33P59w6zIrZDNss0QkpDL/kROQEck04N1CIRoyMfthUXZeq6Nyb5nrsUWxQfGgJResoh0nbGzWIxZag1gJgBXnHJEqYWcsX6uwYKsoPE+hq00kfuURLKFem8hp4bw6ST2pIOvmWCz/sUqP4qqnsGqt/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745113794; c=relaxed/simple;
	bh=mZqBRc0mRebYJnlRPINLaO9Le85OeukwVyOXzxAPPj4=;
	h=To:Subject:From:Message-Id:Date; b=FYX5ChKy1bjjMXNRugEbBg4j4fGhmGa4ubMMJHOWI2QYKOOCYdW/PE/iWaOtGx2LzhMmV8K/AWVFTCe5+9uVRg98ONFOg2I1ZbQ8QVEUZCQKoeZqBh+pwOQTGAO3A/qqH1flU3Wsffz55iJVzgUXYnuQBbJ8gzc+G8igr6OXxVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9tbHUDX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9tbHUDX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F28C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745113793;
	bh=mZqBRc0mRebYJnlRPINLaO9Le85OeukwVyOXzxAPPj4=;
	h=To:Subject:From:Date:From;
	b=X9tbHUDXBvo5k+X5zHOXnjKdm42BKz8yl3M2jIf/26nT6wXEXOmIq1C2e46uSVgRc
	 bwwdz8nfYSFPUeKkapxVHpv85+EkCM4XvWyvn6JXz/wpkmVajIay+LjeO9dIXZ6Qdb
	 zTqCluBiFUtuwo1XgMKoe+7fm3Y7OhJS4O+0BsuEbS+nXXWm+IDrDqPqzA7d2DM3Hh
	 zkICHLw1rZtY1wu3MMrBuXNkjHjvLvImQjzOiLRnHpvSijHcOcFcLhwgovA9exBOMe
	 62z5fKU7Vz5PtNDV0Zjoj8qzoi1gPI537cH5htP2FMXmQJqprbacyyvKLM2e4ILuWw
	 t8i8e/xYY1pAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A071C369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511379359.26018.2101306392912924219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5346749cb763fdf8ee225ec1530078180ad6b993ca4772601475e3b5bf9c6d
Date: Sun, 20 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745113793
