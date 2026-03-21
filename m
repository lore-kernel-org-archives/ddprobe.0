Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0625529B793
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774061694; cv=none; b=lc39ByzK5PelTgcuxhm6EgJpu4bUzJi3Sshohlw1MBz415Y94KBZ8mfhsOhrzmzLtx0Y2rjrnqbuIOj6OiPrHX2d0qJOAIu4bKG2wC1MRZU5XrSx2wOHq7yNG1Tqee+bn/YF64Cpex83fDyAsz5ZVH9aG3hnpzj3iPHik16ZHiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774061694; c=relaxed/simple;
	bh=/xVofHzaxLw9OD2rujXviajh4kHMtgcmrur9b5GnlEQ=;
	h=To:Subject:From:Message-Id:Date; b=kItb5uLqjp2nl7H0DURPGgKbY3Epm9f383CoHTXIcIewcewrEl2No/0nOckN3YiJjP3P1vx4XBcURssxniS7Bc0xH7MU8pZQo9kDxobUQNLVjYZVw3mw0noVAJ6j6EDqv4enaoJC9B97KxXq2kOATXAWCVbjen1/lOuPbyG6Iek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KANBH+N6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KANBH+N6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A148BC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774061693;
	bh=/xVofHzaxLw9OD2rujXviajh4kHMtgcmrur9b5GnlEQ=;
	h=To:Subject:From:Date:From;
	b=KANBH+N6/HA06neggcbB5VSSSU1l5CqAaiXSQq7ciQLt4tp9UZmXLHl+CYFUddcJX
	 tW09KpFSrw50C4OHONpn1LIT+7tCdNpfOpufGPa+fn9lSTKJ9vJs509zstiQ5NWDWd
	 wpKFqnDZHt5J8X+RFACdNW7osGIQLKTEeOOa8+xzBoppH6fTz9mqPM6BvGuCqHHUUz
	 wTyQQPbD3tpHjP9nLAun68EXJHi13ZUX+XWI2IRodPzyWIt/b3XhoVEpnJMsA2zDf+
	 LBRxQ5y5fZyQlCKpUPFgbVLHImaVdjT/60LRplNgS5gpT7N82G1uTN4LOK4mY8RuQI
	 JsBafx+Cs76iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9174C108B8FF
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 02:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177406169357.7071.16018061823677682601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c9098a3a655de75be0b4c9f8e70a283b4e081407efe7bc02e492529c9d7543b
Date: Sat, 21 Mar 2026 02:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774061693
