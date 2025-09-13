Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3732F066B
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757773794; cv=none; b=oXs/gj450tFKSoATKbjh9ltAUpliVVyyHK7t/gfxw6doWFkULDgj3GVUPxDCHkOBHPVms3ihfPSIK8XseTXxNd1z6TW+IKE16zaMzX2jdYcgvYWjxYpVNEyHuK3d538u4jvi1r/JtZr9iZmgEtcFSse/AmqK5CtlIpOOBd3xzv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757773794; c=relaxed/simple;
	bh=pm6pamCVO8haUY3Bv2/BpWpxr4yvdjhYN8D3grZrq7o=;
	h=To:Subject:From:Message-Id:Date; b=SftR/jAAuLjqNLbarQMq6Flm/wF2P01XS82ifewEMuD2GS9SG9mXU4/MxFFKKdoeEi53noclysrRpuULtuPHk4ZMxNdCsBc2KRP32iEFOOav15w/F0NSyEmdiw8jF70aQMHfpxPslptsmRba3q3OXOCS60AFxer/mNlmfG7erdE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3EU5mSY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3EU5mSY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E8C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757773793;
	bh=pm6pamCVO8haUY3Bv2/BpWpxr4yvdjhYN8D3grZrq7o=;
	h=To:Subject:From:Date:From;
	b=p3EU5mSYRYgZi68CSw6Zg97i5g7dUXlSJdmWFKwz21p8uJ29U2O2ymydwQRc1oYI7
	 +XZXhb+zbexdY36hVpUtVlltJ9QT0ZmYkcfgV4qi0ZkDtdPAfZYCrGD8FKCxw92gqp
	 IwAboA4YcY8SmBIPoarZ3DJc5565gNj/kgR2v56yFjsvU42kICCg1DwmaFhNUaO4+g
	 GG1cbWERo+JuC1+N6hurIzeUHovpQKYeBQSlJ1HfV+BLpJ0MPw/NqFWBH0hD9zIxbb
	 GhKNLqrr6vFMRpdn5560IyXiPxCSD7DgpK3gUzN6zq+CeQlR6Q7Kxk0rSPap2s0Eay
	 mR2uO5ZWgVlSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948CECAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175777379357.19725.16944533885415177029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd670c5962e4b2a1513b79c8f7894c321a58e4d990aa31e83224e0eb63175bd6
Date: Sat, 13 Sep 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757773793
