Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7565917559
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 19:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718567303; cv=none; b=XvuKZ0/k4uxthSK3M7kjAZOmXGpnQ5MfnTboSBPqvMbzcPJj/9yQlZeyzJYT0z2ehddJ8e0sSxjQOTXFH0KdgpFlVpg+KKHTtHq/LH4cehOCLN6DiNhdelpR0zCKIIsRYQKeLzhA47Pv6w4lM3BcW3JY77c//tJZ5lm5abUYYU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718567303; c=relaxed/simple;
	bh=ikc2wOiPxm+3GJYJv/CWuqIxGm0p8MuzlBP/8H5xQ+s=;
	h=To:Subject:From:Message-Id:Date; b=JATIhPffcFaV2CuqZeriMLm6ZZDaXhcwbGz+CRtQVJImWv5ZtNW+qnM/Daun3/tQBGU+JYwI8sERwMSXpEGCm1JxpT5eJlKVlv2Zu2PQeLTI7Fo9MHWnmVHqjNP93mFHSFLumiqvTwiLrFDAiBMjYtDbXKq97tuCJhd5rxzg5e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q+Y8ycxo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q+Y8ycxo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D861CC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 19:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718567302;
	bh=ikc2wOiPxm+3GJYJv/CWuqIxGm0p8MuzlBP/8H5xQ+s=;
	h=To:Subject:From:Date:From;
	b=Q+Y8ycxoWF58nlQPCUJs2Z3tpVTlO8LWCxbK1dIzJN30LROEOhIe2LjavD8EqHZDy
	 5NizYwDI9BZ6E3S1xe4sTWFPlsZp9LFsbyuk3JzDYAQGLp9X1KY/iMypErkjv12cAY
	 herFMGXPl3fAgiEbw0XcetXKtuiP+MH2AhGCBO6qZROmo/bORIxN8Vv6Aj9ykwFTZl
	 LzRg7nfioz97q+hmCN+RQnuzx8B1Sciy/K/RgMTiqqoVLXUrpz52xYXkBWrTIdJWSK
	 RHyngsXEtYv08xU2TJR/F4LEzLcMzzhlNGt+YCgHYOfC/2VhACkgFMW13meZAny9TT
	 dzCMu///UCODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C104CC27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 19:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171856730276.30284.18442141728972960908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e435229971883f620c814f6742dde893dd0e02af2a16933382b1ca11fc0e80f
Date: Sun, 16 Jun 2024 19:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718567302
