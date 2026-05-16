Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E012264C0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778972434; cv=none; b=rNbVhKNHYnioluY1lSlcX94goaDBBUt6K/PwC610FNb2PWtztZ7Zb3xigWO5XVpYp7hrte0TcVj7owgves8qS0sj6in/lf5U/LzGFPg9w7zYWjoFmlvphJ2L/qYTOLWdj/Pv0Qcd9K3DjoJEXCSCDlHbYbAyl29lFZk4+E/iSXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778972434; c=relaxed/simple;
	bh=C7ZxTEFodh/NjIfbkvmTE+6yg/XneUZHklBn6PkCXuU=;
	h=To:Subject:From:Message-Id:Date; b=ajaPpHhhI3L5LeW9pBG0OPue94IqGat/IZ/nadbQij9dXqDj8ciH0LMzjBGC9QrwMeLiyU1KrpZUH0fYpDeSBZV3P+XvacT7K043aDzqI+nL6cgK0ijZa73w6/SyqzquQzg/rmZlOXepoWTXKnPMmkXLXxDLeRggb7+rqfmdQGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OipD71sS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OipD71sS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C51DDC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778972433;
	bh=C7ZxTEFodh/NjIfbkvmTE+6yg/XneUZHklBn6PkCXuU=;
	h=To:Subject:From:Date:From;
	b=OipD71sSgZZnFSMEGXgnJOwQjV+iaaRM0wqWYDf3/hKftVAMoUojv60T6iwRg9VxU
	 NDZUN4P8WwG7l4OTD7XpPatswiaseNcJRgJqca1QFmA6BhhsGVQ384tsLeoe9ZA6qD
	 dOn4Dn87upA235m0YY0bYl9IBpKF0S5I44bNwomYHj5a64gQnf7E3uVAIrH3uhfHwG
	 aHCYT/7brnmaLievFTO6wHWblaahYE/FkKTxY+nzNfnDw/Oqth4ujKfTmAInSlGvoj
	 kIUB14bRqufrvS89guKPL8p5z6tZVbz+vJqldtOLiGxG1qim7hWGNxwmjVEOCrYXVg
	 TCkyEnbbZsuiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1599CD4F3C
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177897243369.12224.14238454204042003075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50e7a3e41afb0ca827b0ab6690aef3b11fa12edf1167f391b8fa421f326a5f12
Date: Sat, 16 May 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778972433
