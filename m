Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80C21F30A9
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772151293; cv=none; b=J9uU2R977jrTdexaMJ+nGSxX7lMOQrd4L+p09bozY+qGS+BJ6NwBEt2WqSbV0zd5ukGO0wbKGaY94OzVaQaUSvyO7hdOPo5Q7alVTlUc7gFbfTg4CjZzeYRVcDVOnV0PKOn+cVhoWairasfLArOG1LG10SMOJWY5m2Jw+rguFHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772151293; c=relaxed/simple;
	bh=GHIfvx12loTDZXeFfPIUPtn2iI9ZVZOCShyU7XaP/3M=;
	h=To:Subject:From:Message-Id:Date; b=tLkpaOBGmiPIVAPlIdA1CTtbMkjiFN3W2vYXQ9QRPvI5YpSbT2hQXAQT74oniNj+t1JXLQ8kbOogs1dY1E3SSzxvV85CUYOoW+6EL07rOse52drZdpbrlnIGHMRvPN0Kk0jYwcACE0MOl/cJfjf/J91qvEwkkxW/FgWEs92d+X0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACzoOe+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACzoOe+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A348BC116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772151293;
	bh=GHIfvx12loTDZXeFfPIUPtn2iI9ZVZOCShyU7XaP/3M=;
	h=To:Subject:From:Date:From;
	b=ACzoOe+E4QxnnouIxGispsW1rlHp5ORTwCdSzVDTBGeaZiz3NfMH3zhh6/aGg5Qu3
	 DhfEgkI6dInJf2MXSFiEtzx21N8/x47jQKVyWd8RD2KTk6eYzCN6Lezt+dirhZQv4h
	 RTo/t0rRRpiy4ZwWmTpth+gt9ws/XrMJBFfYwWLPnazWwD0fMYoC72ijZSmnIJJtOk
	 1lZBlWfjIzanaDJOSq7p13xXCbyH/S92b5SJB0MBrcIUvFQ5NF6K5UDb0zfaf7NwSh
	 /lBy/4tfsbwgbxlhrO3lZGtd4/lbe7lJkO3xqfsxsKvqXQDyK2JlcXb7fcQVF4BZTL
	 8MVreVGnzwVJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91800FD9E29
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177215129358.31163.16618038387738503959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e516d2fa0254cae4385ca2458c1b25945f45a3473df1b580d4af03c189841b6
Date: Fri, 27 Feb 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772151293
