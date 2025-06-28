Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C61523BCF4
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751135395; cv=none; b=Y5vg1YaVholWZ+dw9/zWtQrePgphGKdR7Q2BEcTF1UqA4iv0YVhEnNTNvzuTsP1Ulo7qF2qVWSIIdmpl7SGkWCs/3Eetk7CyTRSRyCij7PhRQ0a3lVwKloB88T25tbHqMgrJeWFZKl67VK4IFHo8v8/n0YEADUZFNN79PUUHEQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751135395; c=relaxed/simple;
	bh=CzJbAU3hgWS8YEP00zD+LVlTc4waA10J04HqaR6UQQk=;
	h=To:Subject:From:Message-Id:Date; b=ZUiBXq3b6RttU49hE4S/nqN2XytIr7PyoCgntUFpsgfmISloyXYVMBGtsG/AowPaT0FXsPO+brMn+YK14RWyfcBLhzxCBlKVM1mgxRTpKcSD8mO3zWsYVGgknY1XKu+LQPqnvVE0wN4utWJThqDPpgJD4kGCAhcSpTaqgCqAeF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mOipeare; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mOipeare"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBC2C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751135393;
	bh=CzJbAU3hgWS8YEP00zD+LVlTc4waA10J04HqaR6UQQk=;
	h=To:Subject:From:Date:From;
	b=mOipeare/4EpJuTRyPHANYmdA8we0YS3j6pvcsaeeNdq9rk6sdaBKggb0KwlCbOyA
	 z5w3TZsWzN3zHLKEESgNudIi6cnoOGA2mif74mAo4b2jcUbjtae6Upyzg3SjIaO5sh
	 LAfjpxmIKK/hVDYpNBru/BOxlu/beC2f+CSjOa9lQK0rxDpOVQWn7nOVNVVLOvM5M7
	 SLGNLXPmt5HN2pp/g9sjXZvpDFW8n1IAMJmmCfpWBKA87Gi7hWJqOizuUIInDUCv/V
	 gCXzX+05cI7o4oBpZfUkRe+m7vnFkebhYw8jDgk1+WOQKzD1rWTJEhar6lRS3zFUDx
	 rPICRdyWu+T2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95D8BC7EE39
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175113539358.17843.12339962298855117803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28be2d794116b3c5119b53cf42cdafa14a603cf7d52c5416754b77271280993c
Date: Sat, 28 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751135393
