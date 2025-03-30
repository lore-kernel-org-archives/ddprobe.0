Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46FD1F9CB
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743322794; cv=none; b=COTvEs/hv2USbMZNy2y6vczFDY4NyHVepnvmrgUPO8ueXMmjGST9xrpXVExSh4KQCJnaUcq9Na8yyANW9sxCv7yalk4zIj6vOkQS4lPqIKhx/VkJMt9GyVXlecXVZ9hT9NHyylu+vb76YXYfXabSkqo7YSpxNzbS2wVXRVru9/s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743322794; c=relaxed/simple;
	bh=AmYz4ouJD8gcLr7MWkvjtJsUXSr96hwBFKFbb3P4Dl8=;
	h=To:Subject:From:Message-Id:Date; b=Di9X3ZtSf7QjqIdkCqhOMPsFSoRLf08R/rNQYtmu5kk6d9wj2MJdg3MCYD3GxKdDXpcqQcrjSS4+9lEnoXCL3zmg68pJdo4Na18JLglKiiyfr0TXO6SogoH3UDc8ZbtGaobpPtgqpWmAq0vJ7gFn1+C3W0OgTqZ6xS6kYz0yohc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWAblTbo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWAblTbo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0DABC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743322793;
	bh=AmYz4ouJD8gcLr7MWkvjtJsUXSr96hwBFKFbb3P4Dl8=;
	h=To:Subject:From:Date:From;
	b=IWAblTbovTWyucpYMgGc63tl+njeaOUEwzjzQBJK/tuXglz/G9Qf1XCgFwxTm/JnL
	 EonGD9En9a8NWUw5Ns2s9Gk9Ai+zvQ2D0LathL6YscKKxjj0T7RUkKzptEEyfqpLGJ
	 zT31LA2vJozMkKJG1ixiTnCzca78QbL4fj/mrRDA6wNfnLRJzRFSJSy0GkihxhKYEs
	 fUbMS8GsnXUnJwi401oV1Uo5N2EsC6czoDS9uvk2O81i+bMtDHeU02AdWqcSPl9L37
	 /YHeGcP3/suAO6vUggqlrVOG2EFAD0MLxqC0NkUVSg02DuZyRz57t8w9MFckq8cE8N
	 5i+lCgBV4T74A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965ACC28B20
	for <ddprobe@lists.linux.dev>; Sun, 30 Mar 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174332279359.25947.7222357632799798585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddee197b2c8f7d029caf7fb594bd4c7fd921f7dcc74450cd045c1a1c0acfb333
Date: Sun, 30 Mar 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743322793
