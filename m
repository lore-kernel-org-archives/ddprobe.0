Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B04E190477
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763764314; cv=none; b=C9uwI01X9Q+HbBNvHtv5GUUke2S415Ipiy79C9OOiu3TmCZnv1xSZ+rqgHNumH7kBtSbqkeFMcmuiyPzAuDR/qvoCD+iDgyR1KTycvZX/1c3FDlb28FPx/1exc9X0WXybcDvHrBpaAbcYYzTMQq3WnZJm5kF9lCUub58hmHm/Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763764314; c=relaxed/simple;
	bh=dhb0iQnaWc0aWxX7JcCkqLOcB04ZasHES1ggoKMvwLM=;
	h=To:Subject:From:Message-Id:Date; b=f2IYWXT4z7+TqvYDrPsuSKQ41APs/09vqBQxim1MhpWoAAkuT5FvPLwylfOr0dYO9lbu79KPUqwFcgEV+NOC/rZjHAbYo8MrJU3iNIE45SDOxYNjjY7HnzLxW/iGeaKv2VJwzwQTPVKjJzL3GNsNwRy/8od0Ne8p1LDPaJHs5b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RL5NNmYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RL5NNmYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE381C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763764313;
	bh=dhb0iQnaWc0aWxX7JcCkqLOcB04ZasHES1ggoKMvwLM=;
	h=To:Subject:From:Date:From;
	b=RL5NNmYkoy7AaSvDd568opG2LdGv/womRbZQJNS+ngfnHwOYcA5vuAjUQElqPfXHP
	 yWr79wuMzij0hXNbvEY1W/oDs6ybsfXDurzAAuzEWLJrvGXOZp0RtmLzUJCLAlOrDJ
	 txuHxRJc+ntZ/F37g/yc87SWDmHfavWdHxyfIZKCI6tDOMp7+PzX8yMoQROGCylcZN
	 voHfxWsgH7mvGYQgNjW6hdAwhqp+tChD5KoO+UOAQPKKhuIBo2DMUkdI96cmZkCgvH
	 RXAiMj56l+/qrcvzaRMfFHd5A3FjBe6R9ZQzaVIaOMgAGetCNehMJAyQ7EvZ0rUlpv
	 VzB/+xVWyTzEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994BACFC293
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 22:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376431359.29900.4696607063316805496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7e9005ad3a675c6790e99ff084b70eedbddd2ed01af334f5735f4b1367e262
Date: Fri, 21 Nov 2025 22:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763764313
