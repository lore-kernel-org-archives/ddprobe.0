Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2591B1C5D5E
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778894434; cv=none; b=kFHR5PddktzDXHp95ToSvOnFPFdLOHD3fbrYacCSNywT1nk6LHy9mG14/oczawgT1e+lzU63iZyzB2XnDt/vuIEZQvHggHvfjS2P1dCODiitOTpEAwiVq/FfAf1Ja4LQX3N+clpHwvj5+Ta9dDyI+c2y35iqKpudqPQ9HoyzS+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778894434; c=relaxed/simple;
	bh=Aw8Bq5CMx6a+KnLRwz7TqzeJGLxnl1d0GV7GsfDIuyQ=;
	h=To:Subject:From:Message-Id:Date; b=P8fw57yOyouelLe2SvQr7bL3KqK1MQpyM6EFfmQd+sn+fYCCmGU/+9+OsrraNzsECYVPRKQ70+702p6PvEBUQ0nwG313b/v51gtNYNAOwKVTxBd6A8Ele768fUtLRPsRZwbhk1nJhof92liixd3OwvKTcIXl1RHxH7Sly4F8uMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sk2yGl5y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sk2yGl5y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C06E7C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778894433;
	bh=Aw8Bq5CMx6a+KnLRwz7TqzeJGLxnl1d0GV7GsfDIuyQ=;
	h=To:Subject:From:Date:From;
	b=sk2yGl5y8/hsuzTUlbjYW6hp/Wm2kP5zSYRMO7p9xmvStt+MezeZ4iRF71ThWkp5H
	 beggsqa/qQdSRP15sN8NBLxeCPTFDV4HpNUDtKUyfuW/WAkOIE8WnO8JBPA1eH1FxR
	 l271137ed1YKN42FrMXAVlpAht4aHhxxMMBMhJ1geqIJQT+ZTnJsWm2KWcu+og/rSF
	 hi+yusmnK2N11f8clFUqMJQ47a1pZTLXh4HH9Ff3+55GAu/o/Q4UJd/TCbB+rCQ4fo
	 VlLrlRkI3CzhTCNNO37dJYubYyyBktpYg8Cr3h5LYzvMtIEjqHABlNxIgllpmzrOYk
	 zPSAGHr3ddBFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE56ECD4851
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177889443369.16612.12687854253053151486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b8842e061c5892e003a989fe6ac88f9985fd4eddbd1da77e22da7a3da938341
Date: Sat, 16 May 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778894433
