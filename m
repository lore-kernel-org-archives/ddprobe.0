Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D68617D887
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720601783; cv=none; b=A3fqvg8PLEBLotc93MIRDr0YBZaCsTfCWZsWB5CqX+YFpeDaJUd7hnLOM4bOTKqkDwLzT0APDlDA7szBxqgrTSuDN9VFFboeGIblRn3Ylaq60az5v/L5T9EJnTXi/tRWVDYI98kNDF68HBTI5U7mG49UMJJXGt75DQWjomeDeLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720601783; c=relaxed/simple;
	bh=inYoo+/jnxGd267o6tqMjaJksx86pp+v4g2paiPeH38=;
	h=To:Subject:From:Message-Id:Date; b=efORFHv/wcxF9FrkAa0k73ZiYVjaYqFBlLz10m7d+BXm73r5T5lPWkvbq/N8Mc6w2zDryny6OnGuv9YBe5Q6oiUzq0ZSBvUudWe/TajyhGOaQ7GfHUmwbkcBnv6Q+YJTOuiVyT0gEzhGM53yrDn1210CwUGrUDYXhCTugw36t+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oewbD2Qr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oewbD2Qr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEB7C32782
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720601782;
	bh=inYoo+/jnxGd267o6tqMjaJksx86pp+v4g2paiPeH38=;
	h=To:Subject:From:Date:From;
	b=oewbD2QrHmsD74dGcVL9fn+1VGQcJ7mBFTf+7lnw0+UERJUphYFRPfsrMWYpeoVah
	 V9SFj/nkClOpYIkA9Lb4Ki4sTWsgONW1PB2iVHwPrDd7h9EEE6FRu74xrSlk5YJ+tK
	 jidPB1KpveA2nIcmrZ8Y7q9bbNFjqNeweUIXqdD9V+15b/+hlaZJCtLWv1wRwSPBMT
	 BYvFKD8cRWNIVwISGH7cSXeo7NaWED9kIUOqJiNEDFohiBCHsawzyksuP8oAn15yZ6
	 LBEgfEe3/qnFFZP7a+EUDZ1Zm1ZouxqHvVNdRco6gPYPZTcp2J6Fr00XO+llQhYNLS
	 /NEt2AZei3Mmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C055DC3DA42
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 08:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172060178277.5990.2039440922370401924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a213bbed64ee15f6b601b451d9c4f907b1af8cc23971f735df90d0f8edf8e692
Date: Wed, 10 Jul 2024 08:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720601782
