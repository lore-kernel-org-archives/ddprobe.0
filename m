Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D62D1FBEA6
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777249654; cv=none; b=jgi7OCkLhJbHeYQK999uVOFncJb4UIQ7ejPvOOB+qivm5OLWQWMGmZjuV5cd9bIvNl8FglxVNCqvAk/ldGAEmjsZ1NHePyp0PDGEAcNuKDEtNewOuOOTuScd0FTrYlp4SMdeyvtf7Ibx2rj8baNwbR/s4h8V81cOVW5N/h+emwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777249654; c=relaxed/simple;
	bh=30FCJgz6JxV8Bs3WCy+KxTLqeNovGF4Dst9/nJphK1w=;
	h=To:Subject:From:Message-Id:Date; b=ohPUkvQmr00h0nj1wGkxmrEmPFD+6zj0v3sCRyjZTmXMD/ZAlNMyMatBOhCh3GJID6SchF+szgHpPONspk3+lCpGrIyCnKwffdDEmtHyCd+x3fKapSNRiX532MswamIo46mPmK4We9qbAZktAOfgTYVvuF2eebQomC9P18jQQCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZUTz71PJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZUTz71PJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DB2C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777249653;
	bh=30FCJgz6JxV8Bs3WCy+KxTLqeNovGF4Dst9/nJphK1w=;
	h=To:Subject:From:Date:From;
	b=ZUTz71PJXgmeJ9LndenYsd/u6yQ9XlRy3Ghg2yI9JHVg8WFJ6zsVZ1T6m15Jbu+C2
	 4cKYg9vuIrI0sm5wWJHXmLJc18xwQdSy/ItMsuO1kiycs/kyPoGpdGu0eBjn63Xg3f
	 T0+6OJ9Vtz5/NpwhK52NeKZrv2FVL1Nmd0cuQ+YpWWKVFCSs2dbdVkWMY1GzbLQLwX
	 tSGmvoLQw8uVkmDAhr1ePGQS2Fzk/fx/5oozbVgvmyYG8Dnr1P8jOwmUzUVpektfum
	 SEfznwFqmpQ5voge69TakKKhorA47DLjV3XG5NNlFlbay6XDazAh3/H3PMRQ7WLldQ
	 A8W9fNB1TZlKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8DAAFF8850
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177724965368.24536.14985173784072016005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7507b5afc314e7eb32949aa3510ff88db7259603d3e9a01b23bde259aeb5521c
Date: Mon, 27 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777249653
