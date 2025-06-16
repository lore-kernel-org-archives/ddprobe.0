Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4783208
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750100994; cv=none; b=lplFZOWs4VZuKRVzgKZ5NMY4v6aeHC4IVPnl5BxAmnFFlbN+54l9gPNiTSa4fleaDyYGGx7QAk6hITOHeQW7lFZGG5zqBgZ5Bm+J0qRnDtGNECH7cii8rfB/DPrz9hLj0wB/W5xhdeqb9O7GY57+qpN1xZbysjNKls7IY98Tfbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750100994; c=relaxed/simple;
	bh=7Pti1SuNvyWgxBZiLbMoWoDf7+tZo5vpfFgCj6cm6k8=;
	h=To:Subject:From:Message-Id:Date; b=WV1PeDCoYGVXBv2h1m7ZrKbgTx3rFh48Jkm9tinoo+fM6b6CWCsv0Mw7S3MnG0ewhmx8pRBBg1dET/Ft+Yl7hH4pjPt7gQ97tGx1gNG0ufndnsnT4omj/PaKxHxz2Cd02KHElTyzt5lsV9TQGDR1waIIxoyVVrhJ/NFIOOV7DU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WK9t6epl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WK9t6epl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87DBC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750100993;
	bh=7Pti1SuNvyWgxBZiLbMoWoDf7+tZo5vpfFgCj6cm6k8=;
	h=To:Subject:From:Date:From;
	b=WK9t6epllm+Yf44e0R/rs6JRVLV1svCF9/vkQh5H/UH12XqofKBCI+gFbb2aq9E/y
	 EJgB+spdS/ooRKPUAj+68tXMvy7iuPLsODdX4MWM8CvEL8UOS2Thbbxf0gpBoXLXi6
	 Lzc5e6gvWX+0vifi5XXl6s5XPVryODKUUSoZhExQO71yyXdWWIQurvsCpNzpzoW20Y
	 j+ggKDsCmM/5DWWX8aqvx87Q/Drw0zg1lk3VkL8SAjqW9Gc95lBxig+U+XvuLsVbgz
	 P9Nc6X1IEP1spVKRpA2gvuJJM3DnTPCZ7rOapB7NFwM4J5RW54DfdwIuQvi9zC5xkQ
	 G5FPWnXKZdvMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A3EC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010099360.28110.10848888384720206471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff0acba8e403aa3a16931d6d6d2ea02a4d9d56c17a716d55486ac0dc90621ec
Date: Mon, 16 Jun 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750100993
