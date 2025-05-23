Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351A629116E
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748011794; cv=none; b=iE60DD0gGnSQLCmbTEeDVkz8JXRsO8XxWqJUHhttEVCP9LDu5Y35n4g95m8veXwHprTatTwXMNTV99Ttjpk7cuvHLURp8vO/7oLCL0IUujU8qCcHknbm2QdnsoGUSmzYEK0Kw7uhMvW3vumGT7XxazA5ctMLB3dmPe64Yk7KlEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748011794; c=relaxed/simple;
	bh=z+nV0gv8nlkKODAuPFZNNru/bVrC8xoB0qP/xAbKEFc=;
	h=To:Subject:From:Message-Id:Date; b=m2aaOC4dKlGQMM0zzr0vUbh3rRgPbUfTJAAV6+vBPp6UMfmJGnKI04doM2PFbsGiSr993bx6zxC3dshbmfx8lial5ejdHpaDceh3k2GtiNwzX5TlTAn36VciQwxjWyuseleVVJmbCH7WHktY+pAAdJxv8jeM9fDqbORKzPQaKOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV+lMb53; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV+lMb53"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A555BC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748011793;
	bh=z+nV0gv8nlkKODAuPFZNNru/bVrC8xoB0qP/xAbKEFc=;
	h=To:Subject:From:Date:From;
	b=MV+lMb53lj2MnA69uHv6cy8AZGJLD2HBChoZ+PlcXfMrhhDzIdV5SS3B69Jt8WlwY
	 C+wdUuwjaXEWs2yKNxqkExf+msIs3m4JA2xmh7jH9AUHJ5tK2YVI0GtY380Ux/iqFm
	 eWakMEfqlQB+scOjLh4O4FOQr4SBxrZ8xA2x+Mw5ThpNZvqfSrHu1WRR/spaLiOX+4
	 v3okAI4Us/p16t+w8K8s2Rm+tyI5btXc5djNdpbPhAUsC/ZrzSXu6cqDmHvY4SoO/i
	 2lJRl27K8RTMvOM5N2o4/bQw08G3ORaUfcd4I3tIUfhUPypb28pxy6v6G9rJ2nGj99
	 UNGSBm23yDCRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED46C54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801179357.30663.18079115895872572720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d43d1a78900c946ccbbf00d9bbeffae3b02781591260124c1d70324941e442a8
Date: Fri, 23 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748011793
