Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BFD4B5AE
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751598594; cv=none; b=Lo/wKcTDnB3wF1uw7yd0B6KWoRKXbw4+4zYC6qCgTwag7qodpMmWe9A/d6+geotO9wQvjRl5jFHrfM44gyHMnviHpBHAFBjME0fSRY0GIf1rdHu9mNqnI2FT6QiGIwWPJbc2DP2++ATlRj1LuaTHawQ2b+DTCD4QImiOZ4ezKRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751598594; c=relaxed/simple;
	bh=jMG2AV0RuIddlLIbdNXGWknr4K9W2jSFTjYUMeHmiMU=;
	h=To:Subject:From:Message-Id:Date; b=j5ZlPEqH1pTepQj985KhQ5NfWxG+SsktncWSRIDDU0BUvypKIUnHOWyM3lFZP4UV6djiKp/2o7zI+tDQNE84cuzGRwJotz5j+QCeFJgMsQ1Jayw2AH/FJfXpbcy8r3DJXiUz3ymu0F6ABJQAfqLQfubWnM9FZ3YYX9mBNEsreu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=he7KDhio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="he7KDhio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E52BC4CEF0
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751598593;
	bh=jMG2AV0RuIddlLIbdNXGWknr4K9W2jSFTjYUMeHmiMU=;
	h=To:Subject:From:Date:From;
	b=he7KDhiov4nTja8Nzd9rM8ICxEX3mEDLEHmaDUUnAL/WgtklPJe6A1wRq5qA5xgDb
	 4KcYCRYaWElxUsulY1v0LLOzJghqllqCUHQikyNUfBJ4k56HjkHbgHUVQyJs0f8U0u
	 BShGm1C0KvvsA05QEKTdyoMFwhfSVdGv1bcGB/MNbYPETg0jNlHLqCNPI0MdYaEeQF
	 U1+KJOR2RZe2qyyq34tFsdZakDYrTzd6ytmPc1pxcHB4eRIQjxpMT0i3spSax9adDI
	 wrt6ZPKKSLh9VzvDFtXkVDeO0910S+MV/CuCv3tpD4cAfh4zASl5J6AXOHdH9z0I4Y
	 9d50E4dxFhd6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D9C8303D
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159859357.5526.9439078210857891088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd6a434e551e5b0ef2bc94ce6ab5f68755537e52f324ea9298cc5746c1c7347
Date: Fri, 04 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751598593
