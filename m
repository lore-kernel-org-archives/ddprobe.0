Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEDE41C84AB
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777645654; cv=none; b=Y3cT79tegwpfalrBC7u7aYJwGkow+eHKb9t/TiOIe1mXt9/FHLzOM86O1ERlCIDLgBoCIv7x2vTkBXQyeDZ4VWaSmmviLKAE7tmQ3lSKBwnOEW2PhIJwe+R73T4sVFjI6MfPb/iP8ETQ13Jzn9i+VBjlmO4md3Tqkclxsgyjtbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777645654; c=relaxed/simple;
	bh=mWZR2m436f31AIkLWmfWYxxcmULSFyo71oJNTaWTNGM=;
	h=To:Subject:From:Message-Id:Date; b=Jc4gmam4AkJAKyhSL9cjTJFEwqbPZ9N+5dNb6agcMhaqOHTWO3GqbMjUoL4Ai63rsZvN/m0I3RKIofe8UZ9kOLlgKMCNCeET1Ib+UR80kd0/3tBlxy7ajECSsCaWVxBr5YpHnKWwareXF7lHZPgRzeXLcCdhvx7VBh7W5r6xGWA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nA7pW1iM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nA7pW1iM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD853C2BCC6
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777645653;
	bh=mWZR2m436f31AIkLWmfWYxxcmULSFyo71oJNTaWTNGM=;
	h=To:Subject:From:Date:From;
	b=nA7pW1iMsNGINbMnd/DP+2C9iyeUZ9xOdxzKf+Rl3oiACmdGCkiC60uGV0oY8qydK
	 7XNyecqReGOGXnV5o89zi3K3F6cDjtaIdC1QBDpI03a4X5e36kUAUF3F2ujunAOd+8
	 bMUJVSFBffZL5PNaxQdHnfAdfu1TIFEvL6w6/qhE362D/kGsie1MBAooFTUUBhMGFP
	 WQjmOI/4Bm3e9+QiyeYntNhQAvW9n3HzdavnDUie6QatR0ZdOi+tc68ZaLFRv+t2V5
	 gsc0FZoJTSKixFpKm7bCHoOb6al6Jxsq+OTeyyCIX4mwhMyIwqRrTCq1kKj7ybGYOX
	 AZdo0C+I8WbUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC9ECD3424
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177764565369.4421.2754590102497051664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1a7d32cf501ecc0d9d0746eb2f42d88655afe5757033fd1cfc1fd5b383804bb
Date: Fri, 01 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777645653
