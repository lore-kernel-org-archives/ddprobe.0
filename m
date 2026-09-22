Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20825522F10
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790066434; cv=none; b=PDshgABkSyMS5Uy0CoYECSzmgdkiPCvuO4s+SJnI02kuvNjO/kK0HuWwxrFvDKba0PBcLDk2S/0tDitJj9xl5t0qaoO8/bjnfPz2gENf9IM1hYS0Xg3YpP/BZpDsEi0ZM2iqoJQnIfC29KwZn7rURBfZtKZPtQoqpeKXV3seHLw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790066434; c=relaxed/simple;
	bh=bR4F+K/ZnQc9vchdYm9quacBd3GfPBPhlw6F7C2yT5I=;
	h=To:Subject:From:Message-Id:Date; b=TqmPStaysZMG3n1axDkZORRj57UVIaSvfhDqYeIjrIAD0+wdkFdDaFwAUiQeigbKgBjqdZF9zefl8ZL37/myJ9SBGzN0ObHfbxaeG/nDKpwOZyMeD6FmiunGg7mKB/plFxgjyXDDMdn0IJIAEL5CthWOTDR3GW+pzPPRANpuuls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1u5rf/x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1u5rf/x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7C2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790066433;
	bh=bR4F+K/ZnQc9vchdYm9quacBd3GfPBPhlw6F7C2yT5I=;
	h=To:Subject:From:Date:From;
	b=O1u5rf/xZZk42wiystCCTB/EOFAyXR4rfuXZWxfhoWn7d8f2erEN0O2wmM3f9fzEw
	 AhArcxHJZTrjdl2T89/svnooOjjWiSKMZYZaNw28IgJcE/n0EfbS3PxVMs1Y9ZpA7C
	 KqMtiVQAs9Pj3CCWwbsRTzBb7TE8BTEcS0/pVmmwA5Ixz9BzlA2S6AmxVlYKTheD8t
	 VazpqIAL/JFIGzldKY8k2x2CJ672g0f6cI2iiC+FmaxhrE5zH/5dg3e07pq+OIKOLE
	 s6gBM7JdCUNBMnyNUVbOHc9+AN1N3YEGpTf/snSsCELgftNR5PaUQ5ml0sLtqRR5lD
	 xLfXtoQBPIJjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA132C982FF
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179006643368.30745.13879462371867094931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8d0d87232b84aac19ef5a7c6dcaf73cdf2291372d9b8e345ead16a9f327df3
Date: Tue, 22 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790066433
