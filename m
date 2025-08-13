Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3768F303CA6
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755105594; cv=none; b=YoMPaLBQnotWkavEAclxq3EsRqHdEnOca/sVkPe/KuaIzDNEPuipF894r75upUN1tBYoNPpad46bWfiIlbS+zUl6+zk7dY4ga5hsrlCvGFPk65AoSDRs3XoF0RJ83t0NDrSbTtg6/BCX+SUG39ruBeB7wbyN1NdBEufBHNnYaq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755105594; c=relaxed/simple;
	bh=NVht1mX6WWpgSGw7UzYYwW+gw9c4craUddE8R5J7L4o=;
	h=To:Subject:From:Message-Id:Date; b=JrGvAB6HIPRSkSMeIMPI3aq7HUdUmsEZbEBdQyov26Ag3asVTgaGN1M8HZey0sgR8Xn5pg5ttRiQJHWmBrZfVr5WFUXmZY1N49lAHuAyh9YrGt1WMOJ+ts4swPYuhXCJhfPMBz9MByJQCcVOIOv8jxccrgXfaR/0A6+RqjgsR0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZU6CJq2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZU6CJq2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA01C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755105593;
	bh=NVht1mX6WWpgSGw7UzYYwW+gw9c4craUddE8R5J7L4o=;
	h=To:Subject:From:Date:From;
	b=jZU6CJq2tMPxO/gcQqy2UMWA6Gf/2uvECtY3rmYFWjZiCnO1uQYWRnVUQiq21VAIm
	 vxfLjFZXq0JO8ETJ2yQC67EvD7o56OBdDADPilXdBfQ0spytjouf03AHYlrjr8HjP7
	 3zmNDYUPwQMw7uYdqea9bm4vkU+T56tXfvdtJ9kR5y/RB+GloUhrdc9csC93dncgOp
	 3G6oIWsWYjLeClPRGEvxxWS0nC4TkCKWa79pOBmrsmVTR32Trh4Plec6mLqGtlVUvG
	 s9BH3NazvzhqPmMS6SqozT9a90PZExst6JCCNRdw4xR95RO1NP7RMKejJAJPZOE4WB
	 7A4yuM5aTre6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE04CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175510559357.31230.9962294284332887275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5201ece33562a1406a1a3713ff4f4233df23045e1de7aee1c95a6cdeb849a82b
Date: Wed, 13 Aug 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755105593
