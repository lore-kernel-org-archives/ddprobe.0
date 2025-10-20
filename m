Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FED2D0617
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760990994; cv=none; b=c/c11Y5FmkPJdn11YIc5cQnoY6nkG9yzOHo4qEe6OkQ9uRMdUmiTG4xr6TtKjpOaMXgVNFpBe0GdhTkMTxPWiRZX493t6jfkZY2kuA8UgETkqTuxUiM5cKSQWxVoSzcCK9YjUBcUs/NQRGGeCEH4mMfoJXOYBw3/b2AYBwFR7mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760990994; c=relaxed/simple;
	bh=uAuol9G4NPn0EkW55DOtaQZ7GApahuOct6X/csXwoCY=;
	h=To:Subject:From:Message-Id:Date; b=NLCf/ym74AXsPyGV3L0S0qOPdqZ0sQa1rRU/umgWuWSv7KateGiPC0T3TW1rEZv3dCKjHSpQ8i3sbYfFnB8ViUjoDqgE3kxMsbIFQTtmCuEvsTldi1qz/W9H1dVs0NklgSqqvuAhWDbMDVhW3cv2LOexWQ12HewW4GHFO6UrKDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oalrwM06; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oalrwM06"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A83C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760990993;
	bh=uAuol9G4NPn0EkW55DOtaQZ7GApahuOct6X/csXwoCY=;
	h=To:Subject:From:Date:From;
	b=oalrwM06gj9KNdQFdZJ969NQmYbfwezSAOY9V/iNIspDCl8G1utsHovOxjYzAoE64
	 HS9u/zHJUwGZvK44MI8G16xI7hcY8RH8+NfmKYL2oU6G8E/xR5Tfd9e6xkDG8cHAkN
	 Cd+v00qJ2MfwYU7DZZDXVJP7ZZEFPrUvK9zsH3QJp6zsrz8Fe2zweM5k+i3LL1f2fo
	 eQiAIXWQ6vFxua3tgLDJNdaBrN7tVHM6qVrpsbTCKBVFTBW49o6vLEJ+APlkyWnZi7
	 MCZcJc4kd0TSSrmVNlPlR6x7SADi2bgPLcSdO5iogSr+x+2gpGMHPPNB9HAnh2UqQm
	 7+i0aTYL3LQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D91CCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176099099358.10799.14586903808065446878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b64140cc737b1a4c7a5f53b31611bf2994a2a1038f064ff056f61b471a6edc9
Date: Mon, 20 Oct 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760990993
