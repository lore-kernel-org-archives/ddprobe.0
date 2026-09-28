Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452D932E121
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790639434; cv=none; b=ax9NjI5M34N236DbyMY+x7TNwnfZPs+Ma2FKc2sgU3miGLokTXMw6At46HR8/37M6AaIHNSst+94zdQt79XwTsBgUU8YZr0oabmGAB7x3J/8vO4SADhRJabQ1HsYm08MzvRuTM1XUVxou/safglMTicV9mFM7Ghs2mqkJnSDln4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790639434; c=relaxed/simple;
	bh=rmnWfDmLcXu1jk+xZKPzuCAIjVjUMU3UOrA/TahT+Mc=;
	h=To:Subject:From:Message-Id:Date; b=pHiey60FYyhHX/LdWebbxdteF9cto4djcTPaYb5z+HMsMdmFt8TsvNSeYWrTjVeHtyrLZY0GkE4H4FL1sVhs5fOq3N+tNP/aW3y1Pg6KDRr4p7DeczyRPdBARTd1xoamRyEfk03LSnTVEOyogaD8+qOvG5ixaI+3KKze3cPxbyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wn9NLn3U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wn9NLn3U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB34C4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790639433;
	bh=rmnWfDmLcXu1jk+xZKPzuCAIjVjUMU3UOrA/TahT+Mc=;
	h=To:Subject:From:Date:From;
	b=Wn9NLn3U+3zMQ1jKRu7gbeAHTKXk+tCDN46UO/viWlSkrga3cWx7kgHZemDwyS9cN
	 SnoHxHi9J3NldrGUqjHd9rsYspbPzWLb/ozWXoKmYlEshU3POJ4TtYbrM3MEgeHsPF
	 NrgHHV4vgH8bW9QufsYyiKw7pHqkAgOlv2rDvRmU84dobR0xhj+IO2gpaqa8bSsYEd
	 SYNjkAoDqQsAwuYnnjy3TxTvJxGLs8m23FfeAbs3phTGd4D/vQ2ZhSk265EVHacGSp
	 9N5ezgjZMN72NeSSl6yfThEY5Xi7wQutPR9NjcrvaNW3MABRQVd6Ep2wAizClOkUuH
	 8R8YVA5vZzmkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA723CA5FAB
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179063943368.23539.1125607729062816829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20706fae6910b1df5e6b5218d216aa2bb66ed8e17e910ea825c8762c5bcf433f
Date: Mon, 28 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790639433
