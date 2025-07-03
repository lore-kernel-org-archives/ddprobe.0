Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A5D227B8E
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751557794; cv=none; b=Z8CAu0Oc5hdkMu0MkcqmO0RO+hHSuoB/J4Zd6nGhKnTpt1RySf1t/pEoarGV3Uq3EETLBzdGPqGYqd46Nyn32uvSz3s+TkULWVfqx499DcCuvhDFtwL6p9/aeCDPweLRoeXO/oSFkVriTlK3Z6lmQyU0y4iVjGM5m1nkYwigd2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751557794; c=relaxed/simple;
	bh=2WOlchTuUzvtzojJWIKP8ep9nDxBzBso0+q7b0pufQ8=;
	h=To:Subject:From:Message-Id:Date; b=JhuPReImd2mxWqeyfYrfMtKgzCzbbvtEv8f8opvljKbYf4LszEXTSvwDoT9vJG4GaysFNFDriHee0A9KShFiiX9zg4bUNPq9gMM3X8oMviRIzML9VSVruqkPGHUPm7UG7KGriWRDQ3Lho0MbZhCWY6B+JELjEsZFD0O9avNzLZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rig4iNfT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rig4iNfT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C1C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751557793;
	bh=2WOlchTuUzvtzojJWIKP8ep9nDxBzBso0+q7b0pufQ8=;
	h=To:Subject:From:Date:From;
	b=Rig4iNfTWrv/Qh/E08UTvrCPeklN4Fs9ir8u7aVgwGi08QHzcjEW68pJq7wUE/b3y
	 J4ldSLfrFE/p296/pD0lXGteNobJKlAmpEWxC13jue3cT2cKU0dpHs7Use3rfAZ2Eo
	 S7/4a1RGZ8NQIJqnnOmdtdEe8KWwhrWiaiSHnauUp+KKelo8y6dgyUElWjbrfSocJJ
	 l1iF1br3YEQH1QyHwLzgraKvXiqmrlL2ysChwMBky8nmAs2XAHPR8gmWM4FeEaw4qp
	 2CAIAVTG29RgwM4+AiIja5kV16oxNppdulL8VVBY98qKsiYxmy127pblm9lW5FqrgN
	 1JYMbrivunilw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12AC77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155779357.6491.14271623678966652016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26022269815cbbe8320733dd0b0cd4f2aee73d6b19aec4321d5967b4e2253df6
Date: Thu, 03 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751557793
