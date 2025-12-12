Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC5E234984
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765545774; cv=none; b=gyu3cq8FF7LH8gj7LorPyoJCWRka3pVjc0n/a5JKdLH/25GGzQxtv/74a6ADl0vWwT5v6Wq0iS+kKR97h4L25Sn6MlZq33aIzZsXzuYzTW8v5rmpgxq71GYiH1VqjsxkfUb7HTxUx6vw47bxbcl2fK80PpUvq2cTedUABqr9RA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765545774; c=relaxed/simple;
	bh=7cmcAQPSiK3CBSrONqDHVpjXXt22rqrX3+OXMgJS/YU=;
	h=To:Subject:From:Message-Id:Date; b=ffVIwAHcvulDL3wAGwmlnq4NvS7+XI8IsOKhYNLr/puBGQSK86QBotKOtHar01ISIuQuo+mRvffDX2pONWqWSPiOpw88RZfgJnq3TcmwMhJbObwqzKpBhfNpdXzAhfNJKXcQiapMDewb1Ouo7meAAg1YTP+YCqGhbFc8Rxu0T5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/R1e1Qz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/R1e1Qz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF971C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765545773;
	bh=7cmcAQPSiK3CBSrONqDHVpjXXt22rqrX3+OXMgJS/YU=;
	h=To:Subject:From:Date:From;
	b=L/R1e1Qz/uTkfiYc0TIlaqisjpEfG+7ZInHD0X0NAtFGxft1VWbrTrXF6ssYLdEIa
	 QczVUoo+sRTJwiJbR98f/S608UW27/Gegn/1jETXM0qX7vm+j5jxaX1j5nVH3jzQ/v
	 jk/Tu/0suMJ+Imz9AMGuKetcI+LDSd1+A5fxnsdL81ooohIWhrZwVjMMvvcwc1YKIy
	 3/ztgC+edKQjHu9tja/bf7BdihpEpiJ28k9HcmIY9GScADrStzi3EguRByBV5tO52V
	 670SJBgS+XTbGswOzELQ+8VjqRRz6LOnRSnOzqXQ993bDI/vneB75X6Cq/g0Ibjx+4
	 MzAwnFhe/nqrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E684D49228
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 13:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176554577362.31823.11834424172724490322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0a0674520d64da31827bebdcf13b24cebcfc206358a1a56e65c46d2fcba3130
Date: Fri, 12 Dec 2025 13:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765545773
