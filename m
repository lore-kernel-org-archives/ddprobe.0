Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08858286D77
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755560394; cv=none; b=uicQAQWcEGDyj/+MjtYdAKm+rDez3VVEkyL55GjOWyaVl9sfbEZS34g63yiYHSQRsYy4er0A2NIu5g2+hbh83zmsLPqgTLzKd1xUFYI2znk7ZIK/zlmiAxbwU3FqyloL5/wel6r8aOiwBHtqmyW8OIkJpLaS3De3dmtd7tinj3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755560394; c=relaxed/simple;
	bh=AAM2DwBB2yjyIj8hFdr78eQRnDErkBF0T9bwmoX9Lck=;
	h=To:Subject:From:Message-Id:Date; b=Owks0J8Vn8A81gLsrP3XAb/fJPF8XPgKLC4LKiIugof/8I7XP5/6V3O966q+LGOVccFbv9d8TcTHv0qR3JliVu90QIhZ9cxHXvMUCycAgqAWTrvUyp4TkyowBRBNzbBB+scd5Vkeye0o6FMTx/f1Hrx4PdDrSbB3D40ISx3QZ9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=il/GsExg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="il/GsExg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95E6AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755560393;
	bh=AAM2DwBB2yjyIj8hFdr78eQRnDErkBF0T9bwmoX9Lck=;
	h=To:Subject:From:Date:From;
	b=il/GsExgpH4Bc3qi7Zel5hoi3RMu8HVzqne3Q5XP7tM/nndylakuD3h/E76TWD1Qp
	 A6kow0jod0qy9K5CN3S88JHqtHr3sLYLtARsINYKSspMo0sGhYffZh/RLNXeknzMG7
	 eVFpLhvwbJHjtOIW0p+EkFy5v3kgN0/CQ69tojmPSgOa5XRbRoYJgPpUsnvEsj6THQ
	 3ziYCzOQvE1stTDKhMlPZBZUepiDGRtoSZAP/vVlvZdGZd1W05G19K/f55FJiz8WWM
	 D8nCHc8jXTRigCbNFxHMWYRJN4ZmytFuajCGEUhUjVWxMVOskOWUyjzqiCMcyni0+m
	 V1oc3lwLKJhuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F920CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175556039357.3561.6351788559016119589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b3df6419b36bc3744449e5c0cbec3319763659d3b5ee7c86ff254bbf25ea182
Date: Mon, 18 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755560393
