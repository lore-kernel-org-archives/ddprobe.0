Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB20739BFF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778627433; cv=none; b=r7b6bVSAS4+5hmi4ju1H3g0dRqyY1le06geNtnpIfmyh8onviae1B9ijpA1aykqP2cdkCmensiFx8PC1rM6u1yUi7Oh+ybc5KSo7iTgSlKfIqzvNCSCIAC4SMrgQbJ4P1Gc8I9sgvRx7ugIDCt/TSyrhPRbVRKDDQJZ5MQkWIog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778627433; c=relaxed/simple;
	bh=2WiAfwcbjcMNocR6vy2XhWiCqJRkodsvHvqkihHvBGs=;
	h=To:Subject:From:Message-Id:Date; b=GHBoLjiAfa8UhRAaWhXx40+A8OFZdf62HtBakJoGOQkCeH0l6yV3wHlqnVqJ9wPQ/RsxLF/wIhGp4zIDJMnQqB3cQREz4PjkpovGocWXEHxvAuQyYd11RyOQar9VNxBTwz0YVR2PmrnyzB6Gz7VM27nSCQNnJcXKoEL8RfUFUsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMCdrKte; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMCdrKte"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB4A0C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778627433;
	bh=2WiAfwcbjcMNocR6vy2XhWiCqJRkodsvHvqkihHvBGs=;
	h=To:Subject:From:Date:From;
	b=nMCdrKteQ9EwDgddhkaFsvUUbM8P29HB5ByMSVw5cW60OWPkur+FYYAhoxggyCfgE
	 LBrjmsVL+ZatEvmdqW9/TinYtQpWqLiPD+ETDprIUIzdkDYuPpzarGdA515xQpTsbD
	 jXw4Cr8e7y7CzfuNWym6J5DME5Smyl8LkJRnXn3pyDDVon/Gm+84pP7dGUS7nCwo5e
	 hUF9Zb+/V9gq2pZb7RRDisQMSzld15oLGijETWOP12rXPsrUZXiFhXAN+ZUJBaYqB0
	 rLMrisNWYZOXFns6ZNKJiaUWlfTeOp7/zvVQtfQUDb3AnECBkFgNS0lXEdntc5m6mJ
	 BG3w0s9/QKqNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABBBDCD343F
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177862743369.28657.15402499884927709359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff09947a1e5ed296010ae92154e70d4034215ed9f7dff4713566534fc3be9bbe
Date: Tue, 12 May 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778627433
