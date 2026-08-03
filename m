Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DB035C6B7
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785753634; cv=none; b=rKjLq+zC6IPImKeuKkis8Lw7sdQx6DkMtqH/Xd5EY2QZJK8NUaxO4MCxAEgRgezGzUln4M4SS+xLC0s2ADYNC8o+6HQ7HZEE1/xdeJMJ42xO3qNFpJYR5631Qik10/CdCPwA0iANxIdvDxxthS12E8263BmxF+rBU0q8IJYlWys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785753634; c=relaxed/simple;
	bh=0mHCRUfsjcBgfytJ+TCGfJs8sAWgQGoc/jbqimOi06c=;
	h=To:Subject:From:Message-Id:Date; b=CH5/x/LzPBBV2rou/mIO73CU+6MJV36BuvDci3cnVn3DU0WUvdF2QeWNUvZXPcWqfL9Nq1/5vZiC8R9BWwUV8zDZD8CFu4CyBwKAw4Zcdp+Ht3vxVwrcDj8SLLrLvwN+5KP98FZB3FPaJij0VLMYKoR/59jFRap4D10TXxZqeLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVxsgXfj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVxsgXfj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAEBAC2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785753633;
	bh=0mHCRUfsjcBgfytJ+TCGfJs8sAWgQGoc/jbqimOi06c=;
	h=To:Subject:From:Date:From;
	b=FVxsgXfjGwAFHfcVB+OFji46s+dj2jXs4QYnopADORT1yRswGpVCN0WMg2zSnUL+N
	 dVbutQpIO2dY+I6Gyvw2aiEYxPJSwvhalaJ0HUIZqetOkZtGmzbgAevgl7rdySGvLX
	 ncynRiINUtyc4/XLLxGQvVSGFyYYVrRsyEkhFNvria+l7rTkK+EUQ4ZSaBJ9KN4/fI
	 zeRG43+05cwxJsC5c8BgoBAcGd9gN2jmxFyjHYNGbWKjPfCTrZdpSiJLLn6VGzeNpP
	 WMucScNFwjlDn1zn2fH7PeMsyiNwcDPWtBIe+Da3/sOw2Obp7x5at3t0yVqOOiEkIu
	 Uyr5njxmiGyPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B62D9C55196
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178575363371.12648.9146159437796286385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd555c4402110e467cca1a26eac329c28e666d1fad6c4e788eaf03b9653757a3
Date: Mon, 03 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785753633
