Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 150C0139580
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722285954; cv=none; b=Yk8XgKz+Vc7uLI1U+kAmSW/agib4PpmVBOxxFyItLjX0gRbsZ4K7I/3p57krXiY8nJPkwLSSlC7l+cKThdF8v493m1wFNfxfIV4SaPqGmlInsgq827r43HIJiPkf7YgjcYji+FjrjF2RX6iOeneQfidlCnynT1DHAG2d2r68ml4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722285954; c=relaxed/simple;
	bh=xYssJcBNf2XOA4exWPjY0pZFJyNt78cz+olgnMSoEZ4=;
	h=To:Subject:From:Message-Id:Date; b=AOtu/Saq7e+ABvsYf51scQGVMgVRVvSCIWUkLC89Hq5Vp/W+gVRH2YfAAosOXlNSAJrQqM8N48GQYKkP8lZRFDs7E+bRbvmjjMsf4hHAtI2osIniY6D097++rrAYKELv5a10dnIdYDDkBnxcSQFP6aAxaqfua6xH4UnBAo2gSf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOpeAg1p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aOpeAg1p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9075C32786
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722285953;
	bh=xYssJcBNf2XOA4exWPjY0pZFJyNt78cz+olgnMSoEZ4=;
	h=To:Subject:From:Date:From;
	b=aOpeAg1p2WEBK1foIw8NIsC7CLnp6TW3IdoT4ssHVZvrEqUQbu6BAeqEb1GgSe2EA
	 0OD6/zjhu3Xa8TibyZCfANc51d06RZkkkCOmUkzpYdxhxsNxQoNBhwe86zrhQToTMq
	 qZuv/dyX3WYed8mZXd22Nb4ouH0Y9S8OOeXwZFqowk4lb9Wj2J79MS7STvFzL/4m71
	 hI/kJCQaO/Pg3xyh+3g7UhgOF31mNd+XDOMp3CS2+/FalmWIifPMw3H99IjBAr7kY+
	 64F4+jpI2PnAB3xMUxrdkrEDBEmqLbAZNutpC9eRLfmkfwUQQZzXMEL8gArvtbwRfw
	 +0cUTy1O5agsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9819DC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172228595361.29949.9526232553319872470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85c1e022a0437ac41cf7192c6d1ef95bbcf719e42b6c5951b44747f8d4f632b3
Date: Mon, 29 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722285953
