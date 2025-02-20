Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D0385C5E
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 20:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740084535; cv=none; b=DPkBYLxZU0J0y2/gSfakHj0u9NJ+IQTmmvVWbaQhz5XycdAFY2wb2r8BS8cA1UCRvBrjRjwQvCLBPC60TNWC9jrsam0kZ+bd8yUPiGYcfsEkIPAOzuKq1mhZpBndKnr7y0LS2oN8MhcVfcJr1fwec+zP74XelZ1alpXWZldG0kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740084535; c=relaxed/simple;
	bh=64MrrTFrIwNZvvLj8nVoZzGPR26ASVP1REU4CRIzFUA=;
	h=To:Subject:From:Message-Id:Date; b=bXQakBCAG2+8xkj/zBSSMwFlo3AZwgbGjUnYRth//CD1Fei0PP7+pIWKZpJrbOkOTonW4z0TxhofDWjZWp9yGapJNL1NoLDJ3C+Z76ZGITRsuyQ0JE4ANIKZPP4o1scPfIEme0Re++aISiS2FxjrqrRzjdiBMAv4NfBNt+1L7ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cqlc4gOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cqlc4gOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A470CC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 20:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740084533;
	bh=64MrrTFrIwNZvvLj8nVoZzGPR26ASVP1REU4CRIzFUA=;
	h=To:Subject:From:Date:From;
	b=Cqlc4gOykPgcxemf1gJT9LnlDJANNIAq5Vp6PLcS/HbJGdhFCVrTZT/GObgq07N4H
	 rQMMw9H8+WOatgboleDYj5onAX3FXYhX2rPINk3OPEywxD3R+ZDl3bKutOlb85/udc
	 bm1V+IzpRqA2zKfoSanNniVTw/L+cn9u9xIMmFTfGHkNelMC/yS33XO9md1uVZ2XnB
	 lVVag3ciV+Yhp/G0y9795Iigr6KmWPGU6gDS3m1nrsBQEbXnaGW79Tca4ogZn9lnGP
	 OrYsYVyXglGCNoO4xIreTp7WneX1sXVwI7q5fyyW/ObseRZfh0RZqUyXDhD1lv6YR9
	 3wYAq1bDVRC1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95663C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 20:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174008453360.21282.6848300023389523998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01f682bb49284607f945d5fa95be6f6aae433e0b3a09b4a2a5e2162a596b7e33
Date: Thu, 20 Feb 2025 20:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740084533
