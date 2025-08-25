Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1858E2FC867
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756135794; cv=none; b=m0hRuOZ64NIrSNuVqKX5z1CEFYiAH1+QKkKqNA+Vtw2Em7xUDe/8lwxldYeZgiX7eoYuXsKHPRoYzbfjkrtaK0ojZYBo1vODiXPiYwLwqSfFyZWOZHv2yZpKN17zayZ8Wwu2wzThNZgIMh4fT/ttXAbCYpsyCyYJsbW9jysaiBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756135794; c=relaxed/simple;
	bh=QrOmxcMtEUYSJuUBgo01sCBR1EXr7R3TmtgDABxquCM=;
	h=To:Subject:From:Message-Id:Date; b=inC8gtw+aJWs8zT9okvJXROeOMJhP4XO5ujvLv/X2v5Ce1kxYKUYliJGBrotBzyfcwcUiAPGSU2+QRpmtBYU4/5cm2lX8S+W0EclW5gxWnCDRexAx8hcTgdBouBYST601lU6S/KWcpnr7ro6azIk7QCw18dVCHfYRqtuGJwRK5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARpVgolk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARpVgolk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EBC8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756135793;
	bh=QrOmxcMtEUYSJuUBgo01sCBR1EXr7R3TmtgDABxquCM=;
	h=To:Subject:From:Date:From;
	b=ARpVgolk4UGL1eaoIVUvOQOO4cNYNcnwKP/BsumE5tEV6BNhQ5mVBmA+GR/M71e7G
	 Ax1DvHGq3VvlHDnr7imZDh2yzyFj6k+bDxE7+EO4Y9pUPKGlALtjFSPOLaCkbdie15
	 ShFRjeRm4oKbrdrEGpjVjo5HDn4WRmSO4evlRsvLucy8D/mPJKqzR54RWJJpDWbSkD
	 cxd6EA6SrV+wscHDyoJCi0Jqc3lvhVVaCi1H6/RLmcKKUzyZqgErUAz3Z9IfATSO+U
	 xIw3wkTKz3x4/VSMDev5WH9J0T9lYntbmD2dLVYbnmOmRNY7ALr2Q3R/hzNiUJZOi5
	 n8wIQGNaloivQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10FCA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175613579357.21062.13329146734426526965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47faa45233a8f6ef4b6d0a3c5d37f823990b8351d37b305614e8a4e3072ed2ff
Date: Mon, 25 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756135793
