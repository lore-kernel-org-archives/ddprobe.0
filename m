Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21463203710
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780440874; cv=none; b=lirG8VenPFietJOoXFdziCjISYXoLgC3Xnll1xb8TgQn5eF74IO82Q1pPjRrFJ2E/ZZIONLCBBjB02jIpXVLr/gdUba0SS9rCDwgsFCpxhFQqgcDWgKixPgruj3PMwu3EsTZ6WiRaEMUHtZMgLcoobWxJ2lvBh2wGUReSmJzEmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780440874; c=relaxed/simple;
	bh=v8Spp6auWgvT8Gsmuvn7Zu7Z68b5acnu/fTP8YtwAD0=;
	h=To:Subject:From:Message-Id:Date; b=O0dRRUO96iW7hNyYED8y0v2EWfbea+pNgWq1U8YTv7FrqwZUxA6y1cclSNnzZrgMfnSvpC1yvU1LEunuiapw9JY+2lAlh4aJyEpeZqygevcVFkSGlCPckKrq76Wy/EnNWg5blSmVbHPhOFXcsgEfBi1xGS4kiu8rcGCErJDeYQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNz4vZUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNz4vZUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7109C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780440873;
	bh=v8Spp6auWgvT8Gsmuvn7Zu7Z68b5acnu/fTP8YtwAD0=;
	h=To:Subject:From:Date:From;
	b=VNz4vZUrG72HsiHMkouQ3/L1UpSZazvqCBqGkPQFfKw2/+7ZkNKfGzIakt4yKn7X0
	 IGIMYpUq+I09Jmlm7xVLaWVRHVp5keO7tbmBshZmfufenDHQ9IR/GT6gw3iv29vYSu
	 jUMMPrGo8x67Pye/KDJlLuo47LZZlY1nQTwM5vArnLQuI14Sod0719QYN7Yr/pmldc
	 Os9ekm84odw3C+RllwYhVLcPWfIcmHZSL5Jxg8+UcdL/38rr2q7r4nDNbJFPYrzlBT
	 wOzdoGtvxHR083WQVoDgbPV0R6lgkrHdeHmrTcmrdqlQfaHcRm/0TDnp/NpRLXPg1f
	 l25zgPe5Lriag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9843CD5BD1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 22:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178044087368.32237.8893046287716248343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6706ac1c461acb3ef7c27342a56263500f6fd542081641844fe5718146c9526
Date: Tue, 02 Jun 2026 22:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780440873
