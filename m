Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2304D1E32CF
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766343834; cv=none; b=PNeRL7A9bhhMCrDv8VT6LoyVY0OE//GP9Drhz9kvvpfTBxPBvPv4IfNBOL+eUCb7TepAxAv1FoYfE0Ud1Zi2Ev/YtdYT6QyFzLCslhIxaEzlUDoUnlVXC2QDH6Gvo32IVrv1rQ6imlIpIaWAJDV+6PZpkX6oXrkctXOiyaAaduI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766343834; c=relaxed/simple;
	bh=TZlytYjTA080mmeJPaugob1lEEgqlBxAb4Z9vM2jBOs=;
	h=To:Subject:From:Message-Id:Date; b=H7mW3aDtwmx7oGYimdvmDiHluDT6/IAiPnBpd1XvGOZ9c5a8n1XR9CZ0vFG1u8QvnYfbimcJsMtzP02BrhR+3Bs7s0Tz924oWtjJvjfHMX2ffSUZBvEWJtL6wrLbqwDZIMOS/m4lorGRHWu4jOPEPq6gVbLj9ruyj7+w0/+9ISE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1Db8K4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1Db8K4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E0C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766343833;
	bh=TZlytYjTA080mmeJPaugob1lEEgqlBxAb4Z9vM2jBOs=;
	h=To:Subject:From:Date:From;
	b=o1Db8K4Ugu0bEbBOctdqlVjUKHbExff0lwN0BvWULP3NEPnBRZIhRkzjjbyZ2EEmX
	 8HYaVwhRTUCiPuioHycsfUD+FZ/DugAw3kSCJQRhzhUtI1wEz0k/6SExSPlO1KZXDV
	 oCmynJLFb/F+U28+39yW91Sq7Qj0syOUKVnSsIjiA/CrggRtw3G4F3uB61KmWs1xSZ
	 YPF3KRpgK2fNnD1Cy2uAH36LDMV+2ps1qX9dzqgcYQsnU48viozdmgRBO2FG3aUUl1
	 RB8eJz3vodSUV/4ywn7sTB+IxQbmb75egoLZZoabbAPs3wYnPxrP7yIobIFA5+tL6u
	 DVoYPWsgX5XRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9609AE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634383358.15890.17141769109919756123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 376e7ee4e2d80cb64cf2be0a590a4435d564c2ee000f5bc5ed186f22631e4324
Date: Sun, 21 Dec 2025 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766343833
