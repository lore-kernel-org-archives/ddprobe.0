Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B962940B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737339954; cv=none; b=ZMIw/1982yuYsAFkAI4aQso1RFnJWmSwyk2tX0GCUufA00s00VcfKAO4UkOnz4hMHrRyYexZ2jjsMHDFv6zBoubJ4BcXgXIGmsyvz0KhjuPhLbU8skW3Z+AtqFIIJ0mx1GEqYp6RLwkyS7LhiWUkbDiHhV59nRkzLFG+1Til09M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737339954; c=relaxed/simple;
	bh=Hib66aiFnXlBlGAbZoJtQPbz3wvK4lpdEdMXV1ml/yw=;
	h=To:Subject:From:Message-Id:Date; b=DVr6VYkwolo5EhlOYs08It+l0YGGatnCOCK3+t46YGgh9SxAVydYOTIjpXYF7YYCWs1W+rp97ZBcZDztdeighS/czPU2isbImIuHNbqZSz/7hkbhDKDuAA2mGp/lGoR3TKAnjLasAhj+GRAXJwBASz+3TU+IB1DPXcqayJQRvNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OzHv/VM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OzHv/VM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FB2C4CED6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737339953;
	bh=Hib66aiFnXlBlGAbZoJtQPbz3wvK4lpdEdMXV1ml/yw=;
	h=To:Subject:From:Date:From;
	b=OzHv/VM5W0lRzNFfsgDCfSYbWqhNiqAg1SuWoDTCwxV183Zp6X22AjaWspqV50ivY
	 IVkER3p3JCSI78YnsvmlNUbw8jkRtaJ91ndjpAR9XRk+6kYFiIizb7nHC82hMhzcv1
	 KKgcQnB1s4zAcYUpTtHY9ALLIeqRvXbBAtrqVHPpbIzNA4DqENC/i9/1jLUqOgsDWo
	 zimsGqkOp21aveD6VxQcoqddRSugLNblpP5iOHertK1jKnDosioOP+hRsnyP7j5rOz
	 bE/H7w0xEr52Xxmbofj6S34L+VIqqLLGM3dnGVblcinndwgr7eCD73JM+CxhtxbYsV
	 Cgk+njyP4PHVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF96C02187
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173733995357.2743.6311258015138370440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97faf216a49b416c3ec8307af8583b33dc805cbe5c5a6bf3a11d21c402c87c1f
Date: Mon, 20 Jan 2025 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737339953
