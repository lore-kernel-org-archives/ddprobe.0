Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCA5184F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719621863; cv=none; b=knVMEG9ktphxqpiWDRZVWJtbVvAxKdhkx32Z5AHmjjrkY73gue2UVEPm52ORv+MUCm4C7zJs2zRP1W2A7jfRKBqCIn8r25Eu1M9ye3obf0Lv06znraTMCs7+R5tgd6S/CinKVeCCm6QUNJV3q8NtyPQhs9nIJK/HXOwfhTZipuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719621863; c=relaxed/simple;
	bh=9Ko+bXaVnpcM1CPXNBkaJl/brJJTPA0e5RuAA2QA2/Q=;
	h=To:Subject:From:Message-Id:Date; b=HDToVQ/2+o7J81HJ8ztlVpx6Yu99OErwj7G4ISTkdUAexN9Qq6AF52BYC6xlSgg/cS//pbBvvrALRuDBqbk3frzFcyGC3UvExVqY5b2OnyJ+2q1EZEdZDfWiYyLI/IkHLQg9W+iOFydhE5oNHQuuQxfkViT7Cax87abyyTFRnp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OP/Vtb4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OP/Vtb4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42BAC116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719621862;
	bh=9Ko+bXaVnpcM1CPXNBkaJl/brJJTPA0e5RuAA2QA2/Q=;
	h=To:Subject:From:Date:From;
	b=OP/Vtb4Mj7DaDLPglx+ZLMkGW7lWThC8Pe3J39G2Rbb/MIlbLLA5gnwHJCFc0wnvG
	 Y8m/v0863zS3kwybOsSAlBcYqcHJoYiOHTb78CB7XibagyXrrveKZxOS31j7ErLa5O
	 +t9OI4GThYR9Paqd2hD0oM13HWQH7g3KMrVO/GYCM+BLRfJvS8tjo9L16EV42WF8yV
	 690g/R1uSU2E2G96nQclJ0EPWj47Uq1Z47/cM+29yd8DFf22sCQVhgOr0aq2tcPds8
	 Aghh4CtAYM8kvRfTSjv40t2DjgeeF4g41RYE7lIdMkyUv2CrNUPt2v4vWyrQEfkYMJ
	 umg0dQlcf379w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BADB0C3064D
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171962186275.31473.5491617135517378416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cf5231eaa13de9df670501d285b8a9befdf52834d230a7b9c0cd2b01dca12ea
Date: Sat, 29 Jun 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719621862
