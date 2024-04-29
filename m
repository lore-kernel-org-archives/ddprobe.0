Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606C8824AA
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 16:22:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714407743; cv=none; b=AusF79XVmuLo5Nv3NwcATLOVPm6r6Bmvk3X6JmxqGd8aDVf8UWheRonyWN9mzhrcepiTy4AeQIKtYwVx+yCbpZXL3SO4o0vqwu/qsmcMs4VEh+ZO0Hc6+rxt+PZqMaYHV+I+F+7iGoKg+isXrPRIGGTmxCYMYQxDdA5y5maa1rw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714407743; c=relaxed/simple;
	bh=3Nz+eKuL86ciBC4kYGYJMQ4wVSUO/+SPmVbxP1OgUhg=;
	h=To:Subject:From:Message-Id:Date; b=P2ofmvQbG8iU1njdBx32N4Xie4riOtEsQpuCaDYKrbuYvB7Gx3Y2PFwWtHwKbdF9yoPK3gDuYAy2JPK6vKORIwMBbHRpJBrNYReFttrxz37Cp9t5P9eOqDcYy+QWjHJPCI565rljTVXV4C3pvk7yqIWjZlGPJc0GRbUH+w17Tpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pv3H7Zaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pv3H7Zaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D41D4C113CD
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 16:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714407742;
	bh=3Nz+eKuL86ciBC4kYGYJMQ4wVSUO/+SPmVbxP1OgUhg=;
	h=To:Subject:From:Date:From;
	b=Pv3H7ZaqapWzJT1oCQIIWoxLNNFEM5MHu/XQTvxR6OzQUxMMiNj2iwUC4U/fsAIg4
	 8U1Df6hZPw+lpImorCzsgtsxiSHtPs8O32RUQ/yJrOtZHOwsFksMDQQ9ZqZHA2svm0
	 kLh4gHgmXxyY1popJb7v0SfGcjQb3PbRu4ik0J0xOUcTMhL6Cmb+ALCpgfvgbEWx2C
	 wXkX75J4HfSdEfECcVHctAbGG+kX+8wkiCqrTsW2GkO0cSHB1xmwWTqNUoqjUxE+ij
	 64+OSwKXutf/AOtJzaZJBnLkNIInEnzZ7/04e5EM/pglSUvQVLx6SvmNhtv9Ic/QGH
	 Fg6y1zek94Zkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C26FEC4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 16:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171440774277.28435.2107927818427778070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3dceb4c40b6e3751f6b5deedaeae28307894f2c988aac1649a0ce59e8d5d6d3
Date: Mon, 29 Apr 2024 16:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714407742
