Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3187B1862A
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:30:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763242254; cv=none; b=CazWiMnSAI0l00VZaEAJCAOvpS4JZyJrZvzI74XhFQzooKtdP7o+He+Dc0XZQ3w5/2jaHEM5vVR/mKv/XfABz8CInk+XVpdHsQ35pMb03+SjX+m6SUDq/MISaEMpmK2eLeKnN30VOuG/iTzx4cF67rcv+I8uLMBYKTVUQSxZVhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763242254; c=relaxed/simple;
	bh=6zEcWTkHpJ6he5/bqnWTOY1zZb9ErIHp6MVlmTFWEpA=;
	h=To:Subject:From:Message-Id:Date; b=t+kvd7JlDG8+2W4A5vbQELV7R3ht9eWwxTVgxqbQG0bEggMCliN9JzlqJq6lwZW3pkK0K2uWw3QLgnLNmL+G1ZHW/HhabIQnYc65EmIPsQYVzCuTntxJA6yQphayNjjNFu1HLNUOn59b70kGpX6bB3Ln0n5chsK+YMRBDJG3Ha0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UZ4eXDd/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UZ4eXDd/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABE1BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763242253;
	bh=6zEcWTkHpJ6he5/bqnWTOY1zZb9ErIHp6MVlmTFWEpA=;
	h=To:Subject:From:Date:From;
	b=UZ4eXDd/N0qW8qkI4lRmEY3e6jPGhPvz4EBOmSm1yeLx+Z6sPxG2++kGzuqy2Onei
	 gPmoli61VKvW0HRWUSTdyRFHes3cVlR7GjPk4SGSArvZ/xR34mAwJfcvHx1whnyLzp
	 keZOIMTB4XbHkWBon4gMq3iBqMOT4aYz6X5p3XPj8k//F/5LUbOhi3a2Op13G7Or8Q
	 hNeg+uKR3q9VcJlwfdn/N8oTplagwsV1eAiJBUyxafMhjxualMSmb0JZBU2NhbX7Ur
	 iEwInby1+/QDHgYYG492C2fSPHK0t+dk7OEwWD6hD5NHEjeODauB6Q6oz7jRxrvnVB
	 KlBU4BrwlRIIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2B7CEBF87
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176324225361.752.6684410068309743569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb54dfde407819793e6e8298a75d0e557d7c5065579a0ecf340601446ba31b5a
Date: Sat, 15 Nov 2025 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763242253
