Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3090025D532
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747216194; cv=none; b=thopuSg6+b8j6gIZK2I2V32Lx8lS+whNNECvVxQUjGh4D0P7qQRY7iFD4vv8Meh8dCjWOS32PNx9DtzLlvJeT0GEsOC6aFtoj56OzBUv79zEJTanS0TUhvaDOnk8v3em2Lr88MIKJBcV2uAVHgJMsgcjboMjdFisjNLDw5xfQ8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747216194; c=relaxed/simple;
	bh=nO8onduNGNyvmoEcCRDIxNWO/P6+4uj4vT0pByDy6LM=;
	h=To:Subject:From:Message-Id:Date; b=fAiU82mEnFLdXNth4pq343Q7DBFmVbMCwxXJP6usnyUAPGzV7MBGzNx5fcUeQBhbf3t17Zjq2TaOYhaofGHvyTFmUaeJydMJvgQZWNQ45jYqQ4EYt3eBat6PaH3x/UO2mwbcLhT31IarP2xC4zhsFIStyFISxIt4DLpC3eaD45k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oBK9vPBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oBK9vPBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA1BC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747216193;
	bh=nO8onduNGNyvmoEcCRDIxNWO/P6+4uj4vT0pByDy6LM=;
	h=To:Subject:From:Date:From;
	b=oBK9vPBAFGZEmPVsDTEEeHPCFNVHSd7PAfdo0vBpj4b2hwcV2CQNUEWviLfCQzOYd
	 cz+HZT14EqxwonWKG68Ugz6yCUZXEd7+6T9ZnoAq5IbGMdUKAu5uJUhPepV81THNrB
	 00BTOU4hhQczD2A+w/FhHjj4JBXkPf7G/qfZRkGqjhsjag1nP3PsxyvkRGu88W1qF/
	 CQzVgY0DwNv6lCBk9fgujpdzSzUac4Ax6grW0A20ncsAERkC+qocsDtVwLZuj2eljE
	 9e7em/YzFgcva0w+4x/y7Ijp6rLkRS0HnX4juJBtCodgeZA1fSDt8f1Cf7kH59UcRy
	 vuBdC01s2I5cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E72FC3ABD9
	for <ddprobe@lists.linux.dev>; Wed, 14 May 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174721619357.16587.10028800721795294089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a92fba86f3e7478847b698bc2803a4ad04cdb2924ce0683ed2f544fd4eb8462f
Date: Wed, 14 May 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747216193
