Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5FE4690
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752389994; cv=none; b=NJePOZNBpAq3FQkIBeV0Nbp2+hTow/i4Kienf/rvDG3FLiAoQBT4fqhXIBPakOzOFgDqfZD8V2SPFT62UHQwi9mczFE8br8wAiN6HZ5ZAGmTs8z+ObVtgsBIZkHndOIryV71texdAoHxlVtVC6Nm8tvoHCXJkP5UeTVrf+HHO7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752389994; c=relaxed/simple;
	bh=4ePMatYjLUWZyZYMkISN2QudY68b6SN9UjM4k9jeDdI=;
	h=To:Subject:From:Message-Id:Date; b=klJsNNFe4o1yh7hQ7o1GbXpTM9l4p09lIB53p/N6KOe5uTC781qSyCmvEjsp6pGtXwJN+EqHQa1KOaKEMr0jfce8TVMYqvpI8ZzGGCZjP33s9U1ZX4YtIIgJ4zrHkilFy0APEJecm1+2Nb0bzYejiE4SXfKIGgo4R3lJSY5Sb8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VBgdNqam; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBgdNqam"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FEEDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752389993;
	bh=4ePMatYjLUWZyZYMkISN2QudY68b6SN9UjM4k9jeDdI=;
	h=To:Subject:From:Date:From;
	b=VBgdNqampI5mFarvI2TDMO/Yvw43SYwBkHy5bpioWU7ee1pehc3aHV2TA/CdeoqeA
	 AD28Twwf2uq8Fyv5+v7gCaD6Cejg7J6Np6mcZ9cNdyCrvrctkWoT5LkWh3JjUzkNrS
	 Yq/+5+TLfBVZpYYGjkbQeT/k3uzYdkJYz4U9kpBH43o1fZy6zwFIbVrIQP1jfn0GWV
	 PqYx6MMlfrrzkK9779CSqC+FfR/xvi3jUy0a4jPPV8xPoXLwD0rzGjkbTrOMOneq82
	 rNosFcknS7FJRd0E9gu0CjYK+K7KGVyCXX6fDJe2bDWYzGdYsOdyLDTmQ25Vk/1VvI
	 etQID6YSDm4GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917D8C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175238999357.8353.5471326348441313862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc62e5b62c4539b304c10e958e984df023e4f1b7dd870762fc208deef07211d
Date: Sun, 13 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752389993
