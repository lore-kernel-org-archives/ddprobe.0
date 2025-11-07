Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 422FA13D51E
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762490394; cv=none; b=TSpY1rFptjvev2BJsmSHGsGBM3GUTIw4z6lNLwTEBHPnfJ/DF0Rz8R59Z7xkszlSc5R1GuLKY+NsyE8PdK4F7Ixldubmjf0mL3ccNHfaVt+ONTrwIEvKBOIf+a8WrAQDL0GYeCN4c1XR0Fd88d2rbEIjYg4pFjVEyPJsdPllI9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762490394; c=relaxed/simple;
	bh=gpg0VO4HABzoBCrtr2bpd3sz8yNatReETI1hg6J81p4=;
	h=To:Subject:From:Message-Id:Date; b=M/7jQs5s1fk8FbGyrMNoLu65W1RQz0Bt6x453TpgLjn2aOQHmVWy72YncooX1Lr9b2UbABJDiMW4egQ9LT0IpQ2yRemWWu3WPGbjGsyrIXgKJyJlp6tJTmfopGQQyUuigvoqMfzFc3RN508mhuUIWdxbyKHmhAgpFBmIRuVzTe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ONwNfQci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ONwNfQci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8E8EC19422
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762490393;
	bh=gpg0VO4HABzoBCrtr2bpd3sz8yNatReETI1hg6J81p4=;
	h=To:Subject:From:Date:From;
	b=ONwNfQcitconVRzQz8x4QFqDrdihTCYHuIieMG8zURQS1trJAaTgVKpM3XP/1y4uG
	 pIg1sZn+iVTmhMhBAf5FgOw++3CleJtG1j9Pi8FrMk/u6WO2uSa7xtQciuK9kI8hZg
	 cvCcu1W0Z6Rin1WiTKIpQ5a4TZ8zqr0tX4ynEwpAV+u5M+umExx+l2J8+pBF2wxxI8
	 HWej5/LCUrY8f/s8D5IQB8OiLhjYqlrqYb9YgOV7riRsriP21dArSD+Xk/ZJQiR3FM
	 R943CgdIBRogILmHBGOx15YcilFvwVXcpJynSD+DNGBo0LUyshY82vMo7UdNeYKoHN
	 Nr7S3Js7XyyHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC88BCCFA05
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176249039365.26477.7231702899157074724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332fded3e1535ef72b75e29562b9d77b924103aa4d917435746e4cc1310ae780
Date: Fri, 07 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762490393
