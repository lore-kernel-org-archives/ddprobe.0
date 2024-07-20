Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A3F8BFD
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721517354; cv=none; b=TjcZXbHb7+QLv7scCoju1iaCBenhEy2H7JbnClo/MvWbR3rAJEo/zrvMtxc7CyYRG8uSegDvfLTsOruGdAnhQiEP5YfxpQ+sMknGprfbUCWRKdRQZ1uxgfs9HqQ2l3fcM2CRiwkz8jq+kD3WrImfRRmCDzFTx9k0h2/E8umRNu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721517354; c=relaxed/simple;
	bh=mWrT2tI7vaeN8JiT//wCf4dcRked8cqgS521fLYUOQY=;
	h=To:Subject:From:Message-Id:Date; b=GFldlnqXMeDwMoKpo84tuRv2jd8PrG1UxCcHIaiI2vJAuREhX1K/paesfB0d93fiDs5VWr/xaRrs1aLO6j4JeDiWQhI2WlEjesGd68YBZImd/o5lAk0YIuzTfKvf+O1K1HghwyvT6lNtLyX67eLI7ag0/Kz6vWUK1hnUmvlgKmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IfK8avFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IfK8avFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB409C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721517353;
	bh=mWrT2tI7vaeN8JiT//wCf4dcRked8cqgS521fLYUOQY=;
	h=To:Subject:From:Date:From;
	b=IfK8avFDRrUjEBcEz3tz7s/l0hy3AYMf+jUehh2ty3NW43WEjBdlDXJHXSrxdtpMA
	 hms670onTVD+zS71f8zj7oVnL8AjaExA55u5FpaF/I2aSBaICBmnm1K/sXrzAJpqN/
	 OcS5WG3vaGitMSbpeqnEj7O1hjs8E8cRIPTYblGM6WuaGhYWDKgmvOdpoqdpBkXVYM
	 3X7amvt87uljIZhntFRWGq0loxDHd9geyVdNN5xVBGfM3zcF15gsT0KpfTT5U34BKv
	 Vvk49y74yhVnSZg5E7Dd1fUqLD5S1IEbeybCTz5eHB2yOdH6kxplvZd6WJqNRMmfnt
	 Q63Vy+CfX2m7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985BDC3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172151735361.16651.3979503548477692627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 324af824b9a288a940195667bbeff819e52b57190fe6d104a03ec201602f35a5
Date: Sat, 20 Jul 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721517353
