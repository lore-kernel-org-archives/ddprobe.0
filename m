Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3485E26ED37
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777135054; cv=none; b=YkudwqFL2PHMPcdEtlGojmlMPZO5kiYqsG7xXD9oDmOc/tZNFIiz6EZkLC4jjMYln81yumoHRhwL2QpXzoj9OEihrCI5iLLTfndrEgfuZXevOkR+m/w78lfQnYYASuIaAIE7Sd+kib9+9g9pbqxrxkTtu3ikmldYvJJcKVarjQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777135054; c=relaxed/simple;
	bh=Y2+H3a54NK5DIJhNkTvEPOPhJzN0lqciohgSqw1KpMA=;
	h=To:Subject:From:Message-Id:Date; b=bCevTF9A8ooo/EKvaHMBCKDhUOabI6blcowLFBhh/lBlZ+IV4f4nRr5QuoyJPRBtK4nQ5Fhe6y46EnJiAgIn4kVyCmfaUFOAIL7cJ2HzoTxlOVwIzNMIs+VvGe4HgaVSjF8BAINWH+k24x+Bq4PO9bsUb/4Mxujf1RJo2zXGUOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oCj+jrH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oCj+jrH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD078C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777135053;
	bh=Y2+H3a54NK5DIJhNkTvEPOPhJzN0lqciohgSqw1KpMA=;
	h=To:Subject:From:Date:From;
	b=oCj+jrH3PLAFQfPjtFiVzACP6g2D+uKAo/O921B2YockROMV9gey+l60SzVjE9WwP
	 7SwVWa3mVRySSW6uVM0l09hz+krnFVTOGFKwQaHr1k4aNoJ2jlzMVwPs01/0F+DnJn
	 6w6rSS2QVLs/FmvSj6dE/Bx3ZkTUPvnqRhzcT0tl3tFhsqbORHixI69/RXhCNF1SHc
	 WF4AIypvB9Mo8ofiKIx3ubrKgcx5aLYqhnwwHJZDtzqhcA4KfETpsJ5knah3slDraQ
	 07GykBKcgIPvdOcafS7GmZoUeK0ky+rg9VsVqllmnqRAU4OT2Fw+BcWGJDvxE3TeJ5
	 QFJZDnz+HeWSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C37FF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177713505368.31555.14833457027139388295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5a893dde2b336ae932824510e9142cd957a55f153e28aa8936e6c4ef006ee7
Date: Sat, 25 Apr 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777135053
