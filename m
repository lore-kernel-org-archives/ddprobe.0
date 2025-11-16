Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318845FDA7
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:20:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763252454; cv=none; b=lGHBXZtZzVfAuVLly8mtO8Qjnqz1llY4i7lFDjLoMNKc2CGO0hJKc8h0V4vSMUsM4H/edBZmO75rmvTimb5LCXGIw6u1XjpPxN8qgBrcM3YpBtTU8UGQHd8UjqWFhtyGj6KlyBySsmh0/fmC37QamiN4v47qBDthN/zh1QzdVG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763252454; c=relaxed/simple;
	bh=VKPCkyI1bd9P1KzzMtDo8dWcjRI+UzymjC/7keM/GE0=;
	h=To:Subject:From:Message-Id:Date; b=iRntRwNNDPDZvCDI+8eRsB142hJgCwsuNJ8kbFmC3ZjovDO8cjGQrfu7bkwACRfWp6eyDTQC6HNlo8/F1e41ZBFw96rsEBIxQm8p2Eb9XH/xYEurWJH7GdLVNY0L/5HD3rc8mr02hdTa0fEy+CQRyXSLSiCBaZLpNWfbk1C7tUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZoWIml3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZoWIml3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9ACC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763252453;
	bh=VKPCkyI1bd9P1KzzMtDo8dWcjRI+UzymjC/7keM/GE0=;
	h=To:Subject:From:Date:From;
	b=ZoWIml3VySjHlMKxs1hA6SgVLyzMQodoFWQfZr80ImHG45LLyNGAeP0OzMm7XHHoV
	 T96bFaw0QdUizm2HaDxETK57vWr8rHvsdvR0hmIxHMu95bkQ0XcXTTB1EoFIDRK83P
	 hU2wpGhYQ4dcB0U6lpGJYe5RtqbIfiQT9hTJ1fXJTawZgCWCU14SCMHD4R1XUHNTmH
	 uTHuSXRF3zM29sJeNJ5R0dyGqFHxJX00tppbYRp8JfXiMEPp38uIwjV6D73HLx8Z+A
	 RoqRmuIdvw3rxNF1T5nE+7R7lJl6t8kcF2XXA8l/+OTu4hO1BzS2nHgtgSunMQZAn2
	 ZAFAgZMrcJVHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BD8CEBF86
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325245358.27717.10431577615318499395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ebaf57cccb2f1bcdf2a6274ff9a41abafbc21617a2791286adcb74ad2c213fa
Date: Sun, 16 Nov 2025 00:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763252453
