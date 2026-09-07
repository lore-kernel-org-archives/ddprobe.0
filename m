Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB38274670
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788749434; cv=none; b=bYBN21UmVkG/gUNmkZfhrllA/AsxTS/UcBNeEm77rZnq/RZeGF89F5zLHnK8ouul+SUVpTa2hbxkm2ZDTQ0jRBNmuxCaRaMQiThwqPp2e68yLK4gYJNGSPM4NYs3cGweCOf/o78zb26Ii9UUQoaidXxWUJ9nncRD53eO8ztuRvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788749434; c=relaxed/simple;
	bh=RJXPk1Zigp1eiW1SKUrgGKyfq3DecrSqBDBDw8QmFUQ=;
	h=To:Subject:From:Message-Id:Date; b=qoN6WcZ35QJ6dqYJGePDYISVMGUhWkSj42lo3cPlw6mMv//K1E2Q+116eFdvxawFREIpq0PumygPBIdkg7MINTnXKhL1xI5BjoyYoIqDLT2tvrQg9Zt8MUDC8rlVcWUXE19h7knKQ5Wjg34n1KEHRcRuI49Ow4ij6M73wcOLzf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UJ+SHtEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UJ+SHtEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DF5C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788749433;
	bh=RJXPk1Zigp1eiW1SKUrgGKyfq3DecrSqBDBDw8QmFUQ=;
	h=To:Subject:From:Date:From;
	b=UJ+SHtEN1XZm1rwIiGmEBTcjqZNyAtkEIzHNsXBcCsRZzYOPXn2yOudQrPo1+/wSM
	 6cmj4Td58/BqHD9JM6loSpGV5z6dK5gJy+6cJ15oMOuezhHysUy2euKFjBrOa9n8B3
	 NWt633ocd/iIIubwKziiXK20AGR0Xh5a19+oV0x79Jv7ZTzB7W/1wwPkrVYIozBzFS
	 dbA8bjli+4FQ3FEyQIdtMX3jA+B3WXj+6a9S1yW68bHsmBWpDxOGzUvAZnhK2M7v9/
	 JU5/dIQr3mSZ3rm4QUuax4CN8Y6HpVT6fnG6ISrYU1Dlv+wzoPrn81NG9PeHj9q7iY
	 5ZepgWvtQu9gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2BCBC79F8C
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178874943370.21750.2456437334702635977.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 565aa5c3fb8d0b51bf1c10ef8fccce16c3ee9b91a5d9caf476cc4555ce82e139
Date: Mon, 07 Sep 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788749433
