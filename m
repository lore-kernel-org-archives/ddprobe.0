Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB0E145B06
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720461383; cv=none; b=FGeiD6zrdmH6g5ZQY3AxBlKX24PZJzdCkrxaaBIwVAtR17Rp3ISzVb2w/o4NwQoNU7ASEaE75PbEsICWAqpgABY0ZFNu7pTe1AD7AnlvlfIxgz2NUU4ZbCFm9261j8d5dlqxP9O3RwWFPCYnoczX1YsAp+r5s1+/ir0T0rAL8FY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720461383; c=relaxed/simple;
	bh=UvHQfUaqpyk+YLkLBmY1EWVtygs7tAA1uRTJHCz5n4k=;
	h=To:Subject:From:Message-Id:Date; b=BU2XOwhJXY/TKViQSlswD0TraID/uCpvEua8uEESSXSqkQ67WSp23nUfdJ9skHRSmf0yb4rO8bI/j7hihQZe0XQFfvLw9L1j6dGbuo4vFtzHAbFzfzRzx6n+85RCahIGqiBGJD6nQbRoZMyDeiZMlSET6zxpqDIw209gNAWrZwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+1OOOai; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+1OOOai"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40FDC116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720461382;
	bh=UvHQfUaqpyk+YLkLBmY1EWVtygs7tAA1uRTJHCz5n4k=;
	h=To:Subject:From:Date:From;
	b=g+1OOOaiu0NeWlPOHYfdU88iQRie/it8LjACE8IHTKKdP/0RuvxxoSfa8S9uckp0i
	 KYBquSBtZbBWaYkO1PsKMXIc1KWXjOpDiKUhfFfHr6v08Qog1dNB0Qk8mJ6Jn5Ri9n
	 LtN2VptLwQ1Yvl3ADvjskxPdfolyblEuBf7egM8Olp0dR9qMwH4fcc/PJguMoy8zm5
	 dxqBesx2HxyM6OiJq47tB3wT8cEjzkdyuzWeWmj3o+DVBTm4otobcQSuCf12fIjpnS
	 D62F/Ek2X0xeCm8XVJA80Lb51Vx5R6JU/cLqvPwMVJqGfg2DW6U/axofkhs2BL0FHI
	 sqyRx+zxR0Fpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D17C2C3DA41
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 17:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172046138284.29670.8158390368715889037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6002f02482e2a2ab7ca3a7f9712fd57599b79a93c4879efa8387bcd718c39384
Date: Mon, 08 Jul 2024 17:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720461382
