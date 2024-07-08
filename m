Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAD322F1C
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:16:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720440983; cv=none; b=Qu1hCDpcyoZfaAdIRbQdizz87SJw+BWZn6c/K74CeBjuqc+7BOB4qLJcHeYDbnHtqWAC3RNqrL+tNcV5FKYg9KiF2aGT1hF/fJJaGmvIsoeJJpPZftvBTTsjfurEYlbkdejBBnmrnY7KzjJNSzaf+m0U5jUtSt1ghwsq7nKOyVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720440983; c=relaxed/simple;
	bh=2KVAwMupPQuC4TtlgshCfMy72eB0n123bx3GIOtaMDk=;
	h=To:Subject:From:Message-Id:Date; b=QnYTCVnwK5VPgQdqOyvFtxIlXLbFxxaWOcvILXM7PFJST4VOh8VA4MDGsgkjWB1nxa6mE0sQnXZP9ORat+79/DeZtEFJ7rk+/ENP8HdE89tQG/U+zm0BObt/TqaH6EgvggTPJZOqrpxFaMAjEAuAfEobOIvp13Fw9RQ/jAMGaCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YArwxVFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YArwxVFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA18C3277B
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:16:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720440982;
	bh=2KVAwMupPQuC4TtlgshCfMy72eB0n123bx3GIOtaMDk=;
	h=To:Subject:From:Date:From;
	b=YArwxVFW/4CxU/3MaTrxSZT7soq8Tc2jGDFI2zrEP/HBDvSElDYhm0OJEg4QlvO+B
	 50H31OqqBbFSVY1A5+ClZ4SsgAChxUaeKnsfgmcNOk3edk/AfBaR0wuT74L7IHVy9N
	 g5xfK9sQyVOmQwbajHiAljADG3vxXPafsCdsMUfTgHqE50uwGhJc/N9kz+ex9pNVtU
	 k1a4uqcyQPbs6yWjc6RAYzGRd/QKX0bM3WhxAWMFo0A9SjTQ0WbJBpbACsRfKuiDmV
	 z3hemcgDznJkRALjDrZZrrqJ1pDDLUy847Kmr5C1D4ZWwl7Fel4/5qpm5JdMtqSasy
	 LBuFU10JlIbZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4D4C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 12:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044098276.2021.11952842986211907030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d767df6d2363752d4034058d8d3c1c78582716af80af7edf2e45f025b79ae7c2
Date: Mon, 08 Jul 2024 12:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720440982
