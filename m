Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605744A6CC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789563634; cv=none; b=LKbfReLmqT5o98PMJoFpS61cRqRk80j7QE2GoHkMLzcLl8KIpoRJcCNOsjzGSXm+w5I58G3UsbfzeNvbgT7fXMjNLcxdRdlo4cFyzdjr3OMr5KQzipzBSIRAWJErg5y0hPWt2xeNK1UIvGgwVOG415WFfxhCxk4VztmlAKtofxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789563634; c=relaxed/simple;
	bh=8zBv67nGfi3sQ4CzecE1Tak8KGsyTfM2w6PqpNaB/ck=;
	h=To:Subject:From:Message-Id:Date; b=ev7Iyv3j04fwQWEzDeAWwuX/DH4h8YOgIN4uUxh224uiT2axiUOuvb+3SUwNPXv00aeQKpYHScjeZJRXuju5q4WEIN4kxatP493TGQaCH3VJ0asYZS6LaR6Wm1wHrCw7KFnRI9XXkwi2+wjyLS4moVf/wYCaOC3YqmaKJZe85W8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGfqzans; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGfqzans"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEBEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789563633;
	bh=8zBv67nGfi3sQ4CzecE1Tak8KGsyTfM2w6PqpNaB/ck=;
	h=To:Subject:From:Date:From;
	b=bGfqzans4NC5TXCpkQZDn0Iao6h0BS7uUJLEE52t1LMFLmaIQyVW2cP8HLPxCKwwn
	 RpEF1LxfPWr9YtN8l1OLE3/fGySUkewJlO7HUL2McB4rHB33xg3nKWUdk+OBm+bxc4
	 scQnNYYRBKL/60PWh+qkftTc9xBUxRRS3HEr4kT+UIaAFRjOIEpg7VjuQ2Gv+gO/UX
	 vlcjY35hfb5RNFZSPMlMMAa/iSIWc3jp9xm9uvtwokbtKquNUtVNjrKjLgfTn0KApL
	 d2gLT3hR1fJFTY/yOXxcbgXBBeVzr8eaZB3KyTcllJuZx343yJYn9sHGlMVEsqaTYI
	 GPqBppKQHzYgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4749C982C3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 13:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956363371.5593.16931365482054363459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: afc8c10bdb584a68668e82fcf19e7ce130e1e5ac61b3a7bcf9f7e4d563a8232c
Date: Wed, 16 Sep 2026 13:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789563633
