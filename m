Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6701D63C8
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 00:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718583503; cv=none; b=iiigDY5WsmQWpxf+++udFTkOzC1mOfcV1Jp3UJsMDpZuBnSORE0+y9jIiVCs+khIhBVHK/dmOkRsRU5/08ihjuMKrQDqGsP5Xo9JIzIsnghxuunWFQfTGU81/3XVfsM+y4jCgTJ1uh5HQjz5P1l0U8hm5+w/oiPE0P/yGPDAP3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718583503; c=relaxed/simple;
	bh=tq+3EUqvcUHKZkWcMik7Ig0W0wM3EQucfCJwSYcIlbs=;
	h=To:Subject:From:Message-Id:Date; b=dHR/jZ+BfSnbCwc487J/eesMdiX+F6lEK3rh16X9mWF4CM2Ym2XocQcAMXkyetE/GpEDhqQNK1fzKrE0chGMGdwCi7KnevsbJnX0lKJ7Qm1o+OuBkmRrDwpJ9OAJzqB+LDOvCLj9Li5paPZun1GoHiRB3Kr1ebpNUIXjy2CacTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuDVWtCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuDVWtCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BD2C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 00:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718583502;
	bh=tq+3EUqvcUHKZkWcMik7Ig0W0wM3EQucfCJwSYcIlbs=;
	h=To:Subject:From:Date:From;
	b=CuDVWtCGQEFTi7O8XsT7hVx/iqTLCdevInLDW7lvwrN5CTK43yW7gbbvOqotmy2HK
	 pCzrBIOTWYgl2xr/NvizBgPHBXjO7VsQAu7uJBggpQnSnpeAV9VPEUGtQS79lvWCkO
	 rkRY7dRqPij2bgpq3qbLr3g4T959K5P9KdnViJgzFGo3g1XyaqqtXqzW927SQfj7qY
	 6VOzUgD8uyfQR8AZQRw0hCcSu6hY7t/7OGSlpeDccDJGRE9NzwcoUcRH2crOQdg7EA
	 aui/4hrdmjyx4/Xs1T6ZU7inppAFNNvYzjBp94QEgywcldS5LacrR/+sXjRB3KA6zQ
	 KkEtSVR8XJhXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C335CC27C53
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 00:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171858350276.30850.7376625935874392757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a32ab1090172fb275478f60f54292cb3c408b50df78a93ecf63227836ab6c8d4
Date: Mon, 17 Jun 2024 00:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718583502
