Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F9136F901
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782850114; cv=none; b=EnKwm1mourU0g2qV7+G/57R92cv1lfZPdhlT6NaYDtoLISsF9ED3XE49//pjEBByXgych14SHuojyQ2v867x0i0LiFZc/E5Zow1EPJa4+EmIGe6cL2sAaRskthBPXTw3YSjxzOg+YF6n/1jSQt1i+0kEHXw4mPy+jOcfLFiAVng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782850114; c=relaxed/simple;
	bh=UAXvKM4A0qd/r8ICqwrclFCR3u1ilsPA1XYvDbTcUgg=;
	h=To:Subject:From:Message-Id:Date; b=uCLVHf7LUOZ1htQvFJD+FzdiNDKDrSxJzFzB3X+UVluGIY/lJC+3WBYQqyahjctLwRuX/jJBVIPpTuQIslCAnAXaBtdTBcyXDSNIkZ4QHhca5NlyaN9VV/NViWZNtMFp5IUVVEjlbH6OQku4lYodQoiMqiuB1n8K5Ql6q30Y4oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lICk2xQB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lICk2xQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC215C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782850113;
	bh=UAXvKM4A0qd/r8ICqwrclFCR3u1ilsPA1XYvDbTcUgg=;
	h=To:Subject:From:Date:From;
	b=lICk2xQBsu8XVt8U3F8NfqvWnu13NtR3hPryeHrRE3HcbncHorfmFZ3EVBv8BdFRu
	 2d3/bBiKp0H/HOtlLwqN3YMVuWuINJ/Z1w1GI9jg05C5LxXajqyWge6STbZbZ0MYFN
	 6lwHWC4G2Ugt5FSRg6Xs2fgQvyJeWG4kGWkwlQ+g2ZiEt03Iz1NJz5v+RSEHowWJks
	 75LxaFg9CcH8Izt+PsSkXFBLW8PkIF5IHvJ0P/Tj0fZyJc5pa9+u95qWU4rYHridOi
	 OveP8iNyZGREpB36ASwZL2s+INCQHmcA2bNBmSceacefScluTCbO6XMcqEnLTP/3ob
	 pUTU1aCA3gbYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B14EDC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 20:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178285011368.30084.5372023884074679002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8db20773994a4559ec874082f6f76735efd6a25996ac529162cf7ca6e168563
Date: Tue, 30 Jun 2026 20:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782850113
