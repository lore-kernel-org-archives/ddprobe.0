Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173A929ACCD
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758809994; cv=none; b=ZfRhqTqSPUoyE6hv1c0nfFoinfenFYiIx38M2DANjP9r9GoH0oF0lCQEpiI9Qm1ZzmI1Y6Iw5GvmwVp5IHAh4OBQfz3ev9xxTx5Bdgm7E0a4AfNl3arRfvIdTLbZLkRHSqS8T5pZR8NMnBAXZqbpRoE51xmZB5t+Vq1MoT2YP/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758809994; c=relaxed/simple;
	bh=1Vq9MekF/IWZvJkEqua3uv05a+xxQv+F1ZczCYSKtkw=;
	h=To:Subject:From:Message-Id:Date; b=eIQFUlrrsC6ZjblkwXygpVWcgChrJq3JjXux7dTj52f7FSFyeFaPHuq+zWLIhD5Je7eOyXNIbSK2brNvbJ+ZWEVLlPPYHb8vYBF03cqf2agX5zjrRYarD9JT4+CnYE6O3rUGa93xS7japdhSwxmITwjbSJAGpGqOiQpltHiKm54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyjOfqY3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyjOfqY3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A01B5C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758809993;
	bh=1Vq9MekF/IWZvJkEqua3uv05a+xxQv+F1ZczCYSKtkw=;
	h=To:Subject:From:Date:From;
	b=RyjOfqY3Qp+nUcSLmpFAePK3O9Yq03lGFACPnKnYS0D2ispnz6nnfSozrXDf7CVqh
	 z8uLMHQhn3DmMTMCq2wCkiP1ZKqk4jnLYaX/HK6ZNo19DGSworFybP3k2BMWT7Zn43
	 I49KGFTVFXVSASuM8hGEhM8cN4uAHg06uaNnCzyyvciZeof2gukUqPc8HWxQ4d6HIC
	 pttXwZF1JPqfWNkmXPGfhlHPy66hYvPmAS/unsZDstx3JMa7OCP+r3Q+/vZcmnQCid
	 eKzhHLxP70Qib3inS3d8iXPoYC9NUHp6CJAeLCbtld7iH3cBqHqc/zCUt4axUyEmLf
	 S//uMT9dBTdBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91176CAC5A7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175880999358.23069.17571398024409655541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ddf9a571b9da0dc145e9248eaf10ba144de65484be74aa58ec05614d26cc91
Date: Thu, 25 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758809993
