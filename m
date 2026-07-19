Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 759C037FF4E
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784503114; cv=none; b=rni+x748Kc7U8TBUizohadFoodt2DcWts4YEcM3Btkg5+uWkl/gHV4qz88p/0W1VFk2dYCFoLKTsYZv0MseSzrXMlioeXsYyfRj/M++bWOHK6aro1qL+gw5H+uV/A6hmLwkE4L8h8NETPlrhcQ4xUErgnqd8N10uUgS+XBxY8nU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784503114; c=relaxed/simple;
	bh=PhtvMUPwIu5nzmEILPYXcrF/WE/Hj3Nx5BVQZFpaljQ=;
	h=To:Subject:From:Message-Id:Date; b=JccOveM4/ImmTfTV/8Qa4f/eSvH2ARvep8YxTLqKPwOWqcES/WC25vTVVKBqNFjjxAmn8W+kMPm9knDCawPDK08GcQeE+btZsjJ6jLUArn8locpxcheL4kyFdqnpo7bgWzK70OPJgPYiy6SYaXPAu+oNu4GOjd1tivE7JSv7jYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vzn+Ae7+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vzn+Ae7+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E370EC2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784503113;
	bh=PhtvMUPwIu5nzmEILPYXcrF/WE/Hj3Nx5BVQZFpaljQ=;
	h=To:Subject:From:Date:From;
	b=Vzn+Ae7+q6qSsq4/IxI+ie7gY3Sl6v4DHel6W0/flNtJsXPcGNrwjayTtxRXAodVq
	 v1lAPciPLG20TeipMeuFqv0mDGvWmRwlC+29bs9yK17ntV74I75DgmvMc4CX7qFw5n
	 cE+qBpY5JL7Bc2D6vZSXEeCN/ORbWD+/I8fh3tZHAl6h/Hk931IIwaVnzUDrPqTAt5
	 +sBcqHMZpd38QhxNJk4ncjlco9d3V00evXRFzxLTEccaq/w5ZGcAbX6rQnhphrpZOI
	 Yy3iOivXP8y2wwjFf+Rcz5lTM42IqGzBVfEuT480VaWgqdLRufC1+W/PPZJuefI3q1
	 JCDfvrLP0/BkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDCF0C4451B
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 23:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178450311373.24888.17657595012049051082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1402f1b1d3f3463f8175e0f7ed40c5738e9255b99f82a14920ea0d4629da2a4f
Date: Sun, 19 Jul 2026 23:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784503113
