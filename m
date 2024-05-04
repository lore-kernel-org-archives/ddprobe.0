Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E9AD17E9
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714786343; cv=none; b=Z9AxUXJq4VsbdhtRhb5e5MSgdeGqu8apI2EVojnQDg4NNVcjpaY/FORMW6nHZ2/ZVxkE2YXRfZMfuI4/Cq358XzM3M6IFm5FYDR1n/iket0GnI6PzF8y4vIzpEl8h8LbQHk1EQXwm93GusUsh+BqYcS3KSmaSV9XjRqIpnEaJdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714786343; c=relaxed/simple;
	bh=7UUx94YSRitIFdvOVVBeVKM2EKoDzoWimEvyftHWtn4=;
	h=To:Subject:From:Message-Id:Date; b=aWa+BiXklR5LBYwpIfvmhTugRDzPC1nhA+JFCXhBB6DvVQJkvnmc8pchrPFN8BVLS59mAKYG2qdRANMxAR8rVESyZmr1gD0B7ze0vjvPvXyg+NHAuelz7z2Hh21RVgUh8mQLCzS0NCDfqszWRPM/I12Fnap8PLzBAPlrKmthbdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMA9fa1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMA9fa1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8839C116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714786342;
	bh=7UUx94YSRitIFdvOVVBeVKM2EKoDzoWimEvyftHWtn4=;
	h=To:Subject:From:Date:From;
	b=DMA9fa1Rfb3RxE0EccOOj3mZUK5606Vc0F/mhtNjU6dHyoz3dNHDsJmFevjnyD1VQ
	 OGR3auSnJFHPV3xQj65TlMbasMPbQh3CwEsmICWuw01PHr0iqVdX3xzdB+M5ZfCBHk
	 4T+1xeqx70SH+A/7IOCgor/cN/1I8V63ao0jjV8cY2OfryrTpExWLPcl33lPIDqkF8
	 hG0P2F2sIjPx0JLcohvQni8fZvHniCoiy/K7Q84wf+KKK7uM7Q7r7moLNNk/b9BGe6
	 WMMmrfzngfIeHNc1HJqLsw3TA3wRgpVacQAXmmJX1I33fn01vZedqmESI2mXBnG6ti
	 +xMqCAF7Sm1Tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD9B5C4345F
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478634283.23365.4722830648031876293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63559d845cd491c0f166400a933af0433dae8053c44b428f17ffe6ad3990a537
Date: Sat, 04 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714786342
