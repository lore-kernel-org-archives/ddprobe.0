Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62236199C2
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713523163; cv=none; b=tupmciBmvlfDzO2QGA5Ki0bFfjP3g+s1GSfMEqNbf4NnDDW7nTYjec68xP8KQFlflFSa0vjsImDmoTpHkC1KWxikvTym164/8vKYhYwon76MNt1eEfGRLtlGqRZS/lUHZ/i4PvTMaqqiJMVYVTG76iTMuLrklitRPsWbIcrDjD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713523163; c=relaxed/simple;
	bh=Wyg5boHbfqXGoYL2L305/HQYj5NJpFVwLstDu1cTDdU=;
	h=To:Subject:From:Message-Id:Date; b=LRVQYK5jrYWYUUhzg64sR5OpP8bE2w0HC+W+aGdxU/gQ195E4b8/sPvlxPISQ7CVpJhV4VHgrC5gZ9j30ttUDGnkMjD/+g7Yg7OwHsUEfCfQrO2QX7X4EWPu+KA3NffX+gw5EYW9aBuPlrebyC7YOalgiptPlXcZYnQwkAqprJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V2xwYkfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V2xwYkfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C59C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713523162;
	bh=Wyg5boHbfqXGoYL2L305/HQYj5NJpFVwLstDu1cTDdU=;
	h=To:Subject:From:Date:From;
	b=V2xwYkfo8FGBro/5+c1Yb/vRXFCb1cOyZ8VV3Z/dwpEam7vlE8x6Hv3g/1PzSeOb2
	 2h+qTAnKrNcDBlUlJv79xwA2mcNfypseb/T6Lmr4lvYnUSDv3ro3PCVGtWKEmmqPYf
	 D7PjBtiqq7Ozwu7pQhHAJlSQ0txVjttLvE7OyuPWBrsiCKatOQU0nhMF5MRjaSjgH0
	 fiKsAU2lRwIr+iU9rNR6qBUMKsWWRfNovHvmt05p1Wkv82J8j0/Ge3gpmNDYFn8cVD
	 znEiV0peTWBKPjSkwkmGksMxlGKes2YBnUGzmuSjNDGD9LXWlHaEkTXAUv9iSPtCxe
	 cQULHGWAIWc/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C456FC4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 10:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171352316277.16970.4406490706785410174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1fd51ea8e8dd572447ed0ab867052ea6d2b025f5ae49ceb260153692bc4d132
Date: Fri, 19 Apr 2024 10:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713523162
