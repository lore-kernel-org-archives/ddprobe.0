Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8EF1E3DFE
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757786994; cv=none; b=e5E+haBoAgPyEJKrurKKaPXktFmQ21ZNkpEVyup2Y1KBUwltm0NAnNQq7jtzUXi6qHJaBvincjAJcwIYoADPE04ODcp4ymfmadNhmJLBoFdzaYjL0coYOfJnuMP/Nk5TMv15X7nPgkSs45x04vNH8BypRiO1eCKpka5kG6jKOZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757786994; c=relaxed/simple;
	bh=7Ptvb1zjTcv/w4chzAyeHXdjNVHvkuNLtEeBZaAWisA=;
	h=To:Subject:From:Message-Id:Date; b=c+WnN1bv6IHl8iX26J6L6tojwQVyiTsgpW6xi7S2YWK5mj69HcZjl17LG7az9XZ1btrrtjKEWpUACrBsXkq265ylG+q2m8eQGIMpTw6vAzxRP2yHRR5U8Wg8kaDOYJh14nhY03nlJgO63J8Fb2TUAbnFvIfnUamcCnxZevjq1Mg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e5uZwiJL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e5uZwiJL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7076C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757786993;
	bh=7Ptvb1zjTcv/w4chzAyeHXdjNVHvkuNLtEeBZaAWisA=;
	h=To:Subject:From:Date:From;
	b=e5uZwiJLX4TuUIjuaDz7UmWcVCMjhgSvSPxA3Mxku2xQImf5+SxZgwVU2rSLA53e7
	 dOp7QrF0KmAnx4VwCcRrbmOT7WG+pVwCMkFGVs5Rdb9frxixAwGtXbIeNAARTCJubk
	 RT5EjtUc6xdeR8jdMLOsdhVibG9I+2f+atUEgP8QFDA3TY3ul2OrD5klFXjY77P+NH
	 ZtSsclu0RG8sfemnvmG6znto27b2qTGPO4EJu/hy3IsgZjwWtLHezy6Svu+98QgfhB
	 axfBkEoT1itIwtVQApKteQnu42sop3mZ0OGks4XlFSvWmHyjtz9jnXvq4J8MikuOt3
	 iEVafTJ532PKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9520DCAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778699357.22947.1536780207555708772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d87d13aaa7a2d70d2c6fe4a38d8940b2e6d3a34444158297910aab2060c4ec7b
Date: Sat, 13 Sep 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757786993
