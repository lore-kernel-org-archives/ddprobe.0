Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36BE054763
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743231594; cv=none; b=KulpSG9lRI8htj+uGOIQSuASHSwJJqumZT546hoVrRSKVPsFqx9V4Fk9sVs8bBBiGBq3igHbPEMtOiMIsupwjmPbPTlu3NrdArX3th3fajBvoouE5UEmzSpWRAPZWxRM1beR0qFmU5i8l5NuaYgCbXMcuiBIdnSIkC3IvdcvlMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743231594; c=relaxed/simple;
	bh=D2p53MCBiKh/Ub3kO5e1mj8snT+DLvb//VpUy0nxi1E=;
	h=To:Subject:From:Message-Id:Date; b=qKrUv48Vsbnni7o/t8NiHmY0SieNEJuGBSzePDPLB3TMq+UTmrgmNzDAZdbtFtaVIFHJerantbDFCyhfwRo1i5bdLoPw2mGyDinOIe/km4TadUSD4EnOex490xgEH9t4FZHYKpEz0A8AchO1XbhFmJY84cKFiI7h86+SbcMUphI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhMqTq/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhMqTq/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CD4C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743231593;
	bh=D2p53MCBiKh/Ub3kO5e1mj8snT+DLvb//VpUy0nxi1E=;
	h=To:Subject:From:Date:From;
	b=uhMqTq/pPaxz4YTmwf56BXPT5riZSwUmEWNsiM8hgIqJaYYn6rcpyHMcd1d1QYmFL
	 5zM/qiygSPnpF2l0Li2trzIZzT6g7igl7SVCDO3ycYHhqadIitEFf4NG7p+R2Oxf5Y
	 26gxATMBHbQ7eQ2MkI34gRr9Mm4LuaT3qp+TSBU1d/w6IPABZTdXjD7vI/W2HLgrQ3
	 u8cwpT8sWAOMvcFHfaX8bwN8Bkfr4aGjMkq3RN1RZTyo12UYdtXx/K9+PdXWdti4Mm
	 g/9P/WbloxImsYguhrccHb8KudRUyFzh+VFExvsqDnV2CJc6OmZhJbC66HM6gIXY+U
	 y04cuGYD0v9XQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A146FC36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174323159361.1281.17355129130784530193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49ef7edbd6b26984f884538a58189b5f63b9e6e5ea843436bb48957633e48bfd
Date: Sat, 29 Mar 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743231593
