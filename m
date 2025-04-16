Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54EE71FA15E
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744818594; cv=none; b=WlE9yjjWHZuUETPlSha0yWS+hpoZXEwrIpjPnIODlzFnHkoQx2KVBsxTl83BTDNqac58MQmeOy344QjAqGIFzTx4C6AS9GS13lVuoQhmZWxZjQhgb2iu+PU2RflvpryK2cw/fn1kfA7We77Vjyej4mRl0z1HlTke7QmTUYpGQzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744818594; c=relaxed/simple;
	bh=o1FK/JWPiBcBUmKdCktnaZ/HqtQTX0+ku74GAefwtvs=;
	h=To:Subject:From:Message-Id:Date; b=M02ODDSknlICS5q8trs3HfHCzRiMjtVQkqG6l+1aSXcY0aSNN8zjc5muu5JIimad9oaif/eBQQpyUhgA+zU/UWE0fo2T2pi2DZgf1kszX6/V1k+SpP1+a9+mRWjo2BFsH6ggTgjeAvTYQMVbNDnQTfOHWg0KFfduUGrg8HFZ07k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RrdrWHAQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RrdrWHAQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F0DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744818593;
	bh=o1FK/JWPiBcBUmKdCktnaZ/HqtQTX0+ku74GAefwtvs=;
	h=To:Subject:From:Date:From;
	b=RrdrWHAQALB+0WenByUSvt4O8IfTh+Jh8D1d0nuB4dhVBqJsIIyXLFhw602O87nOf
	 YQbid/5SaDlHn9zanjvMIGInEdyKEKvYQ6vV66mD7gwNKZJgb2pM0SqlnnDAKqNytt
	 V6eFgxqhRKWxsXWHQjQn5KLCi4dEJmETfb84s1xAuqByh05Azb4GkAvSC1ZdQiFpuA
	 g+A/hmxsRHtnDAE+zE9/+kK61WhxBTrdR8bqa5sfvlLdrbhNlHzhFliVoVe1C8pLgX
	 +jC88+Xi1/uKFTmf4MayRD/zDuTxLIYuUe0jJew4ZQbD3PWhRd3cCH4YOSnQWuWwhl
	 5p2D8eaBjZ0EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C16CC369BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481859363.21369.4800764258152711750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb03c960cafa6fb5f3529aea221a96c2f366428426a745adee69a7b81e817192
Date: Wed, 16 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744818593
