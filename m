Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5433A1DB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749433794; cv=none; b=oCUNOB5XmN+EXR3QEqIBwK0ERjesxTLw20QVrZjA54LteFLahySI/UDKtsP1TR/ZMmAF3aiMYa7fljBzyYHHkslWtvV31HZLT5u0Ym1o07uHemBgmE22m+lP3TkDWTGeWcLgqFaOv0ID0viGx5jhIMK9T+2qU0QBIc8Zia28vCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749433794; c=relaxed/simple;
	bh=Bv7sp3Sx0NfuQptm2gIyQgNtX4aul1RhsdSflys48QE=;
	h=To:Subject:From:Message-Id:Date; b=GKkQi2DwX+z5GVLGmWd/M6s4WQswgkhMQNftSxofN03g6Xlvev0WlVBX/Jls/P5Iqc/3zXFIEeCDFPo8JEy6eYmdJ+az4XTfI8zAtBuq7yyAXZNe1kdRSg5G2K4oakYfEXxxC5+kJDF4315eOrEaA3dGQVjs0WjDWs6rVUg/MJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAyP6SKK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAyP6SKK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D91C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749433793;
	bh=Bv7sp3Sx0NfuQptm2gIyQgNtX4aul1RhsdSflys48QE=;
	h=To:Subject:From:Date:From;
	b=GAyP6SKK3oGx4Y81kpjU2y61KP23neTJJbj4gO79yRhwR8kZIyiLADxZc3MktWrru
	 /RGEQmNqEqmlFwQ7BAwjSUyQr353PVzN6s5M5p21YALU1prUiIWpO5ik6QYuIGtguD
	 0b/aTA2fODyb4GFubAfbuGbD6zjfZgl2wupJ2xACN24nvNH7gdC7a9uWaUeYsf01l0
	 3A6EUcDHDEy2tPHWrd3wH0QK7c/xxEvxZwOs+Z7v2PvLstY+N9DiRzKQjUcjQue2Ru
	 Ycxpab9zzk2LoIz3pQn2Kr9yhZ5MLxReJUh0Jm37S93MjZpVTZqAxGY60H2tC4WpWf
	 t+K++iaJhBHkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F917C5AD49
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174943379357.30180.7449219060037218110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 847b598a2c20813b3ceeadc13495d4161bec8eb5622a784a6793366ae6603109
Date: Mon, 09 Jun 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749433793
