Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87B2F15B14B
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716966263; cv=none; b=GXknDsKwXijYGcNN1eMq7ZDqMCZBYDWEpmVMVGxLRMFvhQifmKvglAmdZ4O22VRozmE6gCHk1FziY5EySirSTMkMFHZX+2eeX8252bqhkPynSDk/ms516FSU7jCDURzaDfuKZ5zulTuYMN3nleAlOGh9jOB0f2URDmArRDx0FBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716966263; c=relaxed/simple;
	bh=aPvVJNax1aY2OLyEuU7BX1N57MsL0HX+JT2XnXeL9fo=;
	h=To:Subject:From:Message-Id:Date; b=k+fv80giKakJY1lxofRr/te8uQwvG8ZI+w87MReAU6y9n2OvlHRYmZwju3ibwRq8BQF/p5pj9VkV6q8STFzKInm0HmN1f6ekf+nuEm3/+jsbX6Jfrwxx4FexYGHwE2kf23EtVAQkoRfEok8is35YKTS5tpYIquyRRtXMi6xshRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTxAjjB/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTxAjjB/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 254BCC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716966263;
	bh=aPvVJNax1aY2OLyEuU7BX1N57MsL0HX+JT2XnXeL9fo=;
	h=To:Subject:From:Date:From;
	b=tTxAjjB/O2qSfZ/nUWpRgKZYwydS1RzaMLGI9QwR3IZ5dxf/kK6zvGFowaXBHzvVc
	 drFSl7OIpLUpGFwk2/N+XR0jCS3tf54W3tC9mu8P1O7RqrFvDd6bMtPLPS1Em4sqpI
	 V3Mib1/WZzv5CxRCOX2ivcVrRFQcSYwUaG2vqJv2Ov6sSzPvwjI79X54xC1d48BnzI
	 EoCmHx1wI0CviuPFNJ81x/C4w1fCPBjsfjGTpZ50hoSCILIYedwDmEURU3ep9A7F3Y
	 rL6bfDQ/9DINrHvQ3AzXxw+CidZk7Z5OCZyBwQXieUjPSW40ftnrgWTHE/G1M0C/dz
	 A+bA5K8fC86IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC52C25B75
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 07:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171696626282.22028.8225076315571702413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b3256e43cb0dcabed15909465830f5ff3c483b3ad403190e831d3770c7c0262
Date: Wed, 29 May 2024 07:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716966262
