Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E54A3FC2
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736814954; cv=none; b=SHGGO5XsFtxT1ZXI+LmZZULeLRTbXNjoJqSvZC8F+RUvc6K1lPfqH9tfyZrzwNNGIij4x4fAlB3QwyATsfJ+8/VZMBtM+ml7EObDsscnfJREGRyYwXIPobUJPwatOgXhKEpu5x4MfEKe9CJuzdD10YrYZ/8AQ9rL1hK2ZOjUbXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736814954; c=relaxed/simple;
	bh=BmY/CmCnYRYASOd0CbRHwSyE16rCJhxj7sVchmpCGBM=;
	h=To:Subject:From:Message-Id:Date; b=eRUqVCyifKd2TGN19liCovLbETxjg/hc92WTJ3juwqNpWGCHsBObX8ghatFIOCImzOa1l8PMEEPw0wCvjJXMmDNwuXDB1ZyIhxIjgJIKXUo9jEd5TxHxOOnp6hGZ04+d+aXxdl/ZM92aathrl7KqQ23qOgC8zCCIBZLOzPqa/lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RLjdq8vW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RLjdq8vW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F54C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736814953;
	bh=BmY/CmCnYRYASOd0CbRHwSyE16rCJhxj7sVchmpCGBM=;
	h=To:Subject:From:Date:From;
	b=RLjdq8vWQN8W5bNGfiNNaFb6jUX0s+Q2OtCvDi/WdkDBNaGQg4Yh55GunM6azGjzX
	 ImCQaVKTQjmgSbyFpHNqXtOxTXVH3qt/YmqLCw1/8GCTd1nfa0dL351BElndvSHVEI
	 T8yoIJ/jTT8jnsgSh6dLRfw2E1g67ZadEq1t4EsnkhX4nWeWW/FpC7nhkPvGaJI3Ji
	 jOIV4IpCS1X2DJ7qWs6rfhqiGnkVxNyWSa/ENUmfX4kVJaT7pwqN2JUI32c61a1M2K
	 bGutlkvnfWhA0Du+LYA3xu0FHtnLm+2FOhVhQov+iHu3u2lsPeJru6Fg3rESMjtVrd
	 1K0PYNFEPOMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906AFC02180
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173681495358.11876.10430715797985355308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8783b151345a25a611a9653ddbc15cdfffbe30353c11aa4d29137e74a8e71210
Date: Tue, 14 Jan 2025 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736814953
