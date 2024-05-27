Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D5628370
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716789263; cv=none; b=WxqtXdtEaUa9r9ovgetFE+nmg7AqdykAMR+63RtQ/zfuOoupvKop8Dy+KOuofmV5eQdVJMxA6DTv4et76LRtNx9ZBqRtt6tBJd7oZ85C+vjkEHGJIoZWZe0RKVlztawMI4uiXxaXRSiAGcGoZxTVp4vsidRXaIvC7qP82m/ydIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716789263; c=relaxed/simple;
	bh=JU1FBDy+kHSs0HOORdXc++dKmipSJuG3tr7gM8jHj+Q=;
	h=To:Subject:From:Message-Id:Date; b=SERgN27wp1UdgZmWHhw8xkYKmHIV7JPYam/Zb7b7fMFiYaYYl3d+gPR94whOifCIKEWgVh4fOfyf8xCTb82nrjkgp+RVsmZ8j/6jY4L9wQ8hTMXdHecEX/KmBQExlMt2dOGGYaRM7kQ4UJ23MK0ECAxlqGxNSkF7pg8xDTR5F7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H5CTi3gu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H5CTi3gu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA918C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716789262;
	bh=JU1FBDy+kHSs0HOORdXc++dKmipSJuG3tr7gM8jHj+Q=;
	h=To:Subject:From:Date:From;
	b=H5CTi3guFLeFa0VaNCd6EYauMe7+MAXSw2xf869VmNeA2odG+a2+M4Tjzqcgtj0SM
	 9svTNa3Z2D8Eq6Qodp2p3K2VtevOLYIlcbEDg48lYcSGzQlgcx7+w3K8Y4Cs54OU+P
	 Xl8Gv3hZgEguVv7BkLD+zTFWUUJcJF1Uvl4Lar2Fo/fSZi1kEn+Hyn0E94/3FG3Yl0
	 UQBcGhUEyCwnjZWHnCAKTok7LHNjMb/sC9Ptdh+6vKCGtsvNwbXF3AOdDcQQETDwdC
	 /KpZJpewL0EbsTbj6+Wp/d8xVJe8ZZcoEncU5bjBNDNOtTawSD/ln/Hqr69Y5c+4dR
	 rsMCYNXVTHM/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5AE2C25B79
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171678926279.25289.15437897515842589572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 779b795512de8bd44f69ae367ac874110cb9030809384e7dcf6f1217404be8d8
Date: Mon, 27 May 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716789262
