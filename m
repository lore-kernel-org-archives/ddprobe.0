Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C21D1917CD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788048634; cv=none; b=GdxiEJgvo/awx1GTiz/1yLh1EzDYvPnKBGbUHO/3An5BiYcpybfRRxEqS6Pt5XoaRwZV6i+wn3xMRetl8FLfqh3Z2DjmoexoSMeg64k3xxjsngCCj0EnrMNeOKp97w07KjcQpBPG1L3v+eWAV6FY6pc6l4HlD6TNvbkv3PaXOXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788048634; c=relaxed/simple;
	bh=8k4vC+Udc540HI+ZTffZZ7hs/lr9gcW2Bmck/qdDgOU=;
	h=To:Subject:From:Message-Id:Date; b=n5/fGTbraGQB1DdoFovdigTDzyTOv0bYCRhCN/pQM2AGbA77hk0AZCmAfN8g3EiDEoFcgmilpESkIKp03/xKYHRWjLfZyNbF85RAZs+4vmrAo9PYKWyAt+iMHZiKGU2ypzgBWJwhuhmNUMoFDUyEXaVA41BRVAlIGxcybai6jEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ex/cJGpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ex/cJGpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80F1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788048633;
	bh=8k4vC+Udc540HI+ZTffZZ7hs/lr9gcW2Bmck/qdDgOU=;
	h=To:Subject:From:Date:From;
	b=ex/cJGpuZwr3y3nRfo37OSNDI4cIPEo/EMksmQTUZ697622OVDF7ULtYHq6PgW+EI
	 rghlpX4nEaEs1Wa2jPKZJH0C8nSMDwDgsxoy0Kv6igUV61wQ59wcHxf91WqqKG6C4s
	 S6WOJV9j6IFI7NRmWgjvxRiULKfKmMrStYQMIsGfMH5smYMduaPFou50jvgrvY7LLl
	 3dNylvjEMPYKt4/6b27g5p1fvQrYIySeKojLdjJxnAQlYs0GlPjDfCvPJdrOFhxHx6
	 +PySj5hU0WkCY9DmW74+xh7EmWqE8F3CxleBx9RtjQvQEJulDQ9Xle6pALzSEhmHv8
	 RTMtKJLnJuiog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC83C61DDE
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178804863368.8502.129862324671178309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 693181dc5301c355959074ee186f2d0382e9ea567be9d4cd7f93cfd323c1df0b
Date: Sun, 30 Aug 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788048633
