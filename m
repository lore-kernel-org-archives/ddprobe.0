Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FAB0C2ED
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749971394; cv=none; b=RMiK2ofQpbpqkQEdRU+bPysI6KBI46v4Ek8Za6iN0PndXv1MWSWc1zNR+z1f9L0NaBP1VhS6FK2+KoYE8RhNe+V8tf/x9jXpQtRufAtGBuyOLU1QyO27kWsx+pt8Ox5Th97+acR8MWbg5fFOYh2nT+jtB5oqt38ipF9gh+U2g5s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749971394; c=relaxed/simple;
	bh=4T+Aw5HeIm79CysD2opE816F11W+cRilJOFWVSf/aDU=;
	h=To:Subject:From:Message-Id:Date; b=qJcp33v+eKMtYnI5OZbO9orVjij1grvhlosiW4VJN3SkLoEAksRLniX7ivFMybXr0Yz4vw6YejV/9Fdi7n9B/VENpL1ZZANqmmAauGR8pBbt4QADuaXRLHxMCC9Z+FXtZqNv3UbUv4T+m6vpy2R5Zic2WQIEQU098cQB/LqDPt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVLpox33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVLpox33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB1EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749971393;
	bh=4T+Aw5HeIm79CysD2opE816F11W+cRilJOFWVSf/aDU=;
	h=To:Subject:From:Date:From;
	b=uVLpox33TnvdhpuI0vNE1f7s+uBn29zhMK07HdVX1IRElthCzx3phLPv5rYhPLH4h
	 fhldjyNhHbFxVmp+5tS4Kt6NZ2iIn6LShO992MqiDghX6n1PdXWE1AYPTLYjxYjbE3
	 8hxcFdfCpD6dA7Rp/0DBfNlkWNfZY5VYw9KXiHQuHm4Kgdb0PLkwZoA+tSuADS65R+
	 /Fns8XBU3oUakEAWEcQuKLvUT91CtMQwKwlCd2imdcxixjKQW2KxiPAdS5wv5EjaDZ
	 KJEwjJa8fF8WZWgot3BRegcd2XFBGRTw61X16TrXZjzKOuxiX+t77yhQPORwsJoXIq
	 uG1SJnbf8jnag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B3FCC61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174997139359.7943.9320596316287868479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b161c1c3d9d694cbdcf72827adf31d2847be8145ecf84e90c4e14e312ffefb8
Date: Sun, 15 Jun 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749971393
