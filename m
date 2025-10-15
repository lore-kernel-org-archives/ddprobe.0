Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DAC22A7F1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760495394; cv=none; b=HbqueJ3Ddg7DpgijAbzVtYcA5EkfapJD+rSJg39SCFxOfKF8xLtDZsn9IapUxbC+dHrYwE4nsgSJhDBT6497LkUEVn9W2ZSPW4ByfJCiYn2/uuJuJHBCYtdAXJGN6GsDUiT82lOb6qoJi62xw0JTY61CHQ3V692p2YLyr/pU7UY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760495394; c=relaxed/simple;
	bh=1NJQP6UBLBgkUX2J7zDRujCD7/prAVH1JqW64+mxL1M=;
	h=To:Subject:From:Message-Id:Date; b=PxusgY36TldmV7KBIesgqH/CTxMIKuDaOKZGHLkOOf4bnehSxgFM7jWXrN4aBx5gIpVh72bHPuWxU0FXKGrYuE3ACE7AdDFaU9d87TNRryWY2m1zB/up3nhALC+knSjvdJyTYT/gqUFmyleKfHxjwup+3Z7SMX9iEWshInRB0Cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGG1iDv4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGG1iDv4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F023C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760495393;
	bh=1NJQP6UBLBgkUX2J7zDRujCD7/prAVH1JqW64+mxL1M=;
	h=To:Subject:From:Date:From;
	b=aGG1iDv4P3trxN6a+9o2g7P1Aj5oTQeGhssV+NYiWJeM6RS78ZqpOg9nGyK6yucse
	 jKfOxxM9LPTFarJsKGHyGzbmpN44niuTkXvvO207WTvZdbfmGFd5PlvJt6I8rBb/BT
	 lhoU3eTCp8zY9p5HPbX0yen6SE7DAjHKtQG2RYcE5eVqsLir8lxdw0H23pDMhuIJPh
	 uxjg/FVmHySYWV9nOTGKqjOA88JbRsclWLESKfQtOiKxppGA3i7/9/cVsU6rynqeU/
	 jk/V8xFXjS3bPMInEFiC5Dh76fs6JU58rhppNi/vvsd0FG9VxWWBTAe4FXmmIKWxuK
	 PUbxWsyzXeUJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F561CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176049539357.7660.15540218315291860108.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cd5fcd4f482f758b7d464cbe3e6b9ded19c11a76372890f84bd2df43111f423
Date: Wed, 15 Oct 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760495393
