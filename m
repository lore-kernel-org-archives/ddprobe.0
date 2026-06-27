Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A54B1E2858
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782536314; cv=none; b=UWSj3BotclFVCSokMF7nUnd00CuFy2Ge7z05iKx4aB20zkK45rrhlHxfVObOhQECVgvPMfLAx1IVpQtv/v6UMCvlpk52CLzOygraZxdnawkw6CdInsqUkirvyiEm1qn6MoVvc3/2FMhFs681a/KV1VcFjoEOJ7/WPt0/nXzejfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782536314; c=relaxed/simple;
	bh=QNJ0zZQynUHSIIu0Me6hvqyHABUHHdqyGRXeG1i7pHA=;
	h=To:Subject:From:Message-Id:Date; b=RBkJtZYru+0ioXT6IQPylgxOlvg49+kSbph/ZJgvtGjILKECSORqgayIzZoA/vEZ+AKwAZ7UOUXXhdiH3LQGZCRUAt4nz6plmH51LOUCvedBqOb7RncvU63wvDaEg7Auw0XQldMyTWi1cwf2al84tbbbjaXWIgmPC5sPvNDoGtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R07nITnM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R07nITnM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2C3C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782536313;
	bh=QNJ0zZQynUHSIIu0Me6hvqyHABUHHdqyGRXeG1i7pHA=;
	h=To:Subject:From:Date:From;
	b=R07nITnM9XMtbNXkpBlejxpmWQl0s53d4nidLFnJVXahbPsbMrCn9B6zkataM4aOI
	 hKroMBtoCFzbs/MIymdEFyP3bqrM3fM9ck2dtWjqeGr2YCvP1YOX3AfyX2SeMBBiJy
	 yziOau+1yTbTAV3SrnFFDaYe3O9OzVhg9J3ZJjQW47dYUvgCukhVPdqW6ChCctQdYb
	 89VEVDPIKzVYiNY/vb5seCgXINbgjemlqjYH/6emeackrwc1NGZt5myYcafSPi07rZ
	 AHqp0pzdSK4yEki1lDB7vMw7Yd5+5JyO1z0V6cvQ2ciEbjd39o6RFlbTxIY9bq/eVN
	 ncxrNENbb0flA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB436C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253631369.25283.3088863675621585408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d02738402cf4a0f83bc2477453a93f4178e8f1ff016cd52548544f7c95b8247
Date: Sat, 27 Jun 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782536313
