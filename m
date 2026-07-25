Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF8223C4FA
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784965234; cv=none; b=YcV8F2KJq5vpzg//47j9k2acTOauvFvDqlCuSvxhvlz96ELVHmpF+iDmVwo0ZbzT0Wv2jXwDjFDSIfoEhbNa8dLa2aLNn0GfUBAr2kOQ+RUga9ZR4zApWLGQg1Veqc3IgSWk3heX0xppXE1sn+JDQgEav0iFxKlfEEtLHwu0Mms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784965234; c=relaxed/simple;
	bh=vL1cNIFPSjyAST6TJ0gQ3GRxkfyje6QPHuahgqofwmA=;
	h=To:Subject:From:Message-Id:Date; b=KjyVNw/Ln2veQV84AJM0dJNW9vVR2NL/BE7VfbAyHkqs0+PUw9FbgTqeaKwCa8pIxPDKYHyDaTImiM8TLUwW8/sEo8H9U2q2MdaY/TteqMmsauesVSlZ13MiS484bdfbdCvhXFmGkxOgQidm/wuNG2snaHKKZ3U41dYdmJY1iMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/vmb9J+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/vmb9J+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC337C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784965233;
	bh=vL1cNIFPSjyAST6TJ0gQ3GRxkfyje6QPHuahgqofwmA=;
	h=To:Subject:From:Date:From;
	b=Q/vmb9J+qvXzivMpI/FhYBrzwFOzrKjr5buD7mlWWDoW3Tc1UKU33VbHWIonq38RK
	 tedDk0F96/kTKem4iPfuGCZP+3c2J1uPFUbiiLJHmy5mxiuYfNEyLF1UBVT/zX4yt8
	 MRqLLsLPCkHoiSz8cLeIO7Gw3YRCyux4jLqhVVkPLkHrUVKWSiqIR2+XyCR+gWhRWq
	 6CfZIAN3kd8Qz+Q/W0nwfNS/cmimoDEG5i5Bhzl210Q2RCi9rBAs+1KI8dQBlOH7bx
	 MqFzhOeI8AT2tpeHadEMjNZXNL1Ex8XNIXekyzX+iEGPZHflW58q02jbGDdne+7B/a
	 yXu2BnLl1gmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C59C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496523368.18870.16136085984224894302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb2ae840ec422a66dea3a7546da7fc5ebe0e679ee04c1b92ddde4a32d23d0e84
Date: Sat, 25 Jul 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784965233
