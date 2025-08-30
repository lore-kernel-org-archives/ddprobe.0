Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295151DF74F
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756531194; cv=none; b=sfnQD9kYr2I8z26JaONu12sjvNFoMEQWx9ZXw2w8nWAt95keyMovUbOxzngTWLFTgIwgbM0B64tCr8lJ+3PszYn2pVsVw9yo5ochJVNe7BwHaheH0vk5NRH5ST7B2IChulL+uLOLhUWVu6SByi7VAD/dv9coGHTlAgS03qn1snQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756531194; c=relaxed/simple;
	bh=Oy+SkT9pxvBeg2m4F36XN1l54Icm7U4jwr89vfrjcyM=;
	h=To:Subject:From:Message-Id:Date; b=ONdUsoatKfN1hEW/+0lW9BCNbqkqqec4APdWcEoLtybfxkP2rfoMZMpCHzFZihCRnZDvvvyUHXVMms3YNepsAZtHFHTgMbU8715Bs+6y9nXWdS2GBoZBTDhm84TrGOMhAn8JqWAJLd6KDpskLDzqCgtN7KqH18rRzUALQbhaLvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2ahB3aw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2ahB3aw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8169C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756531193;
	bh=Oy+SkT9pxvBeg2m4F36XN1l54Icm7U4jwr89vfrjcyM=;
	h=To:Subject:From:Date:From;
	b=X2ahB3awoP2n5YKuZd6mZ6an14AE10bdar+KyaJ/q8u3gYqqUEADTU48N42l4Ud8D
	 ec+HJOPL2I8+T4cfBRVldO3ihvKOnTtHJiJcfJZTfwgYJY4bvDXOGafa7OHDZqHFb1
	 FXZBCBswau6JaJQuFFyUANp5n2iWirqTcRhEq9vgeZ6spfeRN4v5Q6punay+ZBhwxZ
	 HCBIc3oAZJNNXv4RHBqoh6yLp7mqqpPCiunqo7cLebjFdnGD6mpCuH10nL0z/PHSVL
	 EDFcTlfN34DbVQFMKAcx39201jDBzyOJj6g5vo+T6u4JQebNqLiXxOSBoDOLp2+nC9
	 Q875fQ0tJUfpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9462DCA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653119358.23723.17958526296027879267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ce1e9fa5fb94757afda0f853afa86282da26c5aead805807934a25560ea14eb
Date: Sat, 30 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756531193
