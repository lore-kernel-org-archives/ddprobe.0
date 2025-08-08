Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169280BEC
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754691594; cv=none; b=gXjdJUHPwSrhfjtU2kkORvdVeLWthMkrsu+dQuz/7fEAaoKjPAIP+KjAHYnCiavMuA6FExoYQ5E6b4xYyAA5FQqG65ZUUIMfK2MbExK7uY94KXJ1ISWI4bs8tr/AoHbuClMyXJvD0HVVehwl2N81gWWmh5zxHLkQoc99MdbnI8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754691594; c=relaxed/simple;
	bh=cfUpZwNBgojQzeRhFXBVsHJwOdKdNCNze7siark+KyE=;
	h=To:Subject:From:Message-Id:Date; b=HrlMMVrVYzMeNKUQZ6BQfGLnHmLn3TAGfBC0YJlohwN3McYWKwNSBGOOgoOAC87YWsXex/xs5gD/EaXuAflE5g0MgQ9LKU+lmUoVaMQqQDSzAGdJwJJ0qrKcDP9dJj3/6HLtz2jyFL9p8GFl2+3UOf2C/B4mxkU4tpEc4WsN8jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qHeKPnPu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qHeKPnPu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7D6C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754691593;
	bh=cfUpZwNBgojQzeRhFXBVsHJwOdKdNCNze7siark+KyE=;
	h=To:Subject:From:Date:From;
	b=qHeKPnPugI5m1Y6tEcdIensoc9frbV2i1eQw30xhK9S6VtBwFPjQTy5AxpOLPZCWq
	 cj/r1nboICTvG4MwcVjGxlVQ25YWOFwdIahR79HACj3bCz1B3iTyttB07jDtZgfbQ5
	 Qqoik/+aXE19aU8WdOwIfNSMzNQSOGx/Cpwl9O+qImL60A5b4J3DGwO/8+3/QUXF2X
	 5FUokIvHbDR64NQrzXgjrsQVg68e0HnbePCHY6xvTflf2iQfAx17iflzzmu4B7gT2c
	 CseZAiIxc4QYtTXltzvrn/dpZHJxnmXUGfzaqWSYZrr8VFTYs877ncBbEa1e/xfIrF
	 Lfa+rdZJphXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EB9C87FDA
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175469159359.10617.14353830047821799016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72708d0310cfb45251a5e19cf9e11f2650f013d917be39f2f1e0c681ec337bac
Date: Fri, 08 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754691593
