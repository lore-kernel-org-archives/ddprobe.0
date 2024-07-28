Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27CAF184D
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722132354; cv=none; b=lexLsjtVB32zIZHPdmfI7aQSqBcU77w2/hFNZMSCdx/IvyXUNH7qyqWORh6/TFELIRQJu8Cxo816lvE6qxBQbM4sGg+jtS2jtpf9MsMghDn+rEkErHQ0WVTEfVWeexiqW2c1b0HwjkuXu42kNVAQj1qyKmCh9oL+Fx0chv0T33I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722132354; c=relaxed/simple;
	bh=iEdeugr6xLY+lw2UWnL52lcP6Xl2co8bBbAPcamy8U4=;
	h=To:Subject:From:Message-Id:Date; b=XI8xUKMW+61JGgX3VHlUydNsxgueJ9zk4hKyZzKqVYTv/GRNIlEWANjKI+JM/J1EtdH5K1/bCngsXMahNdnMdAqvSIqdhU7FJETJl7BrmZPSbOPTSiQDrx5g7lp2SvBFmXwqBFqCKjv9908p5p+hnMOBVCDaWmGInqaxY8JUoc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0yLBk33; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0yLBk33"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD3EC4AF09
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722132353;
	bh=iEdeugr6xLY+lw2UWnL52lcP6Xl2co8bBbAPcamy8U4=;
	h=To:Subject:From:Date:From;
	b=f0yLBk33YVj/KSKDWg1S60cQLuXw00kJwyboWy9pSPiZhaLj7dYauQtQa717LNHcj
	 wQlSmjzbHKkCMGVqLIILNyPstRwb+DySitvMXuxUTf/BwJVTJ7P7ONtWMpKgdeI3V+
	 qsATLfYL5o2gIGODFqXx9aE/ffuO2KtHSo/tj3inJXHojSUHaXEYSy4dYFiKpxx2FB
	 lPTICDyE1vRNMx1OeSTABFRIe0ph/f3+7FJz2bSJSESX0fL98nVOJzmjzwj0UEtGTu
	 84Wm89WIc3qstbWLHbTs++ybFeMOumO1duVghTA6chReDbjCNjKZ2kww8myqboEOwn
	 Rj09/g2kpkTrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB6CC3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jul 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172213235363.8240.15301974939326301649.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4751a51d593787d9ce452f20c7efeb479f7cb0e2d3688f1db48fecd76190d433
Date: Sun, 28 Jul 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722132353
