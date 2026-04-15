Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4563644A3
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776280054; cv=none; b=gN/7dU2J65u7xgxtx3Fk5+Xn4L5wVQYgkTCbz1PL/p2WIeXOC2nYkvajyz/tq30FUQFl+U3Fl3ta7CiFJfE7s/WoUeRcKTtn3qjLkOACgOyiVBcYR3R9uQg8HSZxnKsGCB0RwHRiCuYSU2Vr0RLBQLNnQyqbLmeXqBITw+fdXUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776280054; c=relaxed/simple;
	bh=XscMJfBmV+TgO2z6FfsH64fgDZz/gY2zKpR/amvfJNI=;
	h=To:Subject:From:Message-Id:Date; b=aTIXA9t+G52gs5tIa2VAPeN0yAXA3lj8GGf4EFRphM/dq7z0jr6hHFMh2gFxEBGNFMWShtqb7JtfG90xF7DdtX74WlmqzRLtBdt4Tu3kHYmxvBEmAMMBXdQc4xFWA0YexKtgd5JKneQ5pJ+TUEgkHDcUMCc41WG4Zzt4FHsJTnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pa2s8tY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pa2s8tY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B64C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776280053;
	bh=XscMJfBmV+TgO2z6FfsH64fgDZz/gY2zKpR/amvfJNI=;
	h=To:Subject:From:Date:From;
	b=pa2s8tY/uttzd3wZAe3pKNMeygeMFqCNrnxsVUZ0xN4gg57sKvl1Gnu1OHCKzs0Yy
	 eIR4AggJ4AuAvpdN20Wrm1bGGOKeDbnsrZo+0yVrfs13QgZKQ55vr8Wc7EBmrFWhVa
	 +iM43BLXcsH4fgnsNS5blfxLxUTLgAmVh4zPViVcRWVkRJFjm+RVgiGZNWHtnJc+Ay
	 lkKYaSrjZwhieGRHblJl2a8zPaCrZXymYvAZnaPksSwqDQUq9F1PQlFGYyGPrWr9LR
	 VtgL7Oedjc9p+Qtj7uZPSCoj/X2ldgjETs45bDpf1Z6kd/JbapaMdwHT0/qjjrUfeQ
	 5amjIPxO+VCUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE82EF4213F
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 19:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177628005369.23866.8964166465285189651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d2e7b870fec597debda83a65227e75e3fce0628d49d4890dcff75c581d5200
Date: Wed, 15 Apr 2026 19:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776280053
