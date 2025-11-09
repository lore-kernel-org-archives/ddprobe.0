Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 192211A3166
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762700394; cv=none; b=HgoPSHuVhRiLgu1pBMWH/kxoiZFmRQUSQ7IGgcsxRXZs2H3/rYPedThAFG0JnrkX038QLz5VgHQsjDkpHjKvEoLM8NM8g5HeaIV1BrLAMrxYqLb97KigLnBQzejpDwlPLYFc/flj10pwTLPj2NpohIATj5SH4PMycZQiTuosf1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762700394; c=relaxed/simple;
	bh=QctJqf4efzMTy0IwwcQ5NvIJHnNn5K1iIPM7lXp1Zrg=;
	h=To:Subject:From:Message-Id:Date; b=aH8Raf6JGVUxAnSYd1Kcms3woMgz5SDBNmx5RaldRMTkPU4woY0aea7HYi4VtKrEep0r9hh7mcY3qFU8OofUB/+KbRA3QjkVcgRUyx11UQ/nPjNHE6L+ZiHoBzWm+8B3/Ag9pmrst23v7gXvn3nRbKnt1FlUP1BWPR4z8ClFLzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jrlzGiVH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jrlzGiVH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDB8C116B1
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762700393;
	bh=QctJqf4efzMTy0IwwcQ5NvIJHnNn5K1iIPM7lXp1Zrg=;
	h=To:Subject:From:Date:From;
	b=jrlzGiVHeridxaLoTropXsvdH2Cmuxdgqzx/4wmbTrb0jZN6NlJJXq34j+c8sE/ka
	 rgfcSAFkmcw48dJsWWX3Kzea3bGTIIilrIzOcBNoipBwfRSsr6irYvcv7oKbaasWK/
	 lUIL6anrZX6m9fw7hbrzvgKb8xuaPbsNpJax+QnuiM1ISFP0CmYtkXVsYr76ABwblp
	 qkcfj7MQ1fTcsbHbtLPGlZ2ML4izsXvVsN70JgH6ECS4P5x4pNtFFekPsIV3TaHARa
	 nCRVvUPKnSUL9H4nHB+4i5t6DNJr4g9H+1cc2vpYO31DiJNnVPvHlUvm5VvBcq0SGx
	 5w0bSnJ5Z1T+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94841CCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176270039357.5961.3335596687391505818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae5cc2ff68549db40cc4c9b9f084260745e7205c185f94dc753f043590a6772e
Date: Sun, 09 Nov 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762700393
