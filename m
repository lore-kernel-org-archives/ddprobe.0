Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E21B273F9
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736442354; cv=none; b=ncTZdw/Tlke8jcmSan/8/v+BJNxvf9uUYC4H8ihyjWAnVjE5C/wAKWlqKDObYdnPA0Mkxu8GoJfYBKJDrg9Lt/2sYwozbq+fxmKMNNuuhj4Q3LQCjvYvDze130HuBeipLi22FbBqtM9jqMfC8es7UR9NTYpcYDRWcuzhzBbSAsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736442354; c=relaxed/simple;
	bh=VkUgi+mOxl2riNQ2wuhQ/XOQ3RltIfy0Qobmv4Q3euE=;
	h=To:Subject:From:Message-Id:Date; b=EWg7m05Eu7aHEd+/FphZlr/qLDetkjBXZuBg3Vh2EdyQBcgThPbswQRJS+qKXt69jk1PfxzBn+k1lYwr2vTdKnQvNugQVjnlS/ut/LjcH13RqZOQcsmMFivO0P+L13zQTJpnFn+pyHu/bNkQ/tzF6LY0fm+KxEaIId2yztLIkxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B4ogW6j8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B4ogW6j8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C87C4CED6
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736442353;
	bh=VkUgi+mOxl2riNQ2wuhQ/XOQ3RltIfy0Qobmv4Q3euE=;
	h=To:Subject:From:Date:From;
	b=B4ogW6j8QZwXmTL19j0/zw6TT1knx8q4tfeLZnRTcGR6YPc6HQpJjgRridt+X4iQX
	 /0Hs/9fQAyR2YXILKVlzjBiQbaynr41I4FvxPj1PtAsW1qx9AMSKIwCYjFIFgCeu32
	 usds3CAwZfEy8ml0mu4FbuJMe6llG8pEKIpseJDJc+1JcGvoxGNikcsIgceHfQ+PYN
	 X3q8fQD5uGqwnSDN9yIeyEwGkgRbd7Hbes03UO5mMMtzdlmGm3Q0F1s+aYXnr/eA/l
	 d/mMhW8omnaYopVaNiTwYOzzIwt6Xxt58tgn5r4qunyxBXSCVD7qfI357dUjJEunaU
	 oQtBadxulZrpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B5EE77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173644235359.19028.6125819925274356131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac48404e8353a4614b6347824691bfbc72f0c0fec7af6385601d06296ba08545
Date: Thu, 09 Jan 2025 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736442353
