Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F0F2737E7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765738974; cv=none; b=VjC4mhaAeG+Sr1VUDZn7rcdNNlY4r9yUs1ynilZfGoQrsmDwXrBtqURMpG/T5Xq5doRW9hL9YMNyDJf5Q93vJudAM69kFgls7nFKY0JuMsww7Hrvp9Gr3YJlYMTlBrv1Z/HRqTW7DfxHOdP+svgX8dxUqMym0nUivi64E6F9FCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765738974; c=relaxed/simple;
	bh=1FtjshE9ahXse4IYxxGqXRTrkXdGZzrHvWTOBzbyCs0=;
	h=To:Subject:From:Message-Id:Date; b=J5dMs3wISAR2eKue+SMjDPMogAggfOMUberh32uQSAUVvgTV9B8znThyvOKu+Ht2ELELwqiABaa8fCEw5hy7A3IeBFU5uMEnDsrsEOHc537s6GNqHoxDxjs+zx0y7rw0HY2MawD6GNy5i/2qu7QiL+mctonGAj0Wy1y0gUO0Bog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXhQK60b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXhQK60b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CD7C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765738973;
	bh=1FtjshE9ahXse4IYxxGqXRTrkXdGZzrHvWTOBzbyCs0=;
	h=To:Subject:From:Date:From;
	b=SXhQK60bPWlEY5a6sI2faoGNpeIJoDiOhDjNvtJDBiRGi5dyuxcruixt1+pVO7rpY
	 eBOdI590WykM1o1qjPORDfEbobLmZ7jQE52qA6UV7Aaaz98dpsduD1m/2evVC0jPyi
	 wUnlt2Qkk0QuLRYLHdkV7TTe0+kK6vJzBTOhedn1Zj/BSSYkzpBIJnTtZvNYrKy/X1
	 UR3wsHVSsaSPbap/cTeXdqw50LpcldN5fP4YgQCyaqqc63bFsgqqEZiJdc5dNF57Y4
	 m8u8xJ5JsGPNuwXn+IVWIwtffB7xoMF7gp4KkBYVrG/nSprmoNdd2ZkvXn4fXgELRD
	 /HKx7m9wRwvbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90701D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176573897358.1018.15530162955800192755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ca81d99e4b8836b01fed2ef945e9edf14cdf40dfc65dd676a1bc6ff526da95
Date: Sun, 14 Dec 2025 19:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765738973
