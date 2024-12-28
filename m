Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29E7141760
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735375554; cv=none; b=eMlS1DNcg2PucwdmvZKQacr51wb9hW3KwPjEq+6AR0NWUgPjRs75wFtgnaJHYs1TVSBT5qkp0dRSWaPN/CJuq+vw9MuNIBWKk67o9U6AibQMR9TkNW44tInXd0yqAsd1cA+L44kwBnW33vKnJcpeyG5NWpumH8p6/bDHgOiEX+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735375554; c=relaxed/simple;
	bh=0/byYXeZzLjXkYubHdvUByBWjatbLmtKXkfZva3ZjYk=;
	h=To:Subject:From:Message-Id:Date; b=HtUzzQeuNaUk4kmHdbOUM0+9I6n/cNSjnnu8cbqypkdv/tfq951XTM0qfvOmmmSfOrI2DmoC9m615r7ZxgSuFWMhby2Dyp8UM2Y/kDATrHbBBy7byrFLWT885IDjzUuvICOpGXvA96mjRPKq5c2GbPmFVAai1mVtYl3oMZGA3wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mvwq3O4S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mvwq3O4S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF91EC4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735375553;
	bh=0/byYXeZzLjXkYubHdvUByBWjatbLmtKXkfZva3ZjYk=;
	h=To:Subject:From:Date:From;
	b=mvwq3O4S1cVAL98yFit7n+2unLsvq4LLT/UpG+Pch+UMa+Oh1pHyh7lUH5oL+mHAd
	 PuYHR8RmCufiWeKzwNnU/wZthSwd5e9aH7tyvSJzM8AIlWRspNAB57cdI1q7f9LKZk
	 epvrn2tPO+pJmOX6iz4V57JunXmC6WJYnRMlyg0nBZVcg+WcFxbkcigGpNFwNwvA5I
	 m3goDhfMLRxK4pyHbjLVgLr+uUiCxuC37ntV5bpJq+Z3TOXKWk2Qhoag4/ALGFIS22
	 8Gi8zNFVCqnd2vekHVSI0/WdJ5u1BezuhaKI3Tqe7507yFaAtv68F07rE9wISf60QK
	 lb/1CpJ9Ar9FQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99265E77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173537555361.7248.6411044012303463722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0623630db3d1d19f27cfcf0c6b1dfc6e010e7ae72c1127e289dc3f3cc9a82e89
Date: Sat, 28 Dec 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735375553
