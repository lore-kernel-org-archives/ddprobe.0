Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E326405F7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752635994; cv=none; b=SEXZ3Vgqpalzvus3BfzmoXSTihNFtHR9Ps+uMaemipJn1JqDZuCIzJxd2KTewpcKvIbtZzg3MSQ1mDK2RWsR2EI0aC96+YjhyeZRGVxTpIxIdj4c7Vc7XSADKUOlcPMx5ZE9Q4iH5e1KtTMxMKVJS6PVGIriANo7KmQyeIj9ftg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752635994; c=relaxed/simple;
	bh=PCeYGn9oxlBg0Pbii3A5BVj2odU4TqhatR2pTlg6k4w=;
	h=To:Subject:From:Message-Id:Date; b=FWHiONxLKxQ0MjNugWS9H4cvyNjHQNRBMNCvKIVhhjjWp4BsTr9XidWq9DrXBefhhS/xivKc0EK2YoRXoR9yzJAcbGxCB7fTxAmbs0Y27VlzIP252yHCFQFk/pBd9DCqGNU8CGcjweo+YGjv8cf4KCgSPjoGu1hAHIAR0qHNDfQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZqiaNel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZqiaNel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393FC4CEF4
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752635993;
	bh=PCeYGn9oxlBg0Pbii3A5BVj2odU4TqhatR2pTlg6k4w=;
	h=To:Subject:From:Date:From;
	b=hZqiaNelhniII8qJs06PagT/dhohGAJQLaiBQrf/zmFC95dc2zi2/L+X0JPHuQSrD
	 Hi5FYcDe4/06hCzsBC7ojDlbjBceOE5JVBrIKBsaMjp7lWvRlent0KX2PIcKs5JDmS
	 XPnrE1NaBc8vv1hTDBhMRCl7bW5NmbF3BC/2L2Q9ULwj/6ZiJhqy8RXjw/viYkXpfN
	 ZIazKAm5P+PgDLQvP/HvvDb8saYAprL2oBgqZqwD8o3ouoXPSZe8QuWsIl6fhgRjCV
	 ooOxbHbcTSfYTIRwZHcPIyBvzOFaXvHXkRPpoDddBONu1cT9BTpMGOKgvB+VTHuyNO
	 p9k0cC8owBYiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AFEC83F17
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175263599357.13670.8712946986712116620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5f7ed6cf534f1348df016db1256443d5dc49cf137a571d4fc007552acfef15
Date: Wed, 16 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752635993
