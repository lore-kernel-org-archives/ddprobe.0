Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1503B19F48D
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767850434; cv=none; b=n+PxZc3o+GOoO8AWENzlN5Bf/V7r469enkt2WkecVLNRfCroO8upPC1qIDYbuwnXOTZLRQkg7om4jVhP4Q6SaEg66WR+v51lj7+nEOY+sINHKtPeusWJ7vo0M6HXqbEJuM+ALvq727uwgd87WG2PflLwCHp8QXSNM50TQh22c50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767850434; c=relaxed/simple;
	bh=Yahg9rCBRxseUtnxQOHU9NjMBbsku01nTcMR0j8wgcQ=;
	h=To:Subject:From:Message-Id:Date; b=XHANHGJj2MInU0rzXewdpmKF8rU4U7/9/UrqicAFTbsfYEO+2sMujIyAtVH4/uBwF4TtmFZbE41CL+WqHxAPE+bdbgfsITt4OriHrny7KBbK67D2R4mkv1O9II/3lzzVWTWLxkPecTmncgzGqaj3nu+yGnnQEVT8MaJbfuBM3Ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tQAFv9eK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tQAFv9eK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E68FC116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767850433;
	bh=Yahg9rCBRxseUtnxQOHU9NjMBbsku01nTcMR0j8wgcQ=;
	h=To:Subject:From:Date:From;
	b=tQAFv9eKpwx72gGDsgvMBgAy06/VsFXVzN1dtPZc7c1AKMpRM9PDvu3ivbcXm1wXy
	 OIfULAdz7sjLmyLrY7QzvYMLeb47+nmepzTtXw7jbkSNVjQfn0dl8njKFVDXk5b2+z
	 fV8sVVlEl+1l9w6hn13JPZRenQHi0hsS644n+Qz6pUREklyV5akhagop0b8RarfU77
	 yYv5mCDMJm3iIOBahBgGGX80inmbzstkuadCXV4xLybBGn3ddZ+R9WICy7qLPpkMEd
	 THQNcIJ1JIKWAbOCLIWulm28qSuGlXfjLeI2kyIyL6VhCitSL6u4yE+hxyA1LhzwZG
	 zlrXUclURtLUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E762D148A0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176785043357.5441.11910968943538107429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01aeaee8d155252f593eb28ef116ce8cccafc27307dae8a10263a8ce55817bc6
Date: Thu, 08 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767850433
