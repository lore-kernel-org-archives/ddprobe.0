Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD8757D098
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752880193; cv=none; b=PkIOj4d+kaA2oLRCFql/AfdIWU/EDts5fHLK6KgPR5z3gNmR/mP1Es/Zcan5mX2SNlHwiTWKwX6XqqEeULMUfomZcn866bzuL2gczV0APso/ap9efhaNW00n16ebgjhLIQZkPzg+270NWAEvzQ2aNZG3h96SGiOvr5/3ebrWjSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752880193; c=relaxed/simple;
	bh=My5IzM4pvfxmGrU2pWuDuYV3s9WwqaN1v4Z/COU3C5c=;
	h=To:Subject:From:Message-Id:Date; b=EYwBNiTksgiVWH1kpXyQqqN2rHfq/BNmBe+Gtq+2fZU1GdBNXI2dVVNo3LK1uisEBsCxDYl6namXx9Q4+ERVPfIwZFGLplAp7r7RdhOaq8x0f4S8XJ/Dkgl5Eb/VaqOoQVyi3qyfKVFm+GfcZJJXRHKHwzX+2XcyIgAF7AIzzQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSpX4uey; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSpX4uey"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC30C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752880193;
	bh=My5IzM4pvfxmGrU2pWuDuYV3s9WwqaN1v4Z/COU3C5c=;
	h=To:Subject:From:Date:From;
	b=cSpX4ueycYh7lg69JwII7Ad+yfy3hvj7YpdUq5+UKBxKplnbhJnTnNP+sXNJQiFg5
	 uHGb/XBGxdI29S/B+R7hB6hO/wwXij5VOGIOx3c00RY5Q9+2JBwHOHkRvBshl7zYEG
	 bHwL8ZHzCfDSK/6gD83Mj1FJSq778lKgd32D4v9aBrrc0Jq7Y10oKAE2fb4AMAzJEB
	 j0PdiDTaO0XerlZlVKRLFyjNXgcfpyujUmpY3R8FZbtxpmM2Lzo6EUUdpsVEPSVh2W
	 zFKW/TfkYZLO3ba3X4o2R669D6SIBzPVgYgDxxZXli3qKhCiXxEOvWm2oSlrhEvaNp
	 QNaS0DPPCngHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAB8C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175288019357.25489.5446515207038596008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa24ad67f191b85fb92a675a749fb2a25fd59cf9f823b156d0344f0afda30b94
Date: Fri, 18 Jul 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752880193
