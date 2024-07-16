Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7551115491
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721129723; cv=none; b=Tp/2wNLBBJOUAVGGJa54ywEbtsDzWGGzFkKJAm5uiQsJLaLH1Kwl7jlbMcvfEEttSWSLVprxMBRExplfvhryocBsqTrUJU20VD/cS88i0Vm1edXcFyYxZ/2FuVfmyizxylXgMBLTt+GdB/wbZk+FGnRZMukWX0HBbvLujJCGNH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721129723; c=relaxed/simple;
	bh=hWIy2ID5oaazWIMsNzbKl+w9CY1K05hwSgsbaZFnTxI=;
	h=To:Subject:From:Message-Id:Date; b=r60x/gtfVPySAq/KHVcv/4KzBYqn39ZO8gBLzyXVjCIWbYiavmeJQulaePFaQTZGK/QhTPeCGMj1q0hHWFELK+HJ3tpMb45ByDhS2tsaBQ8R0Rvmd9ILT3LEHHPXT2wEQraSn6Ho6atr9pDzKpUcvXx3IhGwsaaY0EVSLJ0iu8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kRPtnWcq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kRPtnWcq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E876BC116B1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721129722;
	bh=hWIy2ID5oaazWIMsNzbKl+w9CY1K05hwSgsbaZFnTxI=;
	h=To:Subject:From:Date:From;
	b=kRPtnWcqcDdk7NXuNDMxBB56Io+wYxiKG5yW3/BlBtcdH0w4cfQiwtJcpAzOHx1oK
	 ieEqXiRMO2wHV0gxShDLXg7c+U4jIJr1UeEQDO6TF70nSqFaieQMlLv8WUt/AgdJJ3
	 OJY4MN1iHyAHY7mtgflrkQi/HqiQyodaGh4PsiSGz0MbXqUA8xUD00c+Ye1nB/LHze
	 HDQkN9iHgThAJ2IiMCp+SPJcztL4svse6ELteMrJrKqOAUacqFptaETuezwK1ha5Xm
	 4Z7SrPDd9nO7TbwT1fx499q6bG5kLgUv0x1TPQw3hGYUNpsJn9N8fcmL/2BG+y1pwx
	 5vKtTIeKJmO9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CECDBC3DA59
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 11:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112972278.25407.5860779896627830255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e9a9937c7a7f4adefd22974d971ea7dcbb17fa6ffd7aa5bd5be9261262b2a2
Date: Tue, 16 Jul 2024 11:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721129722
