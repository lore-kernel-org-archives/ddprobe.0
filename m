Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74F1F25F981
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791692434; cv=none; b=IPeJy2xaZM53kMAUGpFOBKx7r5r8kA/E7JODZF+RIf+Bn68WSFSU4EsynJ66n5SHIAytidUcpfvmDEOKZRR8yxhsFkqWgMJK7oaFlw39F6DJr6O6Rmhb1gd6aEYVttii0TUfFwQO4Dzw1AoWpMJUcOMk+esUSQV8vOgMwfKj6z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791692434; c=relaxed/simple;
	bh=SXQbNsWDBANeFxOahrxqo/ieJmu+YQzxdzIlGSSwOWc=;
	h=To:Subject:From:Message-Id:Date; b=Bwi4BPHNy6r1y/g3Dbz6m7kXpNGZSmwI6xiOuPUPHQqEn4Sc8gg79Je33e1vSXqibVxZ8Qb7uV5AOsw6h7CtqjG3CA4Fw9KLxLhkAk1b15yEO40hVkBRVpkOg4Nzn4cTKm0O/+IKudJQKg78abZ57kZw5YNljZGjaZvM5aKn99M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZMgXx2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZMgXx2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAA34C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791692433;
	bh=SXQbNsWDBANeFxOahrxqo/ieJmu+YQzxdzIlGSSwOWc=;
	h=To:Subject:From:Date:From;
	b=YZMgXx2sL7qWm6uSLKtmYs9DvX1pqStE6sWcMp41L0Jajza3TGqbE+0cMrz/Cy05T
	 9E10GIIyFtxfr2jStzhjlOz/cRxu6fG9GL6pPiTnakUZl281zLx6hRXIG8iG4g8GjX
	 5pujGST1QZiPMiHpLHyIy0/52h9UwYr8jlhz8bhrAOTklppl6aBb2uCXYDL1gsIyeb
	 UudpA4+Pc8Nfq+omDtXS6N5Ic6JhY2kFG7dXOn0mqZXqxUvdWEuQOofhTZXrD8k0Y/
	 U6OkgRbioFo5pqi47F+ll10D/Vd+L8NNy7z7Bo94WJAksZA2y0nLRl9Qao3LF3TueC
	 XJxbr4E+1/MQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B24A1CA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169243369.23738.7881245540556514719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebaf7a8873b1f2c70ea32e212645ac69e37e688383df49885f47d136a7a9bae8
Date: Sun, 11 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791692433
