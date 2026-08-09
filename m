Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 496A03D0930
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786288834; cv=none; b=VIWPjgVYlABH+g14irYyck6pBOdfzEzF+Nnvjuk1U58PfsDOiNubgWJfduf4KgRPDL859d6ehyKyomkCgG3RG2MZLhc5Zwtp2+7dUX2klUwrYN6Fz9tmMgqj8x9SLPxqsvCjOY/qUrQUiHvupMSbnKCyu+h3KHSsRPCJXHbzpbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786288834; c=relaxed/simple;
	bh=wVr3D5ZPm1m2Z6eRNxQ2JVZoxEIXVGp2o5PTB9ca20A=;
	h=To:Subject:From:Message-Id:Date; b=VIASyctbAwo7k7nvLG2rW2kC9A+ezMA26zQi4k3qqB0eJUH1N+rVlK/fYarHGtiWHqOo+mRR2IywG3KFyVicduHJ46tR1MsGhG7WT7a+9K8WyO5/FnJqvq2y4UAzhYuOSSupnU4QatSrwA4Q3D1LdTe6vIkDGP7frH25ZRjB0e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fX0QEYND; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fX0QEYND"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0A77C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786288833;
	bh=wVr3D5ZPm1m2Z6eRNxQ2JVZoxEIXVGp2o5PTB9ca20A=;
	h=To:Subject:From:Date:From;
	b=fX0QEYND3t6SNK6ie77mP1Z2hHeekQufQC8gcXcjZLm+6PZTdhGjiekz3rNIHjDiu
	 d9dcT6mXto2LoFK/juG6/XrilVZilxbDpWNKe1pSV6HY8fA8mO9SJlZdB1JQ+vCL01
	 xIthWq6qgMDCOpek10J5TMtB5r4gjGSTM3M3KQPiLaWGcJLeI3QWD8SCjcMKUTDLwQ
	 03ky37yhlh4JbD2rv21AFF7mMYh6S+cZv+fd0Fy3wludGPSkplnAtKwiEx4uhTc+hA
	 SnXK+jtY7RPxjYKQl8bxyJR56vaqpeCmsFpRvogYEJUDCN7BOEBQb1Pd2YkX9jIdLX
	 AbZHeT5yZVYjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9F70C5AD4E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178628883368.21558.15587307111453658418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4fbc97c6e9a4ec350a847c59d195c17b9266e4216ac83520250b5b9e4815f0a
Date: Sun, 09 Aug 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786288833
