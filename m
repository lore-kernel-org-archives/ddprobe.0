Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB533C17
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771644294; cv=none; b=ixbWnsBb9u2IGWMqrtc19YCyq1klGrQC4kz6XQ41wFGzYkPdLCuWvK/S2op9pBv/2S0612t7KcYprH5tqEnzsaeuAaUeYOp/AUnL1pJa7CoV0lxU+twG83+5s6ofzhFAsNuMugyWBv4rSj8/sn7UAyHE0QTEnhemlN6JndlLO5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771644294; c=relaxed/simple;
	bh=9PRtuv6RHcroKRcjyeq73OQFoqZuUAY0DjE39PNbIJ0=;
	h=To:Subject:From:Message-Id:Date; b=RXBB0uvhref9zBxJOA5RZz0kuuU+7kRbPGc587j7u+Ucz9fqzvBaSipT3N9UmI+iTNqyFRGNYz94hJQ0qChTNpiIPGKHSVgZJG/y6SJdT5834p6UPJU/WmkWT4u5yShgoKW1qT3c96OK4zQapmFukjX6XNTwvebUPnhiBH27Y7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jq0Ko6J+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jq0Ko6J+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58B4C19422
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771644293;
	bh=9PRtuv6RHcroKRcjyeq73OQFoqZuUAY0DjE39PNbIJ0=;
	h=To:Subject:From:Date:From;
	b=jq0Ko6J+7PzetF5XV1tJ1M06Qk8Jo2i14Rf9yMdsfwGy6PPVVsQos6pQD4k1eMF4n
	 BxVKg9b3VLKFqHzgKioe+icHjoeo0EdHyux6f9PG88ioSyfk14RmA9q8Ntse7nJv5H
	 qAuAU6Ljln9XxYEAB0C8hRb/Znr2xPCqSdq/yn+pL8Ltz6FgtgXpUcrdi20RMHS9mf
	 mp7O+spR2Ua2UIH8rnvqc2POvCYlwlTR9BJhtOAvZtCusqQ/ShHUobpXOuOvMaeEeK
	 GxGJQ/pprUPoT4XuewF9sfoA3D9Q1ZneMF0UrfDdKlumMzp6MQhY6I1VcB0/55tDaH
	 1d5I6QzsJi6sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A295CE9A049
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 03:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177164429358.1479.17440776610809790796.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b2566abcabcaddc61205fd76c9bfe95981a492bc0b2f8b7e17b5587701e4736
Date: Sat, 21 Feb 2026 03:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771644293
