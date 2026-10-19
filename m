Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 815A24E56F7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792414234; cv=none; b=KGsTt5IkV9KpUWv3IB805M9PaRp2TsUlgA2XsLv0hpy85AVd8XL5ep13Du4EsJ9s174lqZk808E8QMEFnZX7e6EJDnNjjHpBCRw8DeYIEF5vwH7CwRBQjXUbrHZhCC3IwdgEBQKTLca+WwhydBhXQp30AXy4DX4iJu4UX8vKh64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792414234; c=relaxed/simple;
	bh=ny5moEnjWHhMw3QbMHXaFiUVD7pHz1QonR0+l9kdTrc=;
	h=To:Subject:From:Message-Id:Date; b=a/hs4B9zafgj5ne9LxCd6pyJuxVWqcdfRVB5eyzKZdLfP41Lhh9tIMYkjfJZZrf6/I7id57IqfdjHYGheXr+vmWpt9hBr9/jgPdhnsAH9M/6Gunf1ySoW4aLm2phVQI89strO+mayn2pHpcr3Q80bxoQaKE8J13NCGhYHtU3jPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7ZGIo6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7ZGIo6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E93E8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792414233;
	bh=ny5moEnjWHhMw3QbMHXaFiUVD7pHz1QonR0+l9kdTrc=;
	h=To:Subject:From:Date:From;
	b=Z7ZGIo6qQkuoDbVc6+zPH1h2AMUAmg3o8d10j5P6Y6hKbhI9V9X0unDnYtDCgw4Nr
	 gs0v+Y6jq28tDVmutxhi3cczr8i19pbZcWgoympBA12Zo7hu1Wt2JDcqT+YWjhzAvI
	 /dsrAAYupoHMHFLrHbW/xEDk5G3EsFSS49NwCAhLvjun5ouCDQQix8oQTyyoIPJWF/
	 wnBcK/i1tFuGTuqQKqB0PpUXVpJTmMRpPA+KirYqvgdE+VbCVVYRxk3miO3IR+jQCv
	 iXci5MF5SOz9sif/CCHQ8bgK+Irt0Yz9v4eqsyEXv7POTA34uUuzj+LA5tYLpUwMUY
	 rKfOSZDM9bsqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B75C3CCF2E4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241423373.11674.13078258884274143269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88801dc5438d0c7f6f3c9f4d59774b7859dccaa0b3330a9859d85a011296d91b
Date: Mon, 19 Oct 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792414233
