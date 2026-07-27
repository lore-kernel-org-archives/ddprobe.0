Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42A03242D70
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785114634; cv=none; b=HEqMVZ/mIPLyddd4RYz8xQldh+SuFeShBuEoYUJSos7FL/NiZhhXj8A01EyYji2AMgkwG7YD2mepBgIxl5SBKkeFiVLwZUGocmQsUgPbyYWkRuoNMcxcGwcGGJjlChAhSxzADDS/7LD+BWNDoJ7H/sOmzCn2zRLb6y6J8O4ihL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785114634; c=relaxed/simple;
	bh=AiAhUKdfNGd+i1k6/U1k6a0avYIn0wwKDYP9RJsvo+Y=;
	h=To:Subject:From:Message-Id:Date; b=h+iep9Nfowrz1T7NNMF31XUcWsrrCVdRyPQ0wmVGuhfzlY4qfPaDIlfmH1o+oxSwIZI7eSuMAp4knGnQUXhm0RKeSG16buEvjTPS0xWur2fU7Nsguxh+y1h62aZTAALoglXkoweAfizp4dgZIeVzED8gXwjwoeMgUxhzLIICPKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChObKCKg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChObKCKg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4517C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785114633;
	bh=AiAhUKdfNGd+i1k6/U1k6a0avYIn0wwKDYP9RJsvo+Y=;
	h=To:Subject:From:Date:From;
	b=ChObKCKglqp3F2CC62eF1D1lifqaQWM08vCrf/bAhAHfLR93XJRHyufCN4O4Z9BEm
	 C0WzSlHdEpWA4XdS5reltplxtCLrCTCwUKSHA95llIrertG8lRFVeHyr2D0dcEI7z6
	 lWw+giZ30AnEDFSt0VPII9sbtOcLRQk3ucHzBESZGgmQIZvc5VV8j0+QDLIDCHzPXG
	 nmd1h+NeSm6lYGN52MLvPurkgaVN5A9z6DzLIK+ZFiDn1mP7ZseBW9bIfNIg9p3iWJ
	 K88YlsDoZ6xbIfUcvWjlUeOQWFUi5Mksju95Tl9rPc8uQluPI4JJ8ypzloYqrHt+3z
	 vG4NpqMAiIpKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD24DC531F9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511463368.22247.4890126803051375839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af8167930b5203582bd3abd1c943aa377529751e1d07745b307c67f584fe0a82
Date: Mon, 27 Jul 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785114633
