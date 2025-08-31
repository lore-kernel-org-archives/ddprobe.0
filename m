Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21BE53595D
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756628394; cv=none; b=oA0WlRNzX0UQU4halDtsEQc+kmMMAYqfS4/8ej/fyGCXrdXs6AdTgSd3vCMqQNWnTSgFZ0Tos1O1wrhL1iXCfo4tH0SDxLs9dqxOpX2MjHMPP/LoJK5slnBCA3+Z0B0Yqiej8ocTEu2CW/VYtyr+3IoossgmJszwtWzhyWysZjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756628394; c=relaxed/simple;
	bh=7UBKPRcXLxjZ27BKS/1bQIL6XV6E9xXsogQnz7282Nw=;
	h=To:Subject:From:Message-Id:Date; b=fAdvdqiadhlmFVkHhTtJzTvgUpH/X8D97V3fwePeTpNdbScuDUwq02Q/zRVnGh1A5zyq86a7KW0MC3Fnk7ukTNd0F+fOtLNAGYTURxlXJwLpUD6M8KtgCo9skPJDdplZXVc/KhrCeloZzc1vNyXSWvJd/luCD+Nk2XTxzo6o1+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jytM8dOd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jytM8dOd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A216DC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756628393;
	bh=7UBKPRcXLxjZ27BKS/1bQIL6XV6E9xXsogQnz7282Nw=;
	h=To:Subject:From:Date:From;
	b=jytM8dOdiTWq4N0MAyVWSyQ5qJFtxfZZssdrms+rvkNXyjoN+mVTzZ8ZF1Lv6Hkrk
	 Z+BOOuwDGBRqf42l6GSYRQGLJ1FxD4g58laAmk0xiczyBdkE9KN16qUd0QbfcWTXHK
	 jB+PioBa87pi9iKEKLaJ03JtiF0BaJqVJ3wCgnpRtaD+LDo5afqhoUDSd82sepUNPs
	 ynDqdVTh9kAj2x+KJk0idW6cwDOernj/oacqFmtfoTry2FkOIsNyzPFTOOhwreLdPD
	 TxPWRCvMSpan6BJVqceXfolVkIAFOREMFH4xCvY/l8A6L0EBKQIHFxUWG+Q9051IyX
	 JeiqHoaTOMr6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F98CCA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662839357.6202.11887254785789427679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b031acf273c3c5f08907d673b60b8ea65660f683776c7c495c4dfbadb6d5835
Date: Sun, 31 Aug 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756628393
