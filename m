Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2652D43DA5D
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778536234; cv=none; b=F1h/7CUebQPVYgtJqtKeyrNlexx//DAhQhoRlZC/pZWR/k19s0mtdMdN98gwnlxLdf3dSLFdxm7Mxl3vpYcrgaJiv/pSqlJJdB34kTwA4B8y0a7BxMjoZg35GYHydo94262K0LPcaVMjv2VO4wmS/NpE/BbDtxwFnW0e4rCvBtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778536234; c=relaxed/simple;
	bh=GNPdtnUvZSrf9P+7owbjy9HGWXUmexENNJEb+9iuTNQ=;
	h=To:Subject:From:Message-Id:Date; b=VXKu3tU5dXaeR8uyLjiNcwtY3OOmuFLMhVzm9RZmyw2jo8I2H4qYdyx5F7QIqG6/ToAB4Mwkpy168SKV/hqq0WUnWP48Jb11tz3wR+Bkal3EbuaadF69BcVAGQY1zbOSs9SpD0lw+XXD5n23NBR7jVdSg+UnQsAqea4FCzNwdi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKPJ8z7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKPJ8z7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA11AC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778536233;
	bh=GNPdtnUvZSrf9P+7owbjy9HGWXUmexENNJEb+9iuTNQ=;
	h=To:Subject:From:Date:From;
	b=CKPJ8z7FK4HgzlXoxr2eop02eljuoZPWH1qP/Yjui/L86S4gt7AA937hHYSmPKl/A
	 PhBFa/IMp6qMpkWCPlX4yDDO+02WR8lu5qo7EVMJ5DhtlxX5AXECfszkjhh48c4l73
	 0+Wg4ZjsULXSt+jBd14Yz373M8B2Jep3Oswl1MfrQ0kvgbINAgFMmpwwDPv3dpfXRj
	 9rOtJYbk7Yq06Q1eKcpKXJHH98buW9WeHAIN5JKXJ8TuVkX/E2s9Q0O5UIcX8wVF7a
	 34mTkPQa+XTzjaasWTyMrbHI5YpLLO+qffoEZN004WiPPCd069oD+/splQcH3u70YE
	 dH7/kj/C0QL7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0D1CD484E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177853623369.23734.6248692639610210973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71386bd0269794f26f0f809f1a9dc5dfe39def99b63acccd2a0472a8bc7085b5
Date: Mon, 11 May 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778536233
