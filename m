Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0D1393DCA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756126794; cv=none; b=dzEHgfHEzliiypbUHg2VlTqnfPWKblcyRoZUAaPXDj3FvFce/+xPTiH/xUo95ftUkJwNGet5exfI1kvaGhkfvnAAT33Xq4JGK9/bgxEqeQrNfgbxEExnHf0ndBEtJTq1i3Jcs1BvpY53j4QoVIU06L1nHHrhD5goLO/bd/qUcYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756126794; c=relaxed/simple;
	bh=2Gm3MqDOntJw9LQVXlltDH8mXKWDzo5VvAJozzidvTE=;
	h=To:Subject:From:Message-Id:Date; b=ahppDO+4J22psWDfiNsOwOzJhk2AsqZGy3URxOuppUGMfIT0M27tYl9HgBIOnuvvsm9DHh2snJO7NZTSIjxWwwZSW4KLU4wskMeVFH3ekN6+Tza+iasGY6uJawDK2nxT0cTVgyerfqmJo5VwUE6uUQZj9p5JwDuO+lOYeKxLpNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPPWSNRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPPWSNRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A240EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756126793;
	bh=2Gm3MqDOntJw9LQVXlltDH8mXKWDzo5VvAJozzidvTE=;
	h=To:Subject:From:Date:From;
	b=VPPWSNRPpVq9gs3mdM96O0gRD4VQlOcrtu1/bcmDPsv0uvEydGY/ko7IF7SjO/uSn
	 X3N04IUE8V6iPX19dD3I191fzcvyyN2jhNBmp13mwrst36gEuESuV0nSusaFezOLJW
	 puey6CzDFEXKXdFlSQwfMgxOBGulAx6vX8JS5muO0COqttalLD4hOWrNcNTJYbAhER
	 ZHKA74Erybm3UP0pDJ/qysaXoCqEnRbqL2WYtd4aY6WdMBKrU65iXwreR/wdHfGefP
	 mUhupTGrBuIsE7YMqVcjEHQ7Ycz8qkz9EoQ1CcUOq+yyJC1pbkbp4ByIsRNbZRSJTA
	 zq1DAHPqXx6pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C6ECA0EFA
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175612679357.17329.9190516370976249714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e6e1de7aae9b19b32286b855f92adbe2098cdbc2eefe20292d161fc45b27a4
Date: Mon, 25 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756126793
