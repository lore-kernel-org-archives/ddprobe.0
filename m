Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35B5A22E406
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744791594; cv=none; b=PzzAKn1lEs7Vn49YHEFFKSvESMiuoISYI8sPVhrGAHpmj7scEdCjLPvenhnY/YFpupKQlweyGLhcbXg/YmCoP4Zm6NzJtC7nImXB9O3nWK6ScrBfEVwj3EfIeHTOqMt+W3fk0campFyOxSFuA4sHbmzNNT4nMTGbdprNZkUU4FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744791594; c=relaxed/simple;
	bh=MWiAyHdXWuebY7eXEqPrXrR4Zjp8iX/DQLlpJtu3WNU=;
	h=To:Subject:From:Message-Id:Date; b=AilK4WSkRKD7/wmfkrilKhp/4rEA1R5GF/JTAGhG9bGjLexcJ+mwgr2BZpgNOzvWkCh/TgYR/C2TRogulea8kOPwcdDbALGytEi7XQOOOVmdBRHndrtI78P/lisj5VNa+WZyLIH0EsXKrK3cHWKOQRRP6lEch3VyaZMXlY6wCCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eYIRFxAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eYIRFxAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6667C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744791593;
	bh=MWiAyHdXWuebY7eXEqPrXrR4Zjp8iX/DQLlpJtu3WNU=;
	h=To:Subject:From:Date:From;
	b=eYIRFxAAj5Mhox5Vb/bH7I8I8Cpnn15PHSL3jo1nuphhgprCh6em8mKmwqNqm9omK
	 l6IosxFr58qRSyyeX4L7R2tEgLb6bmfb81QnSjKHT05uAimTbdUeI0fnkie64yh8Ra
	 iZDsFwSQsxS+Q7wnqPgP4EW3jfBLi88NnC5G0MdNEGe4Gl6ZsucVUotsIlQFO0a/UT
	 sJWZEwCziw59bXmivRxGIQUvA9oBawCGgiAqb93uxcTEJw7X33zx+VTc9ctiBgRga4
	 qVpBLbOGO/6KklibTehtYsFeZxc4luMmJCxmyldMlY94q7swEshw+8f+7tv+WsWQfa
	 IB4IpTVRVOCSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F99C369B1
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174479159359.11892.2702775222341889595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e32a9352bb89523361b5c3c58e62634f90fe730f8c9b9fa2319307201ff987
Date: Wed, 16 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744791593
