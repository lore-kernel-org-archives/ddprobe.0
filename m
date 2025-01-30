Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F34D194096
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738229754; cv=none; b=P7M9EemiEMXuk4MjQyYvrfKEIsEDdy59Sab/C9DWSJIlcyWQ+C9R38SwIhuT3uFAqWwPMTQ16RpDdmBLK4GBTN30GGRz5T2RUigdFhnDPTQJAQcfMHE6in1xHeEiG5D1LOwJY1H00oj3hAGFXqp6o//TBkIA/XnT/zij0ch7yVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738229754; c=relaxed/simple;
	bh=VqGNSUnf0mesp6xPjKhHz9ZTtyXBSFvsPYm4iZ7Frdc=;
	h=To:Subject:From:Message-Id:Date; b=QCAWNT/760/9Y4D0SF61D9KUss/qnScbMRPSghMj4k2KDPfiI4+qPP8IZmZJBacdNPgBY54gGkvCEhi8LGMktVGz8rtS9lAy6DpnAnjQNWh3dGnspKxT+UmoVByZpec2+Fl3+qDTrEKMZR3HzADpBe+lpQrYGVPcLR5qHBTFPbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pK4/BJc8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pK4/BJc8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BE4C4CED2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738229753;
	bh=VqGNSUnf0mesp6xPjKhHz9ZTtyXBSFvsPYm4iZ7Frdc=;
	h=To:Subject:From:Date:From;
	b=pK4/BJc8WKT25mfIhTl191lLaFxEbYMiZywZuh5spM1Qc9hAbASn+iCaSLFuoqErr
	 2cA76D05CCiQXY211MG0OZ59mIKkYT9Qf4pg5lBhAsQqPp68Xp+3EdGC65cYs3Dj1U
	 B+vw1nuZ0mYhJqBoG6PMIryF1LhARPaeXEIeCfyb0TEiYiS2qbjTAxibqPCyvkNC67
	 +L0tx0qM7BqXRtECK/0tk8wHXzSdpyx0eyNoe4FKftB0AOCVffNajjCWhrbhRqtGxK
	 Ws3zKYYF9e48zli9X4jCUjsOIHrDylsn2azhGl77XFpeRlFGjgHp7W3s3BXYXv9Uxd
	 leveX/sxIDv5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C139C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173822975361.25242.708447037170194768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097dccddb3e4fde79427560af30e5ee804301ff9bf21e1cee277daf047196bb4
Date: Thu, 30 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738229753
