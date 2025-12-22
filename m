Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5F0224AE8
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766382234; cv=none; b=pJLlnGfkCsGEBm6MpB5XjrcTRQdGBSuJc6be0YujCxbQ6tyyAi/pQYJR3H5mpOTOsnrHWIo6LBIsj9OHgnKhrw/L943FHKpk916LjSBdSkwoP5aEgvBochSyH2+OfP0WAc6ojBcxMeJ6c08/Gt7m9NrtpV27o2gkobDkCMicS3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766382234; c=relaxed/simple;
	bh=VjHb2P7AWjpHNV6U2zfB5cDw/iZNLKcOln8N67O4sHQ=;
	h=To:Subject:From:Message-Id:Date; b=bmNjZjH0D9gDdO/toT0zp1+S5R19GcgB2TxPJa0N5Ms5cfXJOdYoTNx/WktpIB9MAuZ/+yhgOd6xxjtPXA6Z57VdbCP1T+VUEnIyuEnn3IJwypL2JHCWnWzxT0JieUgP0RLqR/dW6NYyGOEMesc/J7jT8odU7yLa3CgSmFLM2PM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VqQM7gcK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VqQM7gcK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22D2C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766382233;
	bh=VjHb2P7AWjpHNV6U2zfB5cDw/iZNLKcOln8N67O4sHQ=;
	h=To:Subject:From:Date:From;
	b=VqQM7gcKhnaOSWzounW3Jm85bPbJax4PWzk9UxfQXLGkQwN0Moup12dMzgrXjWkgw
	 ydB8uMaEDxzB5wkFac1QyyhgTZ9WKcuY8ueRDT7zDVuRcrKlTB3Oj8pDG7eevUprno
	 Q9tZUDjgFEPzsscaEF2mtNfRDdLPRsPC7eMGgOW2q2XCsXSHRS2OzWAh9+rMjFlFez
	 JmSgoHpE5RC2EOd+qSJtjbxqfON2mObdzPYzlRJTXPQJl1XsrI1Cf+sZ0USESATOn2
	 YGpGnJfvYGIA/VME7ve68gHp9K3FJXaCKQyW2qNxkJr1fr7Gqd7tTFBNS2iRC/YeFZ
	 seW+l1QNA169A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907F7D711D5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176638223358.30454.12763907804128140832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2b97928437fcf27799fd2ce82a88974470e17bb3f61c7f54b3e8150ee1f8a47
Date: Mon, 22 Dec 2025 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766382233
