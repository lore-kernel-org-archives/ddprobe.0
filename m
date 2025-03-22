Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 395CE2E630
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742614194; cv=none; b=ZBupwi+MaQcDmZ3OL499Mqv83fhxyNWEGiWROCjcjrdwxpfrZRvRnI/dO8d2tdmrg4wR0k7jqL1ZS2ElkWmFgfq1LrbTojjs+cOJDnRN7PEz5REzGLxt4Db3/qFj9el4CHDO3ml3Mk2+t30ayFxd67ajlqzmOu8kw4itv7UYxu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742614194; c=relaxed/simple;
	bh=6N6cWuuTp3Ev6CrE3tJgU1OdXDmDEwe7dFiF0Akzg8U=;
	h=To:Subject:From:Message-Id:Date; b=fZZZ6WI/1W/OdHxnCNHysTnt2o0xh4u/m4JggFbSjZvboJCnU9YVVZ7eUvae8x380US1rpLDurjFnmVHLQi9hI1RMHD2E2uuQajyhRVCrBSI4WQ/4D1rFj1vc3aTaC6yTvJyT0TfWaHax88Sksj6VJaihsC+FsMWIOt++wVvcFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9OLJMeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9OLJMeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3AFC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742614193;
	bh=6N6cWuuTp3Ev6CrE3tJgU1OdXDmDEwe7dFiF0Akzg8U=;
	h=To:Subject:From:Date:From;
	b=Q9OLJMeP8xsplZXfN/vS1y2lwWrPQOQ4oOE+bWFzuVPQgguWGVHnqq4MEaRRGKDKp
	 pEdxuIlQkzq8WUtWm5AfBHwM05sSS4+8ojObnHEA4RNE6GW3Zb38+y4nF5Uk3EKEAG
	 F5kjotMvH7/0PFhGOFjjZsU9RQ1uW70sYxRZptsKgB7tBHXy+AAQMRC51PgeioauCt
	 bPbosDYQMGVprcWxY+Oh7g6kMCLWCT13E7077r3w//bFZo0AtIT34dHp/+QQUYd2yV
	 GMHs7myVylGlRlgcSU4g4O+0RGqTKz3RyMbk4kvFGrkvVY3rVf1cnQdqoZlRWniIfx
	 k7xrd6NNyd4oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FBBC36001
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174261419359.12421.13326482754700804138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285a6d5c7f7a0d5b0d3a9ede1011cf8720145901f9c7d185a4ae67295c4a038c
Date: Sat, 22 Mar 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742614193
