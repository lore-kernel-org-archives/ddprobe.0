Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CA93B2FCE
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780623874; cv=none; b=gp4GxRd5Xoc2Yqen31fGy2ZtioqPsWHXKkNwIFIYXD+Xro8Po6QrAVdrbNpCcHnE0bW5e7eC+ylml27r+mXcNejBHAPdeT2j7R98l1MTQHMgHuWglTvO5ezpz11WAZxgg+LWumCsSu06ZSs9im5ZRFHBUKVaGrNVP7dBUIbAFYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780623874; c=relaxed/simple;
	bh=FwwkulFVaid1ek/IuAoBMsYZJuu3ZB9pDR2bJwWHdnE=;
	h=To:Subject:From:Message-Id:Date; b=r4c3LD/kfWqmcYnxW2syA/5fo2RDIVW/KiZzm1HZoiW/MWgYxcl0jimZS5bk4h/KlhMh/vhCZV/w9+5OidoTD13mXYxnzd/un641hXqYu3D0T6eduJJcebL8nec5TPX6vR3vh9i3MTvbMRRiVNXIQIvA+lWvm/HeHw3qZ4q/P5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cR5A7vPH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cR5A7vPH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3F02C2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780623873;
	bh=FwwkulFVaid1ek/IuAoBMsYZJuu3ZB9pDR2bJwWHdnE=;
	h=To:Subject:From:Date:From;
	b=cR5A7vPHlC/oJ5Romm6QmWGQtzW6qN0N7Pz/r5Nheaylj4HPipfXgjt8QNiLEZ6Rq
	 dBRvMCFSVTEVEg6k+2ilojo5Pym5vKCwEDS/g4W+FmQaaUZFYSBDUfX1np0dFWrAui
	 KgixJ/d7+2JvFqGs05wGU86Qro1aKcT0Au/FKioDbCPqr4ToZjwRjHbgNYOSLc2aJ2
	 L+zh26dPy1o5b5qdpkhSjz5YHTjEIc4A3ol7wK7eVyOgeLilMTGwrQntjKaNLBxZbD
	 WK+Bl5AEkbkbNmMHGNKHcx1Ar56bUKcBtIurPwMhXmG4yyFMboI0wylQCMmnJW253Z
	 chrJZxTP+E+Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99A1CD6E6E
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 01:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178062387368.29512.1803005359372215841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb554304b0417d56050dd802ac0af08a371fbf35b4568c3ed317b4b054e9b76c
Date: Fri, 05 Jun 2026 01:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780623873
