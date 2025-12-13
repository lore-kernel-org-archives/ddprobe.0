Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2A386329
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:52:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765633975; cv=none; b=Tjlv4tGKlnmu3d/IAlfTY3hv+kw/Ys7j7/9NNzuThvdahC10dU2V/lQaTbj2Q+To0EM8a6Ha/V9EDvc0JYC12LWZWNuK1L4iAAzCtzK6YvOTjDc34WLCit0emQqbpk8wi16HTx2vY2/LPXIrxpxOKj8E/FIVMbg5AHo3TdHg/zQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765633975; c=relaxed/simple;
	bh=jha2uhVxelyho+gfPP6zsa2SCA8jMz9A81A5WxPHOYM=;
	h=To:Subject:From:Message-Id:Date; b=giHrDU5de0ze+pG+g8srnbAKXKbZPZ7G/0WZ51GEPcS2YOgE5ZrswpjMD9mHkFWDS/pbisxCGnn0YqAtsOJ80J4DYOjrCtGfiFktq0JWOnwDeWBPEIuiY77xdYd9P9bqoUTGDt9Bz4bdhBJKCzomfafF5CSCTByDRcGo4lzcVRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RU3TLKoX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RU3TLKoX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6575C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765633974;
	bh=jha2uhVxelyho+gfPP6zsa2SCA8jMz9A81A5WxPHOYM=;
	h=To:Subject:From:Date:From;
	b=RU3TLKoX8iHUSdJHeklb5BS7ujQxemTeUBtuN5Q8j76JIcxl/lWh3/XhCU/aAbkCe
	 KOcfUdZ+c/EdPGyMdsAUSJG1L6OMkdC1uVm0zoZg6DnueZ70gZTtKJN9Khm0vReD/k
	 cGxnmMWuQUyXry3GrqPzugkmKRS5rwoEeGtNJ7NIGuqT8WMkuJUJfgTbesPNuaBR4C
	 iQes7aZZOBpcwKvc5ddk1vi3BKCz0Xcjr//WQH3xaOLMz2qp4H86gXlD54KmUtify5
	 08N6tOwNKGD12iLFHUcfEMgqA9DJiusDt3BNnmMwFpxf4dc61jigYLa/CLPKhhZupa
	 VFBiZMmy3vyAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962D5D59F76
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176563397358.4345.16290390257599165895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 067c749fb6f0e4cbc05237e7a12581e29806d2b43188b2e61b60c60e10f77658
Date: Sat, 13 Dec 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765633973
