Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D74A1FAA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717704443; cv=none; b=cCB47msKUh9QLcmHNjX6wL37z98y6wJHkEzzNXN/qgV9rVRNF/wDWqzuNgJ2qXK32MJBL1ajEsxgNhZFdvAdj5B2Byl1R3ztNKUJphn9lufYGyid4wIXt5kudHr9c5SdfX/rhs5SjIqDDR3vMArGHWM6kW0J0GPfMPaXWZFYlHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717704443; c=relaxed/simple;
	bh=CBPxLbj+0nwExPnbjedmElfEQ+arV8XXhPZSWlWD9Ho=;
	h=To:Subject:From:Message-Id:Date; b=P13MtTX4QC6bbgw8xbFEENVSzAY3/vpSV9C0oMdJxjiTG9mTZsGfwPrkzWScVYu7W2D/Ym2goZzaCfZq5EYGHeTQ3ocWYN5iUIIdTy/syCZHcKoVHNFf7L/FEUehMwXtzSB9uzQzpce5AhdAl6mW+YylCsH94yC1V8mYBQLhOVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GuoV11//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GuoV11//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D72DEC2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717704442;
	bh=CBPxLbj+0nwExPnbjedmElfEQ+arV8XXhPZSWlWD9Ho=;
	h=To:Subject:From:Date:From;
	b=GuoV11//XWLHUBXvqSjD1sLamgQaCA56e/Mo327VI/Bsyoc6+HHM0R1rZK/VpoIcK
	 ONwuooVsqKN9DGXtniDF5VeDQBUzOwoDnXLoEf4igkpVh0Lao/vDheo192UicCPKtz
	 vvHa/0kqtEFcICnvulo3CN2vENv9LhT7pnDr6h1wIEdO7oh3ykX43DEj/teyUX34Sl
	 XBkXnOzXM3nxDd6GiO+GHPjNykkGcLLJ47jK1M4xE0XJZV3eJxLcb5X7zKDWGiP1rp
	 QK2WIAQ2LRRROcGc7AjAJdOxOpDfYiPFZaHLjoXyQY+AYUXYS0T46etMXK+dCrxa0M
	 dUnxiK6DntaQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFCFDC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 20:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770444277.21772.12369720119771437151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b42504ec015840ff6190f9ff9a492efb9343550afe1a537c00678ff6d2ee78f8
Date: Thu, 06 Jun 2024 20:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717704442
