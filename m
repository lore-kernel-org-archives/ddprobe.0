Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E0AE192D87
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748356194; cv=none; b=OiSHZjm1m86MzmcGreLVpFoNNANtXbcvyAlQJTRzJI8sW4zhgLl3SvyfQSLPPBB6BCSR+Qp4o7Y69A+bE9wQ9HGT+vxJm6PPtxp7DSjKc420VrktR9hH5KBsrV9UbESTZ8b/I9r7rqfkT3jGVaJegTf8jIyjOKotl+h/6JSO7Pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748356194; c=relaxed/simple;
	bh=Dvqn15lANAToJApUpFgp6BOezo6io3r4eHFjmmfrrlY=;
	h=To:Subject:From:Message-Id:Date; b=BZYPR8pboDyEHRHI1xbm1n78lstNnH4kVVnFbI/8cbVFHguUbQnTWsXSpSphxbx5oJwOp6Duwo37Zb4bTIsjrp1XffUpRuLCl8zkEoM6lPzVwAcQX9nI4VJbBTJyyDVYEWR6NDncxRuI9yri/yoVpV6EpqeXj3oWBk/gg9YoUgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iQjLXKJO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iQjLXKJO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CAB8C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748356193;
	bh=Dvqn15lANAToJApUpFgp6BOezo6io3r4eHFjmmfrrlY=;
	h=To:Subject:From:Date:From;
	b=iQjLXKJO0yfUC0MjoyHo1Wl7Xw2I9fRjoBzZjV5l+7TXAstY7TKQ2xH23Ea0Mqohv
	 RzImGJXzn7uJDZYIojsljUZTVNcXWY1lLLt19LGgcQyknexdGFo1rMmPnq5JCjq+EQ
	 mCzdmLciG0pssDHMeLDbB5saG/+W1ECp/GrFOywM5Lrv6t7Aq03XlOzVUv+VOzPTYW
	 0LmWmeND5AkCRy5SA4aPGh2eLCBO3COayHHyGIG0emthebFL33bHTlU+GcgxE2gKhZ
	 tEixK6oJ+h/8vNgu5oBD9g8Qu1z6bEto57LYQfACTQEtWWMPlzgEFiOwUsZPh/kmzq
	 s/CKrnVOoiCLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2E4C54F30
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174835619357.11045.15771104631752561312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1ec96b0ffbcbb7f79d9b86fcae21a27cc786799d4fb546453f244f239a6dab5
Date: Tue, 27 May 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748356193
