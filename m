Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369791E51E0
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760050794; cv=none; b=F1mFeJWjnZTOg/Crd8kTcaShFupUR3KzYmbZ0nB2WaAw/wntJ73JL5Vk9tSD2DtsfPPSdKHWanDd3iGvqxsctKBk5PO4sAuoZLgi9lGfNQeiRyU/qrTrqNH/89Ax3lEOdr0yOgfFqx3+TjMLK4kyK8cSrZntcbIf282FLsA75xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760050794; c=relaxed/simple;
	bh=adQWgaQYD2Dijgr6z98+JMb/lBDMQJgtuSGlzmCEPos=;
	h=To:Subject:From:Message-Id:Date; b=mIdH2awxEjFQafC8/kUB6ckJ2Xg0cGi8pkO1Y27t4Uhrx6viZBRwUwGk2aWRdgno9TtcYuOjWzs7m8aaMLo8HvI4CjnwEDXFKySmVc/X38eQmLtkXJHw+L5F7PFpHmdngUDQhR0oKRLz6pKUao+shdxOAuJjfo4C8YreG1OnXP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+bw2IMb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+bw2IMb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A21C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760050793;
	bh=adQWgaQYD2Dijgr6z98+JMb/lBDMQJgtuSGlzmCEPos=;
	h=To:Subject:From:Date:From;
	b=q+bw2IMb0aUwo6murdH4Z0ukNWkrZTd4M/uRdpopZjqr8UMsSnLdD1YSp4P9bud4+
	 +lNFAeNNg21RsgZUCB++FfVpyCUkUtpbjhVbaRU5Pa1l7bESOdiYIXUVFIkXhlK7h7
	 DdLybgtZk+q+HcWb4gzQKMk4vxcZXnKzL2uxEws1po+ev7Xy0ExHpZsjT8nrIZlHSR
	 4LQJ99mMCyYIgjY+UeTIGYUbNgR0q4/e5bsDGrscfduosgPiRP4h4KnEZcrYtxLUID
	 hX6jLXtsRBRcxk15+WtU4ehluQn86zq51NiBGhvdZqp1F/2i/56fmgJie1rF0VB/DI
	 AapnHC31SLmqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F670CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176005079357.20734.5194635679807815503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 190a390ebd111a7c3144f1d1238339686b51e1f9b65bec6722eab42ac774cb60
Date: Thu, 09 Oct 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760050793
