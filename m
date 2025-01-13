Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E62D749C
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736736954; cv=none; b=q4tLm3WVKGvndeB9R5X3jDfCDQ6M2nw5jY+t7fXH0mP88BAYJQoNeFLfhv9Wnv5GG+3HGeqdQ7UO+xEfjKVQYeZ2kDPLHYc5DxFxk8sRLMv9XvmM4NElglT1NrIVY0MEa+Ib0vEkcoP2blzVn5DSfiAPJlW6Bg17TDZ3EeGVHwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736736954; c=relaxed/simple;
	bh=IfI13eIPZ22i8vgncwX4apc+CYqlTzuJb7zNWijmiHQ=;
	h=To:Subject:From:Message-Id:Date; b=eOkbHPSGrEYTzVNjWFsD8D/HNt5Jk0tuiIgbOhuDr6hy0KVkPEW/WGpak/FeeGsSwiM+gs+eDwcETdgX6yo2r0ctNtXxCKGCIiQse4LEhqrMNDTddjwUKHUs5yWO/YFG3v8XMbOH6Kpm94ImQdsK620tsktrnD8p162iQBi9QwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=my691CNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="my691CNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B10C4CEDF
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736736953;
	bh=IfI13eIPZ22i8vgncwX4apc+CYqlTzuJb7zNWijmiHQ=;
	h=To:Subject:From:Date:From;
	b=my691CNsJ3phYCYPgKOd4LFLAbLP3CUvRpZEdTwOIWY2mG4D4PYdGKHKuMBUpRkKJ
	 07fMOhITPivuwSQlorgc2s1eH1sv/6SQsGb1wntjaxJsczvbZHeXbVeMpcFcJPQ8wZ
	 luVmxHI78nmUdbUQ4/La8FpKzU57IDThqgSKRr4fOqF73jDizJ8ekCaS2rhrjFLtTi
	 oINwSzLIGMumFAiOOHxFCN0H+a2rwUfU6XH6rl53I2XfQ78sGNUGGIbY/b+RXoq35U
	 HA4koRkCzJwkScYOMhZi6UDGzBwZIk8vIKiCTMvMwrbBpSM/dBMM7Io9MTnssF2AzU
	 hzI4K8Rqk4iYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93526E77188
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173673695358.9164.80518734892684836.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb190da09ab0288141509301a60b8418e1a0fc9c0ecfeecde2d79e492897bbe0
Date: Mon, 13 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736736953
