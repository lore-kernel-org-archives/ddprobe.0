Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5DD4A0C
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767830634; cv=none; b=L3EZnElBa8njwIps3FxZTCkS0jD9K7us4Syt5aS7LdwkjfvH9iQOjDhD+Y3TS5I/HgVJDy3IYSqkTuEjrQALCi1cKGOr1XAA8yyxjPwWD905tU1JxkdKw5vvqmSrtlgHG2D0VBYfsMqcxUwEV5N7b58A4im7igB+3AHqMkMb4Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767830634; c=relaxed/simple;
	bh=Vfw9Xi2AEx4B/L6+RwYeVCjuPs5e+/Gyjf6qeHajVno=;
	h=To:Subject:From:Message-Id:Date; b=cmh1ER15+sEjwhbaketa83h42bFZoGkY1HBE6BoYfKmszgniIgv/84ATuGfNyAn6KDKmjdlLTZrn1NYn4euSPCGZgZ52az3iVEbERVL4mAMQhZZiLr/VMzhNo0UenqdMaVa5hioiWStih6lFSRjfxaGwqd/uio6ME6JzXOzVrKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUHWmsgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUHWmsgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41CAC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767830633;
	bh=Vfw9Xi2AEx4B/L6+RwYeVCjuPs5e+/Gyjf6qeHajVno=;
	h=To:Subject:From:Date:From;
	b=oUHWmsgwJHjU4z24gHBwMdqoLjC1gyWgAMG9Jyg9SfsrF7osEAFiZKtUDmqaRskh9
	 z1tDhZdMmsaNk3yWiElaMBKe1xXE3V9NU8h4GtQDNYWVl7biopStFAOIUB4yOhNPFS
	 NuqBYESuf+oyu3QDaAYTpjiCXvqnnYzB/7klQDhaznhhE0LQuqRPOW3tBppJCLKFvA
	 Uox+r0SQ0YwwObsXQ6Zt3O+K7pjgjWKbVHlk3oLbhRemYa/yph7yfTkNJBmd/c/t8c
	 4bZiy1HiNF3FcB4wUhQP2FpGbrmbExI+UtAZNNbZG3ls6xpeFrRko0VH6v7QTvmKDN
	 RR69eZuEpecfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B8D0D17C
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176783063357.32320.5226174765882321029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf255529ee24ae49ed64b13b4e2ba0aef5b0e2e9a21035ea5e74f46fb1c3051
Date: Thu, 08 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767830633
