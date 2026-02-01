Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7EB3EBF1F
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769907234; cv=none; b=PRJ36lquLFdI5taHQoEVc74kUV2/rzDvdMELyzX8RPm9DjmwYMDKyhFedKtkg+Freq4slJG4empPm+GsW9b9NH3yAakCtI0tJ1S7eje/XzTVp4nuJcD/4Gp7YkCwlaUFNevTsSa93LR24if/fJ3E1Tn0Nc8IhCbAcayR2ejBAUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769907234; c=relaxed/simple;
	bh=htIjt4FKBpAQEPC/3tKYdxAqg/MsrKdT6Bg9WiJpV8c=;
	h=To:Subject:From:Message-Id:Date; b=P84BOh6BKyXybhIaBELzGAzLpYnzwsBIc0AP3Qs/Mevp//9A6ug6LKf2+lus9ewSa0I2taRM/ROepcChTckHIPAl5U/zNxyRuoga9oohr6XOLLceUHPs/ydMU3lgQBF3Oin9lI5YHpPFUMENQNrUYnqx8yWjjGK+oTNXCB16/Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SBXVRGOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SBXVRGOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A501EC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769907233;
	bh=htIjt4FKBpAQEPC/3tKYdxAqg/MsrKdT6Bg9WiJpV8c=;
	h=To:Subject:From:Date:From;
	b=SBXVRGOl6bZUHFvVNlGCT8jFZr5RB/Yu83ecMKP/v/EyIgtlNU/rM+l20T9oBG7Jb
	 n07buA/w+3fXP34wBZ4sV9Yx1de868BtGUYpfQg9q+m2RRcBqcYBo1W9uwRXjI+liw
	 vvftKyjwRFux+7AUj3TgJdSRYld/vu1Zo2QFPCZ4i/Zu/yobxh5NPMqrrwWzsmnKCJ
	 P5HZngpiOaEQv+m0oGF1EtWpPZ9iLejuo2EvMyo1hVq3LtZuH4+d1oi0wXt8lvBtRY
	 VrKCfnzRO/RGzh0ZnufVv4NUJUNMjWezNyIuIcCmcNbDlgSt6e6RFdgeXAgW0poHt8
	 1/AhWHed8e9+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948FDE7C6F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990723357.9739.10694711709174981398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b967126c95eda4b89be74984f7adffde1b05a0cabed157adafe9ce6d2974250
Date: Sun, 01 Feb 2026 00:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769907233
