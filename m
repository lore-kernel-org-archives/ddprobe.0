Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 199A52DC35F
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755731994; cv=none; b=hjhYkBxNLMRn5mvsmibIp1M8xEuFNKozqG+HG/CvbJoJ0PT9kiQZ0XaSt+L9nEuAoj2RGGPnT94r4cT1eyH9vIO+V7NfiWCMwuSzWkDHEUyTtNUOAljQw5APLm9viVG14m1AIajeIF+dF1Baz1uACZVGg7yBldftRX6U6jd8hPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755731994; c=relaxed/simple;
	bh=loqzj2k9hO+CS6eRsKagd+NhAePgsg6xw54wZYuChS8=;
	h=To:Subject:From:Message-Id:Date; b=Wr+kM4SlG36JOZLyubeBV1FTYsp937bSrQnxrSwVpwd/AxF1fQPkuBTgocz0RsXYWBPjO2npsgeUzUXffgm8qyb1K1Mua5bN0Vn3KgpwJYs4xE8mkEjfl5g8lunAA5GyF/isPEd60wTJ9gVO1a1qzYm025cQ6ALHxyQPGNs2HhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpDOkHId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpDOkHId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53A8C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755731993;
	bh=loqzj2k9hO+CS6eRsKagd+NhAePgsg6xw54wZYuChS8=;
	h=To:Subject:From:Date:From;
	b=XpDOkHIdv3ojmTvwBJbQut16KFcQyuJGZ0vVZRJUaOwVy37V2c6ON/R6UdgYWS0+2
	 OHOfPyiNcEwgZ9uLv4Ui0TFna+bJpnYFbT+DslVwfwZjDH2Bk1os1HvmZ1Q7ZToP1O
	 KuPMFXH9Dzum7ODQPXsngYD6rSxZwS1wMfDi9PyX2vDUufWqShHf/siFu5IBJ1d9hp
	 dy1nEW2xEwljpnq56Rx/1+B511gLzzfv2qBi0k22XDf/XWZ4+2f4sdY/giiabu0OHT
	 xMPYmY03HVyo0ZNvIG0/ZOeKoMLyyWrLxGvTs1X99Oo4whsRufXaKy4Jir1zMSHoEo
	 PelQktnOnFNTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95A8DCA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175573199358.9998.17008299793102070912.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70349df770c684e707f06ac2433845440c09309e119407c9890113f3dbf20203
Date: Wed, 20 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755731993
