Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C90F3CB2F0
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783622314; cv=none; b=TfJkt6jwlAJbiEeXypBITUDNLdMmiy0ISGhDmECJCUJLTTWh1H/scdDvAqiS7gqbqueReADDplrPxtgOTEwUbMXIjO1FzCr0NpRtxaUS4Hhg9IdTAdO5N3HU6Vgz3yBSB58BD1e1rGHX6T3zRr9Qd6pgGf1tSBEPEDhKFj/Dj9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783622314; c=relaxed/simple;
	bh=9nu7MFm5EijjYOnVRz5WsxKtlVZCGZdj7u32MNR/F0A=;
	h=To:Subject:From:Message-Id:Date; b=FjzVkBj0KNnjs3fKF6YE5irIR5c82w/s+oVTLPpI7TLXYslo54vgScgw1Oye7wL4x+CY/4L//RUFxodYKgRudzpiHZWQNDCJtPGGFs8naY02Pdq2q/Jqrgdrlz4g74PTcbMkeWbL6tzAbB3q4kWxp8EqasNgFEMUoWBu97vw4vM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vDilhDed; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vDilhDed"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9C50C2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783622313;
	bh=9nu7MFm5EijjYOnVRz5WsxKtlVZCGZdj7u32MNR/F0A=;
	h=To:Subject:From:Date:From;
	b=vDilhDedB7sLaC9dVKSfo6te54n8Mn6jjvCCQa+MqOSxqx8kH3qpeoVm0Z2RiTITS
	 W96swohykoBgLr58LOxR6/TkbK9F5yboCwAW+Pibfxr2b/d5M3rZVI3M2Ii5A5cuoB
	 ALldOI1qN7IQd3BGiLfOqPcdTT8LVLSOWBU3GMBI8hQ3VS4717eO2THrfHgHMMcCTK
	 yl2sZb3zUZczQhOzfksUFDM+8jSaNXHOBYJoNSQR2cJDfx1TaSW7JDjp1MhUIDmcbT
	 gs4lTOtj1RmbWDzxSl2zuDFS/yI6kTJWpb5VBmDuugpfuWUxB57ioqnKIWXV1nuQhF
	 H053J+K9908PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90EBC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178362231368.29207.12502597288959318991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d94c481f57da811e9255aafe19fafc31c41981a4074c1adef6ca7907db1b366
Date: Thu, 09 Jul 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783622313
