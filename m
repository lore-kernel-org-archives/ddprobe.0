Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C63B31A7F6
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773723894; cv=none; b=pZHfigGpewrNYiChgiIAQP2Y8fo/o6s8qOMjYtY+uComnFkQWI1bNMj0VItRh6WZqLVrb5nio6iJJvEsrwHFkCteChwHkJqdvR+lT4ryO/vYpjd8nyfSe9RZXHosykqheJKyYZc9Yz/9QJEIiKdG/FBihS+HOFU6QhzIT+6b+WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773723894; c=relaxed/simple;
	bh=CDtNpP8TY7e0pQ7elk93u0USuRRflTu95SyH0m2pMio=;
	h=To:Subject:From:Message-Id:Date; b=CaCJ+wG5pbvRJa4ssXz/9QwbtzjGgFFFbK9BgP2Oebg/pr94WFd6HUrOM3RjWRurt1WLbJboYobH7TLV9WRGVAkxqod3lCqciZlBvZNQ4Gh+3MaAzgeeuP/Vd2ODABSca/mYDgL0gmdrdF+E2bsfv/1/1/95gdxOn8+bzN0ywN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oYonUuTT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYonUuTT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B313FC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773723893;
	bh=CDtNpP8TY7e0pQ7elk93u0USuRRflTu95SyH0m2pMio=;
	h=To:Subject:From:Date:From;
	b=oYonUuTTYP/qaUqbc8s62QfW+1E1oZfgVYeE/Ft4lw1zrT8A4NeaMdhBr8mhNVG3m
	 iQoCKJN17c1WhRGYrPCCh9wNWFWepTtAdd1XuqpsvL7Fp+mDOh3F/TrThKEFfBEl/R
	 Rd/eAN8fpR9DeqQnbV7FBrSGBm6sDSNV08atbX/Hvth1TLxBxP8QnOjtIGf39GAwPU
	 Y1iBIuAIDOOpr7DA9Eks3JzcNlPZhYJztipPz4RsDkCfgagm+WnES7+uHqH2ZlEKs6
	 XvOyj5+lYvIzzMt4Ly7/B0SVcR3Exk4OmvVZj/DVfotf8pdgmJrSNIdIzJ1XeX0hVC
	 wFliqFaULvbXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A021EFB5EBB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372389364.31750.8863334667277493149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f8ca74491c597329fe0269ac5491343d4b8708d944b6e3d1ace0299e737153d
Date: Tue, 17 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773723893
