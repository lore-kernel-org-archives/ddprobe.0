Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D08B289356
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749229794; cv=none; b=lhqNbH4zceXed/c8i5IpAv4PUcZQf1Iz5o0n8QJQg8HEQSs5+B0MUH45XIABuwySUtQ8XoXre21y0SEgq6G9dGL7XC7rZMGfVoW/vJmwKBelxlIQRrtbsb1HffQN6Jl3GYkmtbTQDBsZQxPrn5wQdfqTYbD+xludgAq1RBq5XwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749229794; c=relaxed/simple;
	bh=iHehboWPPbCcv64NpShWRAuGZSLBJK/poIx903zUCGQ=;
	h=To:Subject:From:Message-Id:Date; b=XOTi1u+hDYd73Zn1XPXfLHrN/RMd14sogI1Zwq2Y8+2viogYWRlOHk00zJPOE+hZ2FDQ0WxQsR3qOZIPv0LA6Ip9wo+0gO2kc9ZWPyX+ymjUaHPOuJ5v0vf4kW0P+2W6mOu4XtbJgcEoyo/EltkXh3owYIkXooooifTo0KHTNCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBEDaM1t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBEDaM1t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F8AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749229793;
	bh=iHehboWPPbCcv64NpShWRAuGZSLBJK/poIx903zUCGQ=;
	h=To:Subject:From:Date:From;
	b=uBEDaM1t16tp/Zh1Xbkz0VMCUggIzOXnL0iqLcOPbsFm7qqneGIYRxhvauRyN/BLY
	 A9TVOQUJnxQhJfcgV0TVD7qRBUKOaz0Ftudx3VyvhxHQe601680orv5lGfPcGhr7jo
	 pKNe1yTHtaP0c8eVrmjuUUbSZCmZCHandRJApmWTaE8QD5eeKHOo/Vv7EfHVIZsThy
	 jhVk0qFODt/KyaqxRZ45OCH+/tmjENDT0bAndu62DxHqxgj648B4Awq3Qola8Kh2OW
	 kEhqq6INhFIXUDKBTP864FHbGNZaNkWREBqLkz/Gv9nIRxnXRPC8AIRdUaB/oSiPyE
	 xqvxtf/s/tXog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93188C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922979359.30974.4867813888037650420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12a5cf149b6ae7c70c7868245e21bb0618046f338507725d5125c09959d9591
Date: Fri, 06 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749229793
