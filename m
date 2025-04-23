Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254CE26B953
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745441394; cv=none; b=Ro/qEfP7fRxqSxJoUWzOsowcS10ndjGQMrTbYJkURV+Cym8b90kfoGins2atfxLQhUkx+r4/PdeBL3NCmUAbQWCfNyUptTuLpz72mYS2H9iLO39IR22kdp66ogoY/HaLOEMnTdEmIkPDQ4LgUM2VD6HlUC29c3d4uNrPoMnnB+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745441394; c=relaxed/simple;
	bh=6mN52GGwcB49xFPAZU0QDuty8KvqiwmfErvX5WiAWnQ=;
	h=To:Subject:From:Message-Id:Date; b=cVEZ7Zxgz8zkc3fBjhQXalhDxPIf/R+tGumlpcHSiCjLpygJXxc6RdpbpcE7Gwg0K5N7D5g7oiV2GZxQlrl8m6eMXxaV3DoyFPRJs6yx2e4yd/6HhnPVTMlVhK5fKSI9YR7et3VzzHR3fT56Tt9cyJ/OGIIYXlPhCPhzH1lmsGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2p/bmsO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2p/bmsO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0277C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745441393;
	bh=6mN52GGwcB49xFPAZU0QDuty8KvqiwmfErvX5WiAWnQ=;
	h=To:Subject:From:Date:From;
	b=g2p/bmsOZiEmY0xSc302NS8Fy4Rk/Ga0HsYofYS9OMsxkEFg8yzvHCQOy6ccBBai9
	 PaiPHbYUqGMTp8U+GLYAE5DiQF1kMYlr7nlAGzeq+/6VAUdhBa80IaStAD5Jd6ktxS
	 xRM7BiMdnZSKEciD4jdR6b2z8/sQmGXMynA6+YavV4pQ8eccsdUNzL81pr4vqGXjZV
	 8g6whwgdIJoyO1YIr48KIz7fEbgijSouhGmrV8YN5HD8wKS2NciX+yZXPWh3h8v6uM
	 Hiz137m/5Ba5yFB+bXV6JASG2p0YoCokaDFDE0C6b+fsoGjis5v6G7cjLXqe7jNBu+
	 +ELP47MOA7Rng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC55C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544139358.32460.4998527648061954171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6afad4567b9606f529667b1ea2c724d4807feba57ab1f31897453b4707457769
Date: Wed, 23 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745441393
