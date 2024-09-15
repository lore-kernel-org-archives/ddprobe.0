Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E30E1B85EC
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726382154; cv=none; b=IER28FwSeoG4fX0aDW6VPfTwCKrhPjZ1etk+OmwWXTPjD51dX6unYbptcg2yYzLkmBmOdWeamR/DVAly/2Bwu39HH7PyMwD0U+xqzISHzSUIu+Ch3uL/ZAWs3rRR4X81DvECwDUjqreHCE/zmzJHIQ5L2VRrPeETZXUz//8uuw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726382154; c=relaxed/simple;
	bh=n88TK18yuKo03HUv1ecmiguxHJPh99o1pVwQBY5XQ+M=;
	h=To:Subject:From:Message-Id:Date; b=dN0+WJV68ao0oESPfSYMgATNRWK8cthMcxt6C2Jzf4u/GhLlLDj/32wZw6dQWNSfQWDdJPDhiPUkopGcJGtjtICAY5UAF9sSDlmfuSLv82Lf2d4fiwHLWXypA+lqVJhc9YeHD/w4YZeyP7+lBZmxnBb8xllGCKfGABNJYZIuxP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTM98t9j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTM98t9j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B92F8C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726382153;
	bh=n88TK18yuKo03HUv1ecmiguxHJPh99o1pVwQBY5XQ+M=;
	h=To:Subject:From:Date:From;
	b=VTM98t9j8v/s00DhtTlAI9QMOhRlPnNrogprKHsL/QaaOqwe2yF7SMyZgbwkj5Fgd
	 yZsqjw9AyatRWOBqEwUe0yzUhF2rG6+QxqNvVGa11j7qFhT1axeb/4cd/lbJCQwZZy
	 XxKSQMNrPrOwmJf6xoceT8e+rMZHzsOG7TsWc1RjdeqfxrxMfieotYFmDTP7FE/Kgb
	 VREn1zu9Gs6bs3kNX/Lx7QWmTP4sCgzzG95F9z3V6ASl4sI8icKFqC1sUc1SUNibPc
	 3OZIk8HSrZ/6WaXWQguoxqJTt0BV8wsBNvuZseHceUAl3vU2jDWAeoFCbuGoPKGUOW
	 jcIEPaic9FExQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FA9DC35FE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172638215360.10617.13189113774667211220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4419dd9babe0601ae0c2239550c60490d1f525115bed1f8956838bcf631739c
Date: Sun, 15 Sep 2024 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726382153
