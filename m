Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF6E28CF4A
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780915474; cv=none; b=cGfMm/b3dyRuPy9jD7NUGICQRvdutHUAeaLe9+DydGPT0gq76XawM24TioVcI54UBwUmEqmnla0IzLWnVHMdQaHhHv2zl4dYAC9bG/4T2xFmU8nDBZknwrJk8DKWSpWo/dxRqm7A14h6SCNOQBDuR7F9SY2Ib0qaWfWgdzZoyl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780915474; c=relaxed/simple;
	bh=k4v0z0SOXUm+OuYMWpdbwvgClJmHpHxZovRbnFeyhqQ=;
	h=To:Subject:From:Message-Id:Date; b=eIv7eIZxYMNbRS4t/UBbeOC5FLPqEMldKbE6CB9iumqbQYhraJk4TDD/dY3TXKs+e+LdnoLjcFGP7UlI0jgeApFcIBsJ6CTdY/XEU1XnHJY/uzaabjDA2jzwu8NHonfQFHgm0/FFFRYiomK78UK9FQcSHhALMNVFGlF9hhWnQdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfvAbPxc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfvAbPxc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2B81C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780915473;
	bh=k4v0z0SOXUm+OuYMWpdbwvgClJmHpHxZovRbnFeyhqQ=;
	h=To:Subject:From:Date:From;
	b=MfvAbPxchUalmEMHT5r106r23OiXrcPpCLCdnJTci0O800rbuxGPgPNbZeFQpwoRa
	 ISWTeIyGDQJVWUDSxIBQiThb4+N6bmLZQU+mbJwAiezzYXKXpRFTWle5FKbApsEKgr
	 GOSSmMoce0jRDFGc9gVEfnElHKHOFmcRJlbM4EGZbi5FN6TPrjai/lOPXSDb6vGuP4
	 Wap3vPf71h/InhMU9cuZVqmB8dOgZ1FMujDmoQ2KTu81lSSvM97Cd0TKq0YvHtry+c
	 LLdH4Ak+2ao4TX+vah3jXGCvI2ieaogqOXDHuHox724CK61l6pJbk6d4AgLky1Bnbj
	 iDjAdG38qgkTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9753CD8C9D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178091547368.8996.18432154149007838614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bceead69d26b4bb31fa04c79d4cdb48572dc70440546a3e9e610f21038a5699a
Date: Mon, 08 Jun 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780915473
