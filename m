Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB07413B5B3
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773678894; cv=none; b=kDrmydRx2OJQ3mg2a2s6s7eSTmc4aTiXPxW5/N2No6y9qSM1ENserNcsQFNR/gwIspnJoYzM/qtmwveoeWcdaC/wLBrpwfnyKuk272DpU3rEhXnKml332cm9rDo/+N+gzr/kyxSVIE+7wYRNGfJ410ZSTaiJnMyPuozksd05gHw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773678894; c=relaxed/simple;
	bh=w1Nq98jBD9LsK5/VYLEddUsMwYbZbmaqjBHe9/rbk0s=;
	h=To:Subject:From:Message-Id:Date; b=SBdXfkXTnPEsDUfrOX1SiNxoooe3c0MSn5kGYprTFUtX5//uEc7CFkFIZq4sR+IFECUY/rhKEagKMZdUV+DxFwYvPa85Q0HifoFGbmni55rC26gOFd9T/KtjkHiGM1Bq1D30V24VrYKkFmWOKz0Jb0alw2/TrDaaj+RugQdbNQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eEMxb4UF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eEMxb4UF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE6AC2BCB1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773678893;
	bh=w1Nq98jBD9LsK5/VYLEddUsMwYbZbmaqjBHe9/rbk0s=;
	h=To:Subject:From:Date:From;
	b=eEMxb4UFi9Cj6jaJT1EqjYyj2Zb3MyadvHIObb9mCP+79lGBq7+hwujawHIopi1xe
	 3AhOsWLmO4jsoKbvrDeoc+cV+8eWzq3iFAX6XMVYDKbaqoqVNWXegiocEoR0y3AGUk
	 vnLiI4bCc+NB1qvTqPHnHRDhscg7L+klcsuvrZG+hEStrxidhEc1pTti4gmV2ISebd
	 jukhwnTYZ7tC/3421iWJXVsZA6xaUoXnFgd7/mwQ42ZFCU4fTuwJrWK+7KxsyAMbCa
	 oAXU4c09jrn5uTO3AHLXeyiqnUKFfMM7gjQlnc3PX3GxlYOKcgmNq2jOnSXRLAIz46
	 dXXIgq4B1K2mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92350F53D70
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177367889358.9096.800440191812935276.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a96b2d10cd66553f4287d384233d8ea3d4ee0d435cd4684e01f21803b2511d5
Date: Mon, 16 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773678893
