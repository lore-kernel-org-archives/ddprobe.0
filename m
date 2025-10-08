Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 227A52EC569
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759912194; cv=none; b=JdGAhp04KGxK44FglZ5T8SzIzAnr8goXXG07yBGUIQdn28BeUXEDEW092Jn82BbV7MNJW0BTo6h1mDj5/Nx573i3XJ64LhrgTuYSPWyoMt4+Ilf5/eb25L3ZQss2WCzf3TUCJ8WSfaaApF/wZZBTq+lClKdlhP4Q7byKjy89VOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759912194; c=relaxed/simple;
	bh=yyP1H3uRP+U3v1zXzUFfEA4/c1PgL3bgDUrjmFQbLgc=;
	h=To:Subject:From:Message-Id:Date; b=HgETkua+EU/jnTure422dd6R+cX9OqltsQS5SoK8LLUftPq/MAQGWuyLtOWJX1RaofkTbLdX1XYKqfsKC/QoEdGDVB+OgLHAhDA+UDHuz2V+EzjoIpOWdmoWsNG8x0ro+PJ07Vhh+JYNrCYefcpIl4oQH7B5B3SrArkuPfJSTpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnzMaQAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnzMaQAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B67C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759912193;
	bh=yyP1H3uRP+U3v1zXzUFfEA4/c1PgL3bgDUrjmFQbLgc=;
	h=To:Subject:From:Date:From;
	b=CnzMaQAllg7pfik87EWimrkT+XZDiFFo09L+p5JdxMe01bGxJQK4hpCTELaLtaZ7Y
	 peNFW7+Y/XX0HE/mCA4TvjKjirdzPdFXbe12xedOHHY9wLjYLWiCFRy9EaizJiQ8vH
	 WiwVwIK3GRDvxHPX3tEd6GeKb1n+FKSy39eYFm66g3sMl1eFEe+GK2yYmJxmfss7qX
	 X+7zbIlUrJFfZIVPSxM1XQUVmN/gCFCUao00L0bKaaAXoKzokzY4lhaboLUBkAIaCL
	 0Qu83z7eMoRJkyeviWt5IIswEKJAI5G/fPVJvqpB3ulAnsJi4eezIsP6yaW1vehURj
	 DT9MZNO42oPBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE1CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175991219358.18324.8941567312818801847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 898700762c85d93a06fe8d64667a3ad5b9100587ffad1d936b2844d3f8a2acef
Date: Wed, 08 Oct 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759912193
