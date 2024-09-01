Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E44F143C6C
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725192354; cv=none; b=eMYoSd4pvahdSbGGNijGPlqFsxKm7TVhPPMpVvSdVTX+Ey+ratQBqgTkVtMfTQUwaRRjjmi5L+HaCx8X79kEu8Znbt/2jQFK76GDfLEWKyFMo9f3zO1W9tN99ce7Wf+zuOHDkTYDKfJD9SgJ+Ktfhavf141zQ/PuCwIjH9Fvqkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725192354; c=relaxed/simple;
	bh=lZbMzbizuEEybbaif3bdhgdNNua3oV87t9CUJPSu7Pg=;
	h=To:Subject:From:Message-Id:Date; b=g6wlPtjL1loOOCsT/7hNfC/GLU44pxsGV+2wqhrS22g88jwI7h9IRJqmULp58/LB5p2OVW+hgpluE+TaqluYkpls8kFMC6o5CkHChwCXJVbRK/A8hbY/Tph8AOZdbvD/xqsq2Fu2EWjK8Fg/Vku8IzsWVWdMBZy3P1IvKskdYnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eK5fllIQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eK5fllIQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4580C4CEC3
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725192353;
	bh=lZbMzbizuEEybbaif3bdhgdNNua3oV87t9CUJPSu7Pg=;
	h=To:Subject:From:Date:From;
	b=eK5fllIQoqTry03EGG2Q+pams5tc6Ju1uhnEr+MALb7aCrBK2NE9KYNweo2StIZ3r
	 75OSVJh+JTPkLRTauHisi2nXsV1ltRzbCwJacBOnMuwmc0yoluFFPmiutvSOZIYpR8
	 pRUT7NEbHqndGf2eeTyAp13OPKvMptiZLCywvN4n3Mgwyq6qUaV/ed887PQMBev9gy
	 t2gc9IubZiWtW+ATy7HXw49ncF2NJpQ08d4sSEQB/V33Oo4ZLBfszrsmKAUN8R88hj
	 QvU5ingCGomtiGq5rW9tzEqGq7bR1V2b/VoXBVGVaanbp/HheVYaVuJDrXZzu98aho
	 tePCZzBGfCMpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B1C0C54FC6
	for <ddprobe@lists.linux.dev>; Sun,  1 Sep 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172519235360.8757.12248314002815294284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86bcfe1c8ce2665e883f77c894c2f65061db06d1dfb8fe8b3375b27307f552fc
Date: Sun, 01 Sep 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725192353
