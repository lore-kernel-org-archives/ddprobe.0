Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0D3350D47
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762878594; cv=none; b=cFth53kE/k77MjUF0pBsk4rEEJf0hI8wg5SciHSFCU4kn1gQj3igzxNdTqNeY2FF7iCsw3LYdY1+5/MKRYbfhFYP0xKVfNIjlHuDuSnZkO+rKH0oaC2utknMaB2huEpncrA5DJ3iDDkoiq/n6BVcQXo+l29W9hxl5oSinsuHoGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762878594; c=relaxed/simple;
	bh=GBNLOWlqzFzmGrH6j06Pt0a3m7HeItZrekWHYWIzKX0=;
	h=To:Subject:From:Message-Id:Date; b=pkrH9RehDoMlaoYBFIryr6kHcX4rv4uFukX2M39nLQTuIOAj6y1RuuXm6Sm3robhKCP8+12gEXS+EFqgxO5v0l2+DIKsjXXgjce9med9GdcuhUOzxUrcCEL0A6SMSsTCJOPxHs1Itt9T+uGSg+JmMBVAbNuktyZ+hgwCfE5NU8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heDsDxWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heDsDxWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E74C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762878593;
	bh=GBNLOWlqzFzmGrH6j06Pt0a3m7HeItZrekWHYWIzKX0=;
	h=To:Subject:From:Date:From;
	b=heDsDxWgFvF9mTenFc6/Hz7MaePEqO7RU/CbNrlQF9Ou8hmh0jNluXE4iABOzc1PZ
	 2ZH25RIqMcpAZbqk5wP29raVUHyGSUsscFj2WZVNmFIwR96CyqZ7bAWhoCknsMe0X9
	 RDjedk+YuGvZIs8dyYBK6FzUAQ6xuOPWD/MrM0uSlv34Ps2Aszwypzsj5G9SCydwKv
	 nvtpUYuQJRlBoiD19re2viRbWGdapifgzMowyiM4VghVdhKqe1dH7QTGcxrB6ECSAb
	 NzgJMROCUvA9rhnzl6PdFn9ZXXNw1UiFvK7av8Ln97OvrmBiqQ2P8MEQMQ4P8xRVU3
	 Ynv7ayRScpEng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E58CCFA1A
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176287859358.24985.13205289811509656762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e58477b4d883eae91caab0a4e1a0991e83cf9ae18e52dd495e94d66ac146eb
Date: Tue, 11 Nov 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762878593
