Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB081D61B9
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743352194; cv=none; b=WlN4hgchgIt7+8sNJmAqJ/sFT/OyM4Tj/IjbfFwHjxHrHQhsuBthTJoLOBZn0dvt3DK0q1A9+bAu5Ye935wzuWXeanif9imrwqI+sWzHNCVvA/BeouAQZrDym/E3t9yLSm2CGmyTqyOMNLwuBxNkuL+5/MLIMCBBCKI5Toi2Uew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743352194; c=relaxed/simple;
	bh=TbY0x30PgrDvba9WBDU02NKYc4ycN70vzen9kYkIx2c=;
	h=To:Subject:From:Message-Id:Date; b=IdVrU6A+IaKl89X3z7yboJwFWt8UfEQytRSVjnPKZZFAPv/jniLnMS+rRIJe91D8+WuOu3wliPUFkPMUJ2Kv0bma+YxRhu3y0ipmryXI0vTgLOHsvIheNkPzHALU57Ko93NhGpaC7X8UiTa/Ak37qvW9eq/qz06kvFtJ2BjJdnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiQlXaY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiQlXaY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C017DC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743352193;
	bh=TbY0x30PgrDvba9WBDU02NKYc4ycN70vzen9kYkIx2c=;
	h=To:Subject:From:Date:From;
	b=uiQlXaY1LECRWGMPVWUI2+8FeV/JCsymMvxw7OEqSUeP0SFILnN6mjYk4kyTrlrvQ
	 3g4fN2iOC7i33TcRhoBVbjGX3fnja+sUw+veO3a+LCFtxj1pfws4PvFOwwpcGZ1PgZ
	 W72SMZykXWoHkyeGd+ptpROOHkMZ18Yb4EN6v5C0DZ6a9E86Ihmx80ieKdou7k1Oi3
	 qyVPOepLcbkEU6pLer+G3LO5PuTC57DDJGKFa+DOxIJPTvPaAGsAAvJqaTTpEO4988
	 sKsuyih/g6//HYs2rH18OexL0/NhUqQYGE29PekqZRZqlxSeXr+Um2GG4NzqymJIwD
	 GxgH/JD0CDPYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C520C28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174335219360.15613.3754691053796024688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d98b92e18a22e774b89fd720faa8c4a477383c3ebba99fa40188c1db441f2b5
Date: Sun, 30 Mar 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743352193
