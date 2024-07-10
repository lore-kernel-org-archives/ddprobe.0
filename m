Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561C42B9DD
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720599383; cv=none; b=s7bqFnzIP3aNON7r0f6ZYghyLBm0Gsax1B89lh+f/GE4RJ9FDbwIrNICgp2jht7htmDGlVRM2XR2MftIZonR9zJNE8hqqMwd6U6Ag2Ts9owSa01MSuRrFj1gmCCwQ8nR87XAzyjCJH8Aia0B/65IP1Gs/cjBAuIeV9JvO8XZrF8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720599383; c=relaxed/simple;
	bh=ovfxpr9wOTHgN4sSitLUtuh6qSektKHz+au34TXimVs=;
	h=To:Subject:From:Message-Id:Date; b=f3fYZFsD/Ug7ha1kv+7+ye6D9FRdvAmURai3azt8v4iCD2BuBaXj6L4WORZQTCTqnLEU5tJVFx6ZN2iG4K5hQSoJbjbRUhEklVCnnGlrDDq+JIHkm3s3Lnt3PIZfIPUMG+wze1bJOMdL3KF59OjFEAJLFbRK6fuv0ByNk41+s5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tpHLigU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tpHLigU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBE9CC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720599382;
	bh=ovfxpr9wOTHgN4sSitLUtuh6qSektKHz+au34TXimVs=;
	h=To:Subject:From:Date:From;
	b=tpHLigU11ryPrVJ9GKMJwoAQHACxPHBOojLyK3RNjEeO+jt6E0vBQLlodKHyUV2Zk
	 4Jw8sw6N90WAcJg4qC3AWfbjNmeD00AOOPLqIK48x3ME2qFXDmQT6Poeb6tZU/DCgS
	 si4cI28ApYkFSSbAyOwGmzBxFAGscveArftsSNVSpRddVv+h3vnkowg+3dzkebLpiH
	 elka7SQQHHa5vjFCHyHK89oChM+NlxbkDOIu3jy54z8DLyotgsVHoMy4Fa2sIxrcc5
	 xr+guna+ihOFE2qTrUWqDRsJuNk3NSYZyeuFn7HjkQEVk0+kqEsjx8S8Ei2+OLfEnn
	 XIzN0dqKHlBvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C92F2C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059938278.26742.15777314995025413722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2678338296c2ef821c7354c5a7f13f5aa4761417eeee53e18681836ee3084e04
Date: Wed, 10 Jul 2024 08:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720599382
