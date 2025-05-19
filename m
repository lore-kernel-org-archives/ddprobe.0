Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE01A94F
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747622394; cv=none; b=WCITV5Ur7SqYBZEiXZCm7yCdyBgm6eP8WKl7wB2KgTTl/N41ao7bI4i6fQBVZUaVJeJTX7A+8y8yteA0OyW/nM/a9BUXGhy2AvZEjvJm3YzcufQopGWdBxQ7W/BlbLBHhYrKrbrEIVuGRivY+bCB50QecBdXzluv6J87Nkz7SZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747622394; c=relaxed/simple;
	bh=Pf3EiylaZO3fSRgWRXF/fdfm4kztJWkDcV/XHcFIu9I=;
	h=To:Subject:From:Message-Id:Date; b=JyFCn4WdD5EViZMFNK15ngyIBvyz4WVMWqBw/r0jOVLASNOI9pkRBgTe2PjJiP/B0sgujzGXGH+ffXJMDTrP0uhvyn4tJGMcUdm4D0I+5g9N8TnTinjZ5da1ASCnNCxKWvK7PARQQBZkV7k5T3V/8vA8oTmEFPcr99oAT3JibtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY9Wb3Y8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY9Wb3Y8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10F9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747622393;
	bh=Pf3EiylaZO3fSRgWRXF/fdfm4kztJWkDcV/XHcFIu9I=;
	h=To:Subject:From:Date:From;
	b=cY9Wb3Y8Vmj/bSiJLVstVETvxN9/MLtmHU43YAqFjGdpO3lV7nW4Ge1KxCYTgex+U
	 rdtEkNQV0vpBwV+E8wCJdyMMOhJ0iQ7bfrc/5Bre9MqbMJ5PG7wYmHRrVBDiW4+w29
	 kMKXdcccZYzp9ScCPYaTpiA4EXu1AADsFc2tbyVSNFw8BYO41AZvZGNd2YX3Q8Wfuf
	 0U3YGC8vP83QaIJ4FHbUWb7ZJ3BZ2wp7ySBKcYGv56Q6BvCuo4M7PXBKxJP3Ac2Xtv
	 FaXW2ZQDPoIn0VYHK7BCW+e+HGmYQ75iz1ZS/03gqQRlfw2icmpsGZeC1eSNpykZ7+
	 I0anOMcpSYepQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F12CC3ABC9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174762239357.13832.5817713716191978979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea9385f529490b2d331ec0c6253cb519cb972c2de9e3447539f5d552e11f981
Date: Mon, 19 May 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747622393
