Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F731917ED
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754567994; cv=none; b=hJE4pO/HEe5pK05Xu10zqMnN5Viq8xGM1fKjz8yHosv7f9lmu5OLHHTC7JPgo93Cv/bkbf+32XjE0mE/uE14PH3GdN/hnlEDF0ByweqtkAgD4pb3czpERmhxA+cCkeQMAq5vUFXD82jlBgiwlQ00l4LmG2vMskNRCH7kwInEQ6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754567994; c=relaxed/simple;
	bh=jZE1kS3skH6YODP16FMB1Opnh0FI9WJJTLsmi4sBhdo=;
	h=To:Subject:From:Message-Id:Date; b=SBnDANmiPFY8VSPI+2WQVGvJ2NJ3Xoft6Gg+K8nHCdOW375TldHIXgrYUhnrTmebvSv2KU7kMG5bhp4261D3ssHOagZq0wnJ3164rNukU0kiD+OxI2sjTRi7OwvA0dHlDJ8bheS5hh/lznm7qb01bihMsMtJWHLATwITDoWHwts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDEP4EhJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDEP4EhJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A43E2C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754567993;
	bh=jZE1kS3skH6YODP16FMB1Opnh0FI9WJJTLsmi4sBhdo=;
	h=To:Subject:From:Date:From;
	b=iDEP4EhJ96ku1hrPBJ14CF0rOB7Bgdq1KQ6YSkvH1EwNITIxingE3lfGnUaIGEvL4
	 QgOf6S+acoKXqXCUCQvch6z86pDsIaSn2x8AjkkhPuu/5YX+P+V4q5YufCTRJE3a1J
	 kv+JmcLQEprDdbtZaIjTwenrU73kG2Xj+xauHX1fOJ2Aq/ooga+40Kpox2qeKya3fh
	 W1AJL4wfOEsLrMweJI6Mm8bywQLhqIUx1C3C4YxQ8Tvs2T45IdV3ao+GO2aChreci4
	 TPsvzOKzJgHTMPmyMPMCA/WqIYEFTVelzSoZHffOuQUms5RSgl1Av1mvvBDN/b2hp/
	 bTRo7FCT4i4Jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 905A6C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456799358.12189.11516395922122651410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 424e2d8425966e2c17944687e5a48d58ee5bc2d9566bb1aa4dcf4f122e708ba1
Date: Thu, 07 Aug 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754567993
