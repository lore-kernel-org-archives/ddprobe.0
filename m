Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF28A7603D
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 15:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707494297; cv=none; b=lpNFM5XlbTb7hNFmNmxIldiVHl8C6n19D/D1Nyekt+L220rqAcRi5znZ2On0myxfxMu9vEZmmsHLZcXCesu6e+tQSbdeTH5pADNdNW3F0XbUEYKBRdK85lPgEhEQi7msXdnsnZi/Im5TGLgvLnMgMgToi8SIaL/a2NaTmZWiI4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707494297; c=relaxed/simple;
	bh=ouxJvki2Cr7PQTPaTI0KS9KlmVmbx76KNxsm0oE8QB0=;
	h=To:Subject:From:Message-Id:Date; b=nTJI1iB0ZpUzw1o3BZ8/SmjM6gOYpC+SISSPi+HEpbT+7x4s14rMrsb7napFIUyEQkMt1keOd9lF2rVZkYW2Lr+tSbqE8Rq98afN6L1qazAoHTFgkmLncsJ9jbd28d7eW0kMOI5/P4mfZ6GaBMjmPhtPpXOSu6jEoSVf9JsWKAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETdsCu/w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETdsCu/w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A3F0C433F1
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 15:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707494296;
	bh=ouxJvki2Cr7PQTPaTI0KS9KlmVmbx76KNxsm0oE8QB0=;
	h=To:Subject:From:Date:From;
	b=ETdsCu/wohsTh5p77/5jWh6d0s2z3ZwCLRwtbBMFXQ1OASggl4vZRukjzvpUERE7+
	 PEcMmJw0EPCxxpI30ztB9xpOf/E/sX51wAQFOMyjlrRCssUMi3svYGw+J7OQ5BRuf/
	 r7AX5HR7uhnw9620NJvacMxdf/kJ0+FBzKVDnDlSnj/1xI08gteeJ7h6r/xBRKFYng
	 pz8jbnAmqFWpVcWl74eQ73foi5JDqmiXgIiDN0Zfjp2wT4i3T2ufPgImfaj0fWIbZ0
	 DwehReOiVI1aybg5C8a5jljZ0KC2AXtUyPT1SYecgkplJtHk5rL/sU5KJ7lyxp61gz
	 L7sNSTCczdqOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FD27C4828F
	for <ddprobe@lists.linux.dev>; Fri,  9 Feb 2024 15:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170749429638.32558.12987602853062123832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b728b07b0a76938902e027f1ee783bd1c21d76e42520b969a5b46fec71e36e45
Date: Fri, 09 Feb 2024 15:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707494296
