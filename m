Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CFA3D890F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775674534; cv=none; b=jz8SIn+RckNE8RgojPzxN4uqIqnpoFMvjUbHjYfZnNrGnv76yS5Q5P/KW6S9PGXPeXgFSDsqVPnAtY+ww6QKBcj6q0Cfm44bhfbqd1W5hZ36C9hM570cQBrzM9hF/VG2nlxRbl6F/kwvayk+iRie6//CQzA/NIbhWh+jaM4M5UQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775674534; c=relaxed/simple;
	bh=CNfUQTq5tMCBaiNiH6RpilIDBeGuLm4v8/vNemUxlRY=;
	h=To:Subject:From:Message-Id:Date; b=DCQAklE6MewCDo8OR0Km7r+y6rZIc9nfr8K+pcWsGYNN16VEL+UKoChahaomhyk+jdBO4QBkxhI0OtO8mXX2fYTC4+Gm5NYXtR14X7zBtYs6Qebsao4Wjj6RpjGWGhHFonMX9eHCL/pcEgVU6G9UgYU63QbaModdbvIxCF0i6KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PDipzHN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PDipzHN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC195C19425
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775674533;
	bh=CNfUQTq5tMCBaiNiH6RpilIDBeGuLm4v8/vNemUxlRY=;
	h=To:Subject:From:Date:From;
	b=PDipzHN5pSFlDm/IwCm65E9JA9EGJLyoNamTu8o0gffWBIRiedwfWvVeZub73R7QO
	 gg0IVs/giLgEHnUYKqacJvFkXbVSkm08QozHWC/lnzB8SryHT0cCOYDtwvzlqAtaQf
	 pPPAfT2VEoTChaNQJyUQU8rdld9ib5dJDayLxn5/74CaPznVlvC3SPt3Z1oARxMIO/
	 yMVLmHsjYPTv4ESPN5q7Cu8GTLjDaNFTTg2vJBBM/NUfpukjXDwEIhr/ZBnGZBMA+h
	 Q4cqsvryRlkynGrQzhCyUNctEHkYiF4ugEFhDt9CcsQtlSCiIQDmWBkb5jsXe/ln5H
	 SEC7q+tWzdx5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC28C10F996B
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 18:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177567453369.3792.16230487138700731211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4b3164b5890b75e8173f43ba6e169c06f6d400321ae5ff1145a76599c8bc9ec
Date: Wed, 08 Apr 2026 18:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775674533
