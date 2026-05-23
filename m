Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CADB1FB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779575554; cv=none; b=oIxsvOgK9ILpqoK7v1iORd5NRQtgBR50MlBvNzKW8RQA54b9wq0Svarqx7ictY9IUXWN7x9A/g9WsHHUySB02XlLSvegGh3mmCqYhRfsuzE3VQWJ1SmNhs/Qll6QIY22+VVoaYBXENYi/mycM2hIZHD46INHyICdMlg4CNDGf/E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779575554; c=relaxed/simple;
	bh=ZGl1sRaAwQ/qdWHHF8909v4nwOvsAw/+Jal4my6yDbo=;
	h=To:Subject:From:Message-Id:Date; b=rRCCJ83uusY+8ISo4FuMxZfZQhI1/a7DEN4sbdRsYpq+7u2JWdSUI51Gj8RT+1a1WfaIKk2g4fSTlTBTmPjcIn+6Wgh5nRLc+3MhlxKxMKTIdwT8POqEVDZCwTDZQBjgscXP0tm2ljc2NbZzfeIlDYPFrBJ7XBwClV27jRGqrLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HPoA5xdd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HPoA5xdd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C799DC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779575553;
	bh=ZGl1sRaAwQ/qdWHHF8909v4nwOvsAw/+Jal4my6yDbo=;
	h=To:Subject:From:Date:From;
	b=HPoA5xddInRzxDjquCnU7qro2fjOKIkJkHi6ktoLcPjMn82rh3Oam5xwR9OQltSbO
	 odjhK8nC5SdVe3ShirqK1E/5Hkg5kaVdA2V7tCVA+CsuVtT21jX4BLRtd7HP1P3JD9
	 e4u7B+2SYayReQEAWNil+xzgKpofxUW/OWJUyxGvI8bk7HbwoBbDLxVsvgqXYSGCHm
	 oc0a8L1Rdqst72B+wh22YgsQAiMc2siRqPtPuMJn8P1WROnac77Cjd8fZktRGvS44M
	 Y/nRVlUPG6TEgPWxucDh6FObRVKj+mg7zYzoI+bGghmAAMBudRP9+It3MXCTBfolvl
	 ZgKERBdfypWoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB99CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 22:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177957555368.31674.5095950859768567383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11d32544f37b01a77bb8af8e7f3fc3c8e9f133bf5441b1306a50173851285d20
Date: Sat, 23 May 2026 22:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779575553
