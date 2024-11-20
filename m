Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5ED13BAF1
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732145754; cv=none; b=DtV8quBbJyrcT8QvBpWGHUs/HBQOjMoRveXTk/lcETsDtJ5sFfgmXDq1HvoELVBSmvU2kdjsQd+r35dIXfecoYJDaXHb+BNNB/nlmyJMnR+NNMagoZDvgt6o3z40XMzdO9LPl+jbYeVXx8GlwnBROm5fyzAABIjEA0cJZLxzGVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732145754; c=relaxed/simple;
	bh=LzkP4qONLTBsOB+xRRoNiuBGcY2gQIh9vMq/Ujx/Rp8=;
	h=To:Subject:From:Message-Id:Date; b=DFDBNtdObhnR5Hqtz7OPkOmEiktae55K7n5AJUp2oUsEqhLLb5jhRyh48tHLOEpgZF3cKyS5uj8b8j5QqY1ZOU4jFAsAJvQogpIGYc59+p418aBd3gTV2pPui6Whlxs5z5Os0geijrATpQBJ4s5R4Y3UMqkTuMCt8Zi0Z9kTinI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZKvdE01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZKvdE01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67DAC4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732145753;
	bh=LzkP4qONLTBsOB+xRRoNiuBGcY2gQIh9vMq/Ujx/Rp8=;
	h=To:Subject:From:Date:From;
	b=RZKvdE01uituKwoQcNwuCZfGP6bKHQN5B2ykp0Hy0ZuBgln1irBoFxZfy64X5TS+P
	 XCWWfHEFihwdzV6Hda17Da3GqqlOH30ATZBZcCKS7eVDccex8swlwom9r2xvgoVqIV
	 vE0jWT99qF065HlChRKPZuICMl44F/Axl8loxrelxpmLcoqE9XcypN0RCLZ3W5BPnL
	 NpF1pclkgYYKyiup2f0TJsA4J+EAM1pSeCN1u8BzpQ0/tsDb9b5+mP24LlajorBnIX
	 hv7uoSBks2nIMQjaEHfrEVh8WxFPn5vmt+g9a4o1tWaTRQBqLMvlxdY61X63TXuY9B
	 jGqL0xN3ifRqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F8ED743F3
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173214575358.24755.9410178536733113554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f913a4034fd15e892ea231be743650c2f28ed494721677fa97a78e1e54d384a
Date: Wed, 20 Nov 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732145753
