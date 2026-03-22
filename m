Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2614C11CBA
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774149294; cv=none; b=jDuC5gD8OX4t0IIBNXISrflpimejbGAVl4zEZjt0P9fYPFBwarM3qjOTfp+RR4zAC3RwhZ9SFoWAMcb7lXbpUMkITGK33UPiaMZcPCAmXAbjRrwDHORGhSLFg0cU3UjZlEPvEMCvRZN6gBa22FfycCY5tPURUKFyOjLJK9R3D78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774149294; c=relaxed/simple;
	bh=3ZlMudwJs61RhNdvq1WTSUW83IQb4jPkecBAmF8gG5Y=;
	h=To:Subject:From:Message-Id:Date; b=V042mprC63tqDpiHgwDi/SVAqkK3kw29iLT678W4LRP75WJ0npyipRSusTednV2mEK3p4lmQa9NmL4PI+FphzW+HGogoSz6hQXiPboArM19DMAOfEf+elcQ377dQ+osdWhLGD3YKlFc4XXKQgHPI/Bi8Nu3Lu/HkseVprUqSNSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVS7kk1T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVS7kk1T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A537EC2BC87
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774149293;
	bh=3ZlMudwJs61RhNdvq1WTSUW83IQb4jPkecBAmF8gG5Y=;
	h=To:Subject:From:Date:From;
	b=aVS7kk1TdFg15GJd7kfYN9M6zJKVB8VumgxHA2RPFrtLOZeKpXq6lIJWCmRRbB5Gw
	 Mq5oodSD1h8kPafbnfL1hXyTnTkOIj/xvxoXZmNjYZWvKRRRgGw1NzQ0Rhq/Qo4kWe
	 4KC/4dLdXjb2v3yqpakZ6PhnNKs8VFRFyin1KaNki/cfb8DuWkI1zZpa+YUoL+n0wm
	 ZO+tweHwjSOn3QTXbMr6aXKMCihW2asKKXQQxePyRJ9eswm2Xsh3Y2tAyBizbmvxzq
	 iDU2MJQ1MnDI0Ax/lrMbDTb61saJXNRf700APEnOOKEVvi62fTcDbmzxeQ21nJ1EE/
	 k/GmKbteRRFdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942101094481
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414929357.12098.16253699006862624124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9da6397831610c3536212eec67d9521059a3df036875644cb2253472e0a4137
Date: Sun, 22 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774149293
