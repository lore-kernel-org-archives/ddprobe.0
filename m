Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0BC238F926
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785395434; cv=none; b=F3GQKp3v5RS4Fmh0kOFtX4gR4Dni9YxE5y5wPlEa7nN54SA8pIWbyWJlpN7Z4O2ICXVgpRHX8n1V9ZPVttDEkzNj7o299U3JrqJ/qTILhp+1HYdE6rpKaQYi//2NcjSVD/pdtUzwV7GT8+KL1hIHL+lDYUYgFmAqCZy4rPhMK5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785395434; c=relaxed/simple;
	bh=ySP/Efy9g8a/f8pwY1F0wqAAdTpq+/VYOWK2tGL9xbM=;
	h=To:Subject:From:Message-Id:Date; b=HbCAHC5dOzNOQLzmHCoXFR7t6sPEHqtgl9Dj44kgf4rOUiXqzZ4oKslwSG9Yf6UpwayTGBMUQLCp2zZXK6PiR2KXVAUQN8N8mcskuWAKTiIYf3b+sPGnR8cCMihxM0Ertl2EHdeAQM0+l1P37WVPAnLJysWzHlmsvmfVeFMciV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mbh84Tu8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mbh84Tu8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF3E4C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785395433;
	bh=ySP/Efy9g8a/f8pwY1F0wqAAdTpq+/VYOWK2tGL9xbM=;
	h=To:Subject:From:Date:From;
	b=Mbh84Tu8MCHB3wgSvNDsNl/JZ3Ai1rdSQBgPRZfNpKyddTBFrNktUacYEvZlggAh5
	 nw5W1lePsUxH1+Cv9CTVIySwqRdIUoXR5PGod+q2dxKtI0MHqj5Edk6mA19xT+g/xb
	 kGpYeVODgkVSzqBg1Fa5LuSH2APjKg810ArvX8PIF2wIS5lUZkknzYYXjt+qqUQAiT
	 YM83T8haHb1WeExW9V9OM1Zi0m6rXNmYWYd0xAOXUVSpc/B1zL984HX5ujYnqgQivl
	 hwDWS0LZHzEBvXrpqkxTv5xsSZPK6ZR2JHpEdJYUzq9cvMXNsd2sR+uVI4VkHTkbWB
	 xwndOhsa1rzyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7200C531D0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539543373.541.14261408874138110572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9cef40b6f7ecd490dc2cf354099e1e872a56d6144dc0b97e96867b1bce327f
Date: Thu, 30 Jul 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785395433
