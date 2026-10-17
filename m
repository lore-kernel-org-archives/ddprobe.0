Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 643671DF748
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792210834; cv=none; b=TkhYFwVaUP25K21MVD17q08+GKl9XgylnLyttNfZJwv31FX25K6IoSLxIf6zD3Y4ez+IflDzVZc5ly+GQPq45xhcCRR3WoOtfAgCziuPD+y36wnsNhlEW6ZCtsUJljAfNxF3qWqLviaqup52W75zcAEy2zC+6Ou6OEhy/5iQ9jY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792210834; c=relaxed/simple;
	bh=eETEc93iG/ZhxVfq6/MIjlzNbWS/GvK8qV9mvvmlVMc=;
	h=To:Subject:From:Message-Id:Date; b=vEVro77Pr6Ps9G9bqeosnil358/co4L6ARFeNxM5tYTKlhsPF7RTnqdqudNuqG1U7SNNjcoJA+YeKeK+3VJUz5YiSP3++GGovu4019lUbeArdhvt9VhctOLh3OhAl3+GMod5RXQ1M8xnfNVQP4WR+kXLNnCwQSy1GV7g8KkPGjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KCplLXvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KCplLXvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E88B6C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792210833;
	bh=eETEc93iG/ZhxVfq6/MIjlzNbWS/GvK8qV9mvvmlVMc=;
	h=To:Subject:From:Date:From;
	b=KCplLXvtAejUOl+w2BGog0VXN1hb5/iqWnKqIAc2DI9MJxBndhkdqj4RD8WjiPPFu
	 ytEnfWpw0SYUAkd7N+O3iiT8o5Z28hXLyPOj9VuH5o6C4C/z8m1uy2hL4hAwXwYsl+
	 0UUENNmc/1KEVkqknCuACejoMGAGYiSwymXTvwYCk47dLHASWFl58x3OE/Kj+5Fq20
	 uwC4XkZhYeFuIpNTBZWOBbRXeRuEz3Pvv6YSptx5OwEuPewzh791MasAs3NA7409QH
	 KOn6KDrLajSkFYw5FUZAsTWO3afp3v5swcttR57ay4x0PmIaSCr/UqumUbxs4RlHut
	 k1e29K9S8njuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0FF6CC6B2A
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179221083373.23230.14267167979055731531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89e1fe98475b6ce0b8bb9c76e3f14d0d2b4dd7cbe184f1a7ca9b8a69749e426d
Date: Sat, 17 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792210833
