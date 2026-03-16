Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16139322C88
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773701694; cv=none; b=fzAYK6tA2UJnKeyRW5gKt8MwU8FfUwPeaWfr/uJ4Y4ElCMwRSpLQZomyP3f7toimPuiv07N1v6fAh8fEMNYNQ1h28e0D51qntYYkdc+OaLU8Oz2KAUgPWOnQx3eDJWrkGMBTB2/3oE+ulB3gN6xZW0LcgwJKJHAGis2RegSq76U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773701694; c=relaxed/simple;
	bh=GHSrIKbns9K5BoN4hZ2hoM52Be4oFIxZngXH4xHbD/g=;
	h=To:Subject:From:Message-Id:Date; b=CVCmFeOaDJemNf4kQ4x21Z9/HcSX3SZNvOTmCkkboGWfUyxZc3jjV2dqH0jnKpM8io4CtepDL8/Tjxh7KVEnKQRY2QelfAvVPMd6oyCI04bNoLPXgtLyy3/8yRKRyCNFQXMPdeUpxQgwRi6IV3nQI3ctvuSksfiGqdBrYIlp43Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CneeII2e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CneeII2e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A033EC19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773701693;
	bh=GHSrIKbns9K5BoN4hZ2hoM52Be4oFIxZngXH4xHbD/g=;
	h=To:Subject:From:Date:From;
	b=CneeII2eGTbFzm9Cl1XRES7WL7jVXJj8fKBYrzhY2+0mxOxa/t67kFQ/A6VuAgI2r
	 PKumn+5rOmn6M/5HA860cCjpd+egpHzp2BfkDkKLgJwhJ5z1za74d/k9IHo16P2yOn
	 e2A1Fp0lBSD762aEP0TDg/NtcZJXr5zb83ypC9X8auQbBWIezy4NaCaZaen6IbqF9Y
	 Ri1lqo5oKUHChOESwmM6udNI3pPbraODVNVCEe6nfGp/6Pz2621e7HM75Jb+IJTUcy
	 1OR4iLZF+Z0hGt8MjRtakFUb0bPu7+VY6Wr2WzoW89Qetqd2h3k3BWzEOuBmxhMUQ0
	 YfwdD9DbFdVtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92460FB5E87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370169357.5791.12877049686994311585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ca6995ea033a726ec6ea31bc42c8998d8504bb0b0923b8d406019995efdcbf5
Date: Mon, 16 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773701693
