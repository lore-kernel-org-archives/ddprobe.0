Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6538D2D8DDB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791727234; cv=none; b=VqZMnktg/yy7w6T+/7V3xSsX82Qw8Wiua8fBR9oYkat7TezbWo/i0N31KDdfJdhKrLCk04AL6PpBAG77SCIrep9Ga/9BpoPSsG4yNrH0tvXIqIh1GZy93d0Qxi9mfKAimreZ5UY8xZdwZ7iCSbclIXKEX1d6XG9vLtXvg768pzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791727234; c=relaxed/simple;
	bh=hGTGALqhp1luQJaUw6vcscLQKk9ejWo5dFxaJ0r3cvE=;
	h=To:Subject:From:Message-Id:Date; b=XgMGyAPVmvaB570qElOQUCkojjdwRDMSxjQtwFfaWV5UgATyaLjxgYUc+/eN630trKWsRxN2+rRic0NxW7HTMpDENYwIzSDOBaEV0kxVhyhSIbCAd2noUMsPGs6P+jKtqKWm0ekygMEphKlB9SvP0gqIkpV8wTwHQtCQT6iC18A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKFxxEvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKFxxEvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25CBC2BCFB
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791727233;
	bh=hGTGALqhp1luQJaUw6vcscLQKk9ejWo5dFxaJ0r3cvE=;
	h=To:Subject:From:Date:From;
	b=RKFxxEvVYGTbw8VGcxjlZ6IiD0C2WYvA77Xd2+vI363jMAijfGi/8eDcq6Wt49fqc
	 or6OOg67gSVq9nTf2igq8i+hBiB+CsxYy0xjlLSh0wM+auAq+zrN3Hj9dZuumWy3qC
	 OGUc1fU7kqXYe/ZRj29dLkYDhuvRDUJnlnjc/G9pJNIZQWIccmdLntLc+BvUfjbxdI
	 8fjlDZvsvIcDmzdPWowpsWBg0PApmMPqLb0TwPtHtTySLDs1r8y6j+bjTetW1q9i7N
	 Us7oEfrPdUy9/wcjFbHok1kkIeVE9SnI8vNCW/EX+2RBv0zU5UJHGtRe2++5OapO/j
	 cBZvzTfKLCr1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF50CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179172723369.3950.17976616128748010476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47fef2f648195ae4c062d1ce36fb3fe72182976b3c40dc0513e33ab07fb6caa0
Date: Sun, 11 Oct 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791727233
