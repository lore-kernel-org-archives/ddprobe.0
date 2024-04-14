Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E292232B
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713104363; cv=none; b=ADmeiW3ijG1jltxAnD4CDYhlz4u/rKXZc7WG/8kGK/yyoI6tj09QGD2ASRqCkHpZJTFSssJoCA3/4qwFn+62S+sB2e90r5eYUEiClrhnBOJwCB/Th+nyZUEpNjY+EJvXa62eyWlKjy61gDIQeER1kF9q+XHIJl4E/x2kzGPIAM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713104363; c=relaxed/simple;
	bh=ynmnlX9grbN/lcKJ84BF2greFTS2wdhlWhtLEHd+0Yc=;
	h=To:Subject:From:Message-Id:Date; b=CcTEIGRHpkZzwy2FGvkFyYMo6U52o2VBV7hzdi3cGRhW2BkQkav81fTgIEaBxNgexOuOaAI7fkELOec26jFbbEGXQBL5yzbUNjoa6QUOxpWZfEclayb8kLgx48GmNWnEayTunOV4bgUMt8s0yqMjFQRYmlW7doUCffYOLe93MyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VluUnduy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VluUnduy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDA82C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713104362;
	bh=ynmnlX9grbN/lcKJ84BF2greFTS2wdhlWhtLEHd+0Yc=;
	h=To:Subject:From:Date:From;
	b=VluUnduyLjE97QaubKZHEd/2wDtTUVIScGKol7oCyCUmwuon7nym5whSikr7Ax6pn
	 WT78XM59qCBHmN2jrqkNjf86D1PJRuKK2kOI/1gDb/f9yNhTOINNK3gEGTlLYsXrJS
	 w2pM9aDYRcfy9iK9tFgMOReiqUAIny3WSNxN1xFaJ/Dj8BCWzDGyCXHCnumPyWZwEI
	 4erXhtRCCo7LRyX+5N2CJN8unKx/SMQ2wqmfLUoBeOeQHqVaUECHtfUH7UTQjvrpL3
	 KS94ABmZ+lZyGwtEdPiYkErgakBJ8Vg7bNm41S2Bs253koVD1JmfBjJie0UxR+JoUF
	 VV9egGOvfU7EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD7AC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 14:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171310436275.20082.8176069560287141713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a438a2e7730049804ee78309397eb85d51e83c0ae78aa62f61392da0a9ff586
Date: Sun, 14 Apr 2024 14:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713104362
