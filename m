Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345381C3F27
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733960154; cv=none; b=BWXN42AeAyHg5nBVpLWNc8r/ghSTWE1ZN0Qcdo00pt2+59Z1xCN7WzpFX4K8I4iZ8yOefeSfrXu28n8FWm32BWsKFtANxrdYu9movub8Ptv5RNC3O2yAKmzXqA/bRGIEkhLT7kO+i61DjQ3aArtxGk0QlXfIDAn2mxRnZEgcxi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733960154; c=relaxed/simple;
	bh=Nl9TTMxon8KREdbOA9lnszBXl9fHl+rOrT9S3tbCRIg=;
	h=To:Subject:From:Message-Id:Date; b=Dn/SDzJ+gP0R5JyXmVvkTunl6wNdGbbxjRyeHaBVkpRP5/xhcCQgTonIlLU8LJpWRkqNgqM938Oe7GOFBIw9WS4c3GGgZemlrLYUMsdrL0IVryombpsxX0aUC7AyqbGTGL6MPrnxO8mrzF9C+D1iJ5N81YlNvcYB1LYdRZh36FY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmXAC/id; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmXAC/id"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA187C4CED2
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733960153;
	bh=Nl9TTMxon8KREdbOA9lnszBXl9fHl+rOrT9S3tbCRIg=;
	h=To:Subject:From:Date:From;
	b=rmXAC/idoZ1p4IYU2rqx8QNqM5f52P2EQlsS+Wb1Kb1Q+Z059LwIYOH2xcls6cqjS
	 L6X31F19JOJ73cEY7LC0JYErDMeeHTyUARrGQJXLRnYB+Qa5gEWxMpeUbXS7uuW63D
	 BRemY1/1jpeHa031GeAcPx5emWcn4Tha5XfoxAI2vStgWkwYCXCwXaqbsdKe3X8Od4
	 IO4hZ4Gh5bZKfg0h/FkiNmEzM2YQMmJwQOUMcwgGTWcWdFySJ0NI6nLxLJuhalRE1u
	 Ra/7u+FLGxjkb5hDM82tuQiQfcdRvMv7QQ6Z2Tl6HY/nDdB13XPGE9JH1Phbgk/siB
	 ue/IgcT8h10Ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99190E7717D
	for <ddprobe@lists.linux.dev>; Wed, 11 Dec 2024 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173396015361.8437.13723483722162709005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf9d60b41682c7f43ba908616d89ff516c1728de1cb54f3592b8af132cd6f10
Date: Wed, 11 Dec 2024 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733960153
