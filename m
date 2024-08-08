Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1698365C
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723086954; cv=none; b=Eounk5ykiyUTUofxcN+momdaZ+sgjL6GCNh5KeqWXrQCdFnC8Ijshz+4Jjf1ttatZSjjsNKfUzVDzCB1DD3M7wI2oxbvx8jqubIiGlt/0uvASxmr+TbLdPuxpTRD+9l2e+W1H1O0LPkUp/Xjphy5tC9LbRRQW6wNem0PUZzb9NQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723086954; c=relaxed/simple;
	bh=j3HwhxlQxHslodyaWG0rRTADGpphcR8vFe5wbrRX094=;
	h=To:Subject:From:Message-Id:Date; b=OpE2+Ba1FxTbyljniHFH9PfVRthk+v7A9k7nyDkSM76JW1lXOPn4fO4K/MCVvQtRb9EhpR8LVrEb1eRYlHk8tbcv64oWDybkpckhV65JLS0+Jsn9Gxs1BzZ8QXhCdd3nfg6jCg/pnL++hYKy6jB3k9fvVZQOaPLBJZdKRRqmkwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sUxB4GAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sUxB4GAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8236C32781
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723086953;
	bh=j3HwhxlQxHslodyaWG0rRTADGpphcR8vFe5wbrRX094=;
	h=To:Subject:From:Date:From;
	b=sUxB4GAPXGaOGuZsNMFNp1ICIJCbVWo3fW2uXQNehQnQ6l8XNPFtuldpsGAnP2kF8
	 Yr5ue6OJdZOZlfDyYm8faRGqDACvJ9MJn4MIwdgFBgDIJDaM+RTsxzlt77bgNelO7v
	 US6oUby/G1GbOmM5gW3/fYkpkkpvo/7vhiOsM86obB1PJJO66R5H93NEFql7BVlj+v
	 5TeRhmUFzqJWmNLwuOWnWaMiVUlFUctuY1LQAQxvzX5x+TIH2kfzsSSeDddyRVa7rI
	 k+YnIPIsZP5sN7i5pCQik7My8lVAhPYR5MeiBG3qV9VnofGkD9C5g+isM0O0ywU7SX
	 Vo5MM2oHjdVbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B21C52D73
	for <ddprobe@lists.linux.dev>; Thu,  8 Aug 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172308695359.2606.9394657702215277803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7004e250134db6e8b8cd25627ddbfda39f43227145d437499cba8fdf33d8fedd
Date: Thu, 08 Aug 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723086953
