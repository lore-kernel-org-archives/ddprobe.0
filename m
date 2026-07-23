Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47BFC3E00B3
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784797774; cv=none; b=csADcf5YaunFmHFGQjKQhWI95S9Xe8t9iAhDztGyAZehxWDZVLEs+Mweme5nClgtwsqJV+3c18A3f2SKE1IWUvBFkP1YHVQu4lZruVL3NHpBlIl6QnBqMF8RB16qhpMP45t4RkoTlqDK7vAqAkGFOFkJUr9eVibgKm3Ah31p3io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784797774; c=relaxed/simple;
	bh=m6rxfmOsCHxtWTWx1TEeWyZgCL8X3QR95+p4cgdWtmA=;
	h=To:Subject:From:Message-Id:Date; b=hBWzU7Pm6/s05ycfrq+pJ7WOPjJmGKaNM3cGsJ9e9fpmy/q3X8lPzVIfdZt1aTx5claQ3vip7kSVHZBTr8rLUeUDc96inmQGKZkqCNzAg/+p/qKc/on9h00gao5QrtPqE2w4Dif+PetYX854HKAiCePaRa22vOj55gos8FrMMZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vETECSYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vETECSYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5496C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784797773;
	bh=m6rxfmOsCHxtWTWx1TEeWyZgCL8X3QR95+p4cgdWtmA=;
	h=To:Subject:From:Date:From;
	b=vETECSYPfXJtOGntzOld8U6tR37TeURHlyW5sO4jBGkRMn1iffxR7D3plRAfBzMUx
	 moutuinGP9nMxUS47X8lRlJjGhEGj5rTkORvxfiN1y8uMBoRxJhqsizIZFFe4Q6Hqd
	 eVAX55EAIT7Mkn8rTI3ci9OWZijuzvMd5W2vqseR9+m8cfyODZwLElM5CH5SlZyZPP
	 DTeWBjMjWP3TweEsRwL6E7TIuXLSEC1OgWb9+jEZM94yx5GrNooomnTQAiGVT/zGan
	 bVrdMlTQlxrM/cryzTMNCS6AgDATwffFqtmlmsFSKnl98ozgMNWKrCh4VYGh6HWXmV
	 Vg8rjW4697Nkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D7BC531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 09:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479777372.21723.14749847854614024391.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ca9444e3f66ec0e58c4af751c687231c1cae27ee7fb54fb31d2c6465a6f528
Date: Thu, 23 Jul 2026 09:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784797773
