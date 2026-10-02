Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EEA32AEEB
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790936434; cv=none; b=XGA6Uhq14uk9O16DRyCLs4/xK2UZjGV8VISqVZ1jzWdfdGWA2DD3Qid3i051fFClERdqPX3vmOH6c8pleTeWzU2W897Pfp6DbN7PUyDQGZS+bB0DhHYodB/mxzOUh60ems2l2WS47za5IMgatEEmjtpbYXv3pY/cfEzsfb9ADi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790936434; c=relaxed/simple;
	bh=OU9wktUmaka+YvfeQHpsfTck7BQxTdED6PQi/cxp9I4=;
	h=To:Subject:From:Message-Id:Date; b=P0cV6FPsKjcxDEg3pQQojaQH09RDLA0pLQv1T8kuBa8JtW5fPRU8QDxnvZApMmZ/pGBqcn/ox5B81uDJG8P3NZ/8Urj4nAJLCU8H/bgXo2C2eUSmMM6GbcBW1IYJa15OccXoAzB8d0yB2PVYEqExqLxm/prbKhG4oaJ2u1CfAY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=exAYJ74b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="exAYJ74b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3736C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790936433;
	bh=OU9wktUmaka+YvfeQHpsfTck7BQxTdED6PQi/cxp9I4=;
	h=To:Subject:From:Date:From;
	b=exAYJ74bn5xK/u97D1bDS40jgILM4amJxwO9dH0qy3dv2XGypXJP+bZKzbGap+M1p
	 e0n8m/V4wUH0O9NFZhUdhYtikbU6f8WxT/KrtDex7//DIqfJy9iKwTPk0ytjx8FHpA
	 xgHqMH4w7gIt5xVLtIb9pzGDTqPAHUDU3xfiUiujgHWppzL+N3f3Tl1MdtZGhp4DFx
	 virZDnKuBdxdkxVR/zydEJDc/aHkQXXCIotmC7I1M7+e9IN77tC8uUdXKwE6AY4yRb
	 7HUI9robONobUxmvMTnLCXts7dmm6xy3KJLAzcPoGY7940DGt9lAWNi8AfUBzZxu6T
	 +GxpXKQ/DCzkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96F2CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179093643368.15575.6190383551426640135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb511bdc4007432c06b8cd81fafec46efeebe47aa8407c30439cc6ebff1226f9
Date: Fri, 02 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790936433
