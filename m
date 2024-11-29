Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FDE198E61
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732888555; cv=none; b=bDNJearXBTuivYCtuFobWFhoGe3IzZRR0OX5WUC8VdJuxfDNZpDY4F4sB145VSweCt8VwvkHSS+CUgb2o/hB+tEDEUDxjsnhRnP4iSjvHlqalAbGwmSpagrVGyp2HmXx8h5eERHFUY8Z0vvA2M5Daq+hHsMwcSA1U02BqoJfsgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732888555; c=relaxed/simple;
	bh=LbVAELSU2KJUVkAkP6MipIqdPoEPs5YO2O/1oZxM86U=;
	h=To:Subject:From:Message-Id:Date; b=Jd51OLyWZ7ePOh0m+0nFMN5v1N6x8ZmJpw8oDfui40w8drkALzDpkWOr46BYeddAjChPrqeOYcjb91EPES7n9UiXCQ2JJ3cbZk2C85AKk0GOvFN4vTkYvubc1iiQF22REgnbfaEqZef9E5eK/+bLUEoHO13cVEJ4kbEyq7R4QYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCx2rIXB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCx2rIXB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F1DC4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732888553;
	bh=LbVAELSU2KJUVkAkP6MipIqdPoEPs5YO2O/1oZxM86U=;
	h=To:Subject:From:Date:From;
	b=WCx2rIXB/6QZT66sSD/Qcvmn9GMcQjdMkApCfkmgRNODwW5wsGU6/SRMRyFrSCfFL
	 +uRpLOaKs1fmZdTinqsY9tRvAKEjLRzHoXsLqR3OikW2g/YGMi8IbUaNKSiUGgkpST
	 RVNqS44fGOmZ4rRVo/B+6VFC6v4V3sOy/ax4CfsikhnYnt5gFCqDRusdMIDCra4VKc
	 ZvULeCSyRZQXZ+0kq6dkGAb2PEZvjdlz0tECeEpw9a9cdnRK/hS8VJYlnl0Sv1hrDC
	 FGcfQFkViCtIOZAZUDi/GO7ZGi2ghoAUx2IqiN6qkIZHEFSEMOKzgS3SBi9Mn9mFmu
	 de0wEWVkYoSoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB90D6EC0D
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173288855364.27806.1524560148656110612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af7b585202c49835bce862345005807a5c7fcb84820322f9d735b41ac032297b
Date: Fri, 29 Nov 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732888553
