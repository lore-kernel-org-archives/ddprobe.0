Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5886D49362B
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787440234; cv=none; b=OwkRYCjL5d05mkvTxKXA9BcIDCbfjfPZbhGiTKr1VyJqBQhHJiLRWRjddpbYmlQrOOkl3zMChPEBoUbk1wIiq/Ppcj/B6IiyNnXtIufWq4tBgrj/2fSIbkjcaeOeFcZEAq6xqftbfvbrLMXgVWb3DbeqVkrny/LlTp852OVNVKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787440234; c=relaxed/simple;
	bh=VeV5CdaaDpSO3qmyPGClkYP19LgLOWH+82jIEIUPn2I=;
	h=To:Subject:From:Message-Id:Date; b=HUiPJei0z5VOZ15Mt8iCpRcTrqWHUND8YPBOco2eQ2JeeDNJS73FNLqpPuP7weP9jHM83iYm8GSnztZbNnEAPYuRyvdBiuaFS5GBziEAHnwKRpJrNk8bT3STrMgpWTVt1vWhhQkVsQsMFo80sfSniCGCQRoCVi4qnBB8/TGoQVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uY4fkAZg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uY4fkAZg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC0F1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787440233;
	bh=VeV5CdaaDpSO3qmyPGClkYP19LgLOWH+82jIEIUPn2I=;
	h=To:Subject:From:Date:From;
	b=uY4fkAZgO05OlaZVpUssEJ+HaK4nLYqeD7DUd2pKNs4J2c1dRiIxH3kdc/aMbWhlH
	 UhA+x/a7QZ2MpVTilrnGfMgqJ/nnFI02YGetS1kz5cyN7WgpuEBtBfIVb5eq2aMWZ2
	 oSQVCVOOQK1k0re7RxrTTsyc/8MYoFpdrpFoQ/jupca7y4xMfujILJu9ilNufcPvFX
	 B4y5B6rlCNTevO9pVEVl+dm9aPaESEKKbOd3PIjgdIjwxxY+U7ZDsl0z9evoVF9i8U
	 evgHDJ69nelowIn4KNrV3DjAOcC6nvg2X8VJkooCgnR7r4AH0r/nz0qKzKqRv2w7bH
	 vMM9giZWHseLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1D9EC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744023369.4361.12348498189949741875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1555c86c6991f0967f5a71fa473fc5602695a53ea2e227e79682fe5da9b7bd29
Date: Sat, 22 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787440233
