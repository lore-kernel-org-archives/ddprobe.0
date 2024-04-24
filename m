Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A778529E
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713927023; cv=none; b=aQb7qwzabuTOK5kYB/XP/It2vNIDWzZVWg4QHfK0bxD01AP5lB1AHnNek9WGa6sGz3ZVw0zZ+8lDj902zHkyX6sPpq+ymRlU2QcF3o0s+I81FqTBT5Shrd+pqf32BGPKmAFY8Yp1aL7tKb1Al03Wbn7JQk+uJ/YPeFZShlRWMl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713927023; c=relaxed/simple;
	bh=MMgRTLvMqrhCT1jc4EU58qdT2i7TXbcHWtqKy82cP6Q=;
	h=To:Subject:From:Message-Id:Date; b=bahKOWufiQXVUtEp6PllmG7NrtOUhGQ0T9FHLMJTYoIb1ZnAgKtd/ZqNOEKZG9V8Xm3xG+QQ8t9oi8UyiEN88bONMKnDaf9mW6W57M6CZd3bWM46x7dg/4Xyk/zT1BC7pHDlhQPr/r0jhiuhwXVvpYPeQfrahz9dl41p65sqZuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRzrDX9V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRzrDX9V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAD78C116B1
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713927023;
	bh=MMgRTLvMqrhCT1jc4EU58qdT2i7TXbcHWtqKy82cP6Q=;
	h=To:Subject:From:Date:From;
	b=CRzrDX9V/U4pyhp9PzsoXPNPvNYfIeeW4ndNKlZ7fCA8A0bskd4c4p68rA6F9VQ43
	 rqvfAx0Y5jCzqshcHZeprGCZssaSK8X1YMS6QW/H309pOsja3BZeEbBRCHisNwu8Kr
	 1IP910O45+fR3TIo4W4TDw+MrHgW/l43aDmnISLkBOIILOgsazbEJPHHrW2luvb4tZ
	 xjJ/dBxZqvz+s8/8SZXU5Zu0qlz7XCbwBaI3d3zXhCItV4MaW1uXWiJupd39O+vLjj
	 t+qD2FR0bl/lhBlH2dqi9W+4f3/pWTHdq11XZa2SdcEwVCvufC6ZXQFs+FnM2fmsOJ
	 WK+XW3WmFVMLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF79AC4345F
	for <ddprobe@lists.linux.dev>; Wed, 24 Apr 2024 02:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171392702283.27692.3479942501947513641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d028c30fc436cf91c67ebe5bbfee0e740d96284a0718a0dcb1d4d914ee5fc050
Date: Wed, 24 Apr 2024 02:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713927022
