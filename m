Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8EB19D880
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749208796; cv=none; b=FQ/DrNgbnlYNLRB8nrKEDTnKDPUnCkIoGGQkC+pBehR6FUy0cKj0Lgw03L7CVnUynlCQjqkC15wfnBNEwM1PQLXkmMsZT2nlML7NyxHMxLpFGTbT0K1RiTCEH2qIosppgsB6ES2/5cfPEVWPResz7lEoRefzkcaA61yX8lgaA3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749208796; c=relaxed/simple;
	bh=HTPHoL8pKTYmLjau6JU01FcA7bbB5Vosfkz9DHNr5u8=;
	h=To:Subject:From:Message-Id:Date; b=sCtKwkI3t/HxsqlvAm2EAwkHmTmHV7r3QzIWnJWNi+eri1C3nBVG3xzdZUXlHA4/fgZ+pTaA7MD5Rm8DJAAWTOq675AVM5oY9vCHjFVUHy5149/50Pw92ikVmhRCcuHXpHfGzJPskzIIbXpxEYViE9pDui5jP0GfETLeNyVia00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pP6goN/0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pP6goN/0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A64F7C4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749208793;
	bh=HTPHoL8pKTYmLjau6JU01FcA7bbB5Vosfkz9DHNr5u8=;
	h=To:Subject:From:Date:From;
	b=pP6goN/0GNuB4fCTVg0QBWmkR+bugtJtg3+cpOnVAkP4DyD8caQWVAKBBbhr5b3jX
	 7mbwVI8AfS/xXrGvgorq7fOGLVQGWTtOwmYNmc5TprWuS+ZdaN40vhE/c8HGUUwn0f
	 ZE8ZZn90mKzuD3kg0N6bEsLmGSoRlNuJGY7Rv8C8yrgT9Qvnlx+IoGP+xz8GmPmKZG
	 ijfRFj6zYB26Re5m2r0LMei7DdLxC0VgKi6K/oL1RNe85mEUP/puk1bba1g6MHW3xS
	 YXKjugdmDOZ2bYer30Aoip9VBtOpdD6+1nMUd8z8AWaVoD/EmH1xO21I+tvQTUtNSL
	 n9Z19gweiFpYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94558C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174920879358.12623.11094589890461530358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fdfc8a9fc83461f1ee7879dd466d24b370cb80d8fb3ec8a63fca7f29646efa
Date: Fri, 06 Jun 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749208793
