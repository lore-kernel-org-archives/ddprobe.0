Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA4313C9DE
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713994283; cv=none; b=IHt9kzBnBr66dLVSe74g3psgAXLRqKZXXQKdyQafvcRaZTUd7I30akUMF3gMPlaOMFNsviDufYkGQoTDaFG93yfxYD1RDMfXFNsyQWbvqI/aCRsJOnJTp9Pw9GDQxtGyxGTwj4VC2DDWenW1y+xyhuE7F/ELS02mF2Umbambsls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713994283; c=relaxed/simple;
	bh=HiK3b0PgcXNDkETvALNtrxFzLcvJyXJoUNL1z0VPZZo=;
	h=To:Subject:From:Message-Id:Date; b=GdhPHjDjcifisd5ACApYPNcMOnjrrcK+RLCcQUYWYoia7HOgrJFAwpkz+KdD7sXzNyc/4BZVV/zC55evD6pTIKCPmbxNClGcoxJ1HtTAsfOZxGcUCQsis78L9dgUFp8xHrhcOGh0rzleSoyqIJFvsw+MeriFThBVmpd50VrtgxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1XpgKfx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1XpgKfx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA5FC113CD
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:31:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713994282;
	bh=HiK3b0PgcXNDkETvALNtrxFzLcvJyXJoUNL1z0VPZZo=;
	h=To:Subject:From:Date:From;
	b=t1XpgKfxbVKxoeYm9MadzZj9onquw8v50Eu33ujoCgPWPqF/hi2suu9Un23h3Cahw
	 BH3URshP/KxXzRD87giYD95Ex8kVXlQ5uU82oomjFhvng1mjxsxB4vEHQVaE09qUqX
	 Bq6sibgmkNSadpJFIWTm27oUj9Hqoqrrmto6BJx749F53CUY70WkLJ37bO70xEcHpL
	 Y0AXjlP5m7Gl5xa5m1vdesaKzxSbdkOzh4RBxV5On5xytreZDD2xxXBHzTMGsQxPgO
	 VF5VB7oLLmsGNGvtk8WXe144YCv4XM2KSNdEV1+NzaCtA2V34ROw63GwzsbMeT2Y9+
	 QufjGPtgopqMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6A61C4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 21:31:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171399428279.12401.6433706336057881047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aeaca39df6099095a43964e64499f90c7b832b918e67f5b03f736af33406afa
Date: Wed, 24 Apr 2024 21:31:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713994282
