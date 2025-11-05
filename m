Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0AD34D396
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762303794; cv=none; b=nc+IPKY7ikM9Wq/eVg/2mLVrw2xYYlBPMR/uJaFDPrrOWxz6Z79EMW5Cq9OAJPJwjSjB92V2afRZ465cRtGp+qDUZPRxfsx1nUnz7ZiCQa0fGQ4grzWb+d01znE7DDLZgRCPxvWWhWHbfoXB1EQMjoZ8p6mTpfiOh0fsZVemAcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762303794; c=relaxed/simple;
	bh=akbusoenI4GGXh0oaLogL8E+bCpp5CMUqgJWRG0crqs=;
	h=To:Subject:From:Message-Id:Date; b=d1cQEH8sXj9WiSdtozdZ6wMVHQTopn0AxXQcBk4EPMPhWNXIu3nTpboH0JzSbaYnwOIswgfKYQ1/4EZkUk2jAAcKbgOUmagI9ccFzUG5l/uTJxuIa+MUGjdGCrHhfr+hp+EvDKdN/xB1BsbCGC0yJXuwDTLmb8BLsXPrMarIs8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmXkbs2z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmXkbs2z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D4AEC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762303793;
	bh=akbusoenI4GGXh0oaLogL8E+bCpp5CMUqgJWRG0crqs=;
	h=To:Subject:From:Date:From;
	b=lmXkbs2z8584DunrRgiL20xRLUjLP5+nE8fssbMDi1uQKex0j0Ljr/C/Kh51r9huw
	 7lTFoKbNQJeIfBAsOwcn9AUjH4clTPYfSqyeemVqVXbfPnbKp0aNxHQiqrC3RkzYFg
	 bdT1GjZKLkQBMtOXBlGeWMeLXQDJVwbp5UFpgbKzaTw/urlhA7Jd9ew/iQud6DsRO9
	 V8fsuqoCxbkW+6nELY5PybbV8C14e50ee9mgcrHsrX7uAwwr7KGkL16DRzkwHhKj7c
	 y7XAdEmDc3xxusw3N+/nZHb3HjwGcEBmKh0jGH2tkzRm3LpL8h6g96Br5Pw7RjplE2
	 +jQwhI4cfKFww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC11CCF9E3
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176230379357.22768.5416133719674988240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed625bc0fc6293ca9a1e87d134bcde5d0e4f6d59d82091bb5571946ac464d452
Date: Wed, 05 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762303793
