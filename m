Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427A76FBF
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767486834; cv=none; b=kR71TjMWtn2gyel/hwQAy2IoL/Ymo5tdX5HxPm2b5uFrVvaOLy9j5FFJhp8U8o4aB+7JMV1f6hyX120TR32f8EZnZRSGLxEuj3LDJPFaWWqgEVUNvpAayiCZ/Gm/WaZMA7Qfep7ukLD+B1oOiMoBfUZURQzpCSOPiM206KFw2hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767486834; c=relaxed/simple;
	bh=YpytHURVE2UfXDfi53VxXAN2G9MfnSWpAiOpXgLHtJ8=;
	h=To:Subject:From:Message-Id:Date; b=KYK0Oes5mqhnxJ9w3aQ2Ba8ViTNiSgYLQxrBU5RCx6vo9+R2ybvuVcTLQMi0BcUNO5GGKAeIHb+pD5Qow7AnyiJXEwRa0hCaAJsxpZ00tBZja+ptELOnxS6fiteY0ibq92X55Qev87GJ5PqbyIrVppAPE3tGfntTb0LClS25MbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8C83PnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8C83PnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5706C113D0
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767486833;
	bh=YpytHURVE2UfXDfi53VxXAN2G9MfnSWpAiOpXgLHtJ8=;
	h=To:Subject:From:Date:From;
	b=c8C83PnW8ViBzqHLWf3Uuau6K1Ab1zGCH4Ux8j1Wh2AIQvAJA0dblrUsFUQvLWPdw
	 25say37Z+vMFXzFtK7qmd7fMlzPCZxd1rRyzx203/UARhKmdoTvzJPzj/IGP1JlqGI
	 UcCCucUOM6OjOYPtxwAKRTXXsJYWrfvBSjGD94HdJiYziCYtGJ1i4+MskzUAgceyT9
	 C/UYpo198o4cxGEMp9jboK8AJ3UGLxoIaZ9X+Ct0asUSUp/7ZzkFJX6RoZJ50zR4ee
	 M4s87x92xYyVDXPl1PaeklhtA0DtiOl8X63Y1oBftt6cUgBrgb/sXyrJg2Ul/+dNnB
	 g96GCg6wO6FCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9171EC2A060
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176748683357.31010.6897962899196840312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a55460eb34de4d54a8fb9c3874dbf8f6fb47962125906b2c10da009d96cd7f8
Date: Sun, 04 Jan 2026 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767486833
