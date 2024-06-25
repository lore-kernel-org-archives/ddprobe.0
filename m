Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F71B158A23
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719356003; cv=none; b=q66bDpmStmaA5IGlnBiCj9DMPv3uEwUTNdYCLUDNMA50osd+sO1ZGK1Kx4ps7T1M5LjBAs5EsQOcrnFsoEmpwQwCiJ1rA37NnWm8r8rGisDJ1vcl9IaqgIMhcqzltD522ec48O5iLlvqoH/CzQRae1sGip5p4wJvPwMyx5jq0cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719356003; c=relaxed/simple;
	bh=/eQ8EK9nlUyF4/XYGXXjVVnZEmQvdrEr6OXuA6kbJBM=;
	h=To:Subject:From:Message-Id:Date; b=C5Ca4T79uJLj7XW8YQX7PONFcTJAdPX1SYsleE79mVaDHy1uoC6dwkReu8CeJZjiBXehOJtqDg401ZLU4vihiG1V3RxVmpSPo3MSFwfxVeF1vkmxonisat18TzduvOuZJgRhVShTS/GSwdvarCCQfu9vhn6T3ajt0XQeM5bnh0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VUIh9yVz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VUIh9yVz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB553C32781
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719356002;
	bh=/eQ8EK9nlUyF4/XYGXXjVVnZEmQvdrEr6OXuA6kbJBM=;
	h=To:Subject:From:Date:From;
	b=VUIh9yVzMuh+jftuIpzCI22sdjebJC+Bgm8IOXWAApZCjYLnWayqo+SuV369cfvMP
	 lV4S2CECUbKRoA9I+6HKNa4LIl9JNnmhybqUY7ws0YUHvhsKs1xGRbZktuFtIXQhFK
	 wLrtR8CwDtrMkh59fiBqaKwqBBQEcMReCNBOPPtw1+xAQtPkImYGGgVNNjacrfKUx5
	 QvIE3ESP6MYMGeXyE9YCwpY1pWUPud7oCm0xjNSlebKCpTLIIBxK99EtDmGabtD2R2
	 U2amII+KrsBSdqEJ+8cZ5SLIAsWIpDkh5vJ+DF8AQHYqrGlEclP223RGrceL3oKCQz
	 an4zvmyLB9WaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9B67C2BBCA
	for <ddprobe@lists.linux.dev>; Tue, 25 Jun 2024 22:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171935600280.24558.759416455914514539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2b87b6ebc625fbbfb4147c581f6a7b5250b3c55d445d08632beb0c6f1f52ddc
Date: Tue, 25 Jun 2024 22:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719356002
