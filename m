Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2837B2AD15
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722225354; cv=none; b=AwJ1tWtRvCPIENEdskGseEQaYMaKUxfYdHjrsbepeqhpRapEI2681LhOiHMeZmUE4eObhupoWhHcQAAitJVaalsEeNh5BG6w6yVO0bHgYGQDnP7D2i3AlhyvXYDY79Fp92wunA+SemZuF5crtc3yY1DxAD80xb3xIDbsOWGDENM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722225354; c=relaxed/simple;
	bh=4r+Tznt+28uuwq9P6QhrqQAzidEPB3FuePsq7VN3HME=;
	h=To:Subject:From:Message-Id:Date; b=SrXeotqZIvKZADX9gFiwYM2gyLSecDdcm2eFmgXUVal/hq+XMBx3pCKXrrdXlM1oQWJVABApDiHfGKof1rmb+mcO5PuoqQvco6pJgUsEWTwesD6G6PGaWEnUv05vw0o8FafKYf5LV5DPDpNza5hGyJcS4ajakJr+6C3cBoX0zHw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2xyw3VG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2xyw3VG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA27EC32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722225353;
	bh=4r+Tznt+28uuwq9P6QhrqQAzidEPB3FuePsq7VN3HME=;
	h=To:Subject:From:Date:From;
	b=Z2xyw3VGaU5Xoy5osmBM/Q/OfGn/PXwyM/EnyBrGvCs3pCe5IWe45hpQktipURogQ
	 G2uRbLH/Oqy7GDTEwpGkRP0391qijDWl9hX9xoxyIcZ5XL12KJN93Bw8ltjNjJqtM8
	 xwe48L2nbNAsNHpfpeYIs6aJ2o6m59uZ977XFnYgNFnjZJJlDv835tCmiJ41MfRQnw
	 Qf+9+FUxT/ifYTuFTUOzROsGesHYv6DqVLMDknCE4RA2u9FawZw4yljBLTmY1tswk2
	 TYCzVQ+Xfl1fHOP8F/JyGWj0YcSJmxcTbwmO23vWv4aL0aODB4AZ0D/Nqz86ELcp30
	 S/DU24L9GxVQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A74EBC3DA4A
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172222535363.1449.10775467645347953643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57ad205f451579143e30f62a07d50657d94c0201fdd003fda3f75ec1a58daec
Date: Mon, 29 Jul 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722225353
