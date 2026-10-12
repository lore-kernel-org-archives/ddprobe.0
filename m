Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 691F6470EA8
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791798034; cv=none; b=ujYe7rsHadSGXM773kbBtPzFklT21yx7zrhsAs6ifqr6cU8/3qshke2Y2NNEBEpXRPqPVyS1S/U9Vblb/O4t7ai0EConDkEKlr606zZ+wXpwnNpQAar1uIPTZNkUfyVArlcz67SB5+HP5GHOuw96svOYQTf6V2GXZb97Q9nbsOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791798034; c=relaxed/simple;
	bh=m7+Waj1sT4XmmHZ3kVeuT+xHEfFodOzIkYqDbHd/6xY=;
	h=To:Subject:From:Message-Id:Date; b=Oq/GynDP/+SLYw3fIdmfJ4jtROXgbXaSNZN4NUjdPuzpxT8nLgCqIDrsFQnGFZ8MVJo+cD6hDY+zIQpkk06AkltyKv8XNV4CtlD90mlSEoQXdHgJ5HJuVhaqvJugddmRKcPeoZLDU2XiUZYIDH2mJj+AVxNUqGiMRhhnrZR+pX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pULAq2Ip; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pULAq2Ip"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2DE8C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791798033;
	bh=m7+Waj1sT4XmmHZ3kVeuT+xHEfFodOzIkYqDbHd/6xY=;
	h=To:Subject:From:Date:From;
	b=pULAq2IpOW70XCYEZQHudrw4dy1q/FEPBBywaG3XOyRoNTAL7EvpldJ5QtyPrRAE9
	 5y/kgUKZ9pBybazNY1+BGwvrvbOivedQoFUdaqWSoZCwk7tNstcsrqRmrX2RLkOCXs
	 wxp7N4dE1pO4bdueDgZ1SlvGnwo79LIkNT5+Um1XBYHluAwFezp/WsOUAKn1Uftlnp
	 ZfJjR9ThBuVWcAdg2K7s6NREM/wF8JcHn9DiBQ/JGJ3gwNwiFNUsJGyJVuOICPPPR4
	 kAs3odL7rdFjZrLjWS/rpvoV4Unh7SqTG40iMjC8wldYft4bpUo4/XT26HZpFqbwKd
	 9d9/jzGwszlWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9153CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179179803368.5871.17518335745368416659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c7157ca256f66f26709480453e94bffe3c604002a06733533afa09d78df7b4a
Date: Mon, 12 Oct 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791798033
