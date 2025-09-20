Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A4C727A924
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758354594; cv=none; b=Wmzuh1g3AzMCKvwfk9x1zy7xlVDjO3c6A30fcyBowJgiogiK1bsQzCwdr7rTD+PHxpJiercXzmSqEgUcuQBnzsLZXkIuPLnnVGyU6+4A5kLDJpoJs5YSpUPOF7DCDLRUOrxzHQ2cCA79BE6bSx2MkvF+7T617Av7w781C3JQouo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758354594; c=relaxed/simple;
	bh=n8+Zk3BPbOxEFy37EzzCCwZp9yuUGa7SRavGSW1UtGI=;
	h=To:Subject:From:Message-Id:Date; b=tn17y5unnCTWEzVunXNPrV81Yz0vUPfqTotqyvpsUR7Z0f08bzMLhdxFrks92BIqK89XYHl1pMxgmBHAEW7xIPNw08DuIgUJmpMgNk2EFmoOjl7e7T2gQLl1Q24p6U2/mHEXpsCPWfugzMSB0MWVeFBhBvHzkQloaxdxE1BkN4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t3EnwwIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t3EnwwIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A99F8C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758354593;
	bh=n8+Zk3BPbOxEFy37EzzCCwZp9yuUGa7SRavGSW1UtGI=;
	h=To:Subject:From:Date:From;
	b=t3EnwwIXpDRw8lsFz2goMobyDjnPvuIOV9UMmWbfDmdVgKLfSJOrU2dn7EoCkvSr3
	 j4dqlnXjVSwMVbogkKYQtKUH30J4/SSmdcg3Si8jlG/mOYL+UI9+LpsUdcpMlMRkom
	 3cJS+HoQY/Otj6X9s5KzWg4ZBv/k5d7Gj4hCokriG87BuyfnMscrlvXa2cQZQLkc79
	 +uIcZgC2ahYx62JqVIgq/OSNOjpC7te4KG22mdQFo3DaG42Wg+ysEYZqbY8QNaQ6Ir
	 sTZmFvFcmYFOmGCYpLpZn5e9CcbqAb2p6iN93/lTUDLPZv4fhcChXwC/sWeZJVginK
	 7JYHzN+5/jNwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929B0CAC5A0
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175835459358.27970.7441157172875137238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a667db44b94c46d8bfcc919d9d0a2b84507d61ac65c785e3b87116dc1aa6c514
Date: Sat, 20 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758354593
