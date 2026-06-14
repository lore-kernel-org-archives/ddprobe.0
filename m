Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E2D17A31E
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781408794; cv=none; b=JopGINMCtyvNkXnFdsGSqV/p9L7vKWa5qld8qdC4c8tfDoe2ar1LzFY6om9JqdMLoRfolUlUIaobtMz3BxL6kEOFXbVP9r2km30UtGcGZ/hE4hduGKK+w5Z4wOPX5f9sJIU1KXrjCFkpofLyP3gBhqhCQaekdgHfyEEt4zex8HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781408794; c=relaxed/simple;
	bh=Mgx5ZAkOowN6nLxh35TzXqG71A8z2fW7OWyDTKfZFDI=;
	h=To:Subject:From:Message-Id:Date; b=lxyWJxON6XmXUmawtTsPrxlhbKajWuM1pZuTewxsGwKE11v2chX47e/wJb0r+LERTYrtpMSfZ5uXWalhLI5mxRgXLH8WvK6csl3HluMJYUS09cJdVWq7gholht+vmHq89bBEg2z6lzZAqnC4+J7iBf6o4D2GSlBF2bsLB+XGqyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lt+xUkDi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lt+xUkDi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C352EC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781408793;
	bh=Mgx5ZAkOowN6nLxh35TzXqG71A8z2fW7OWyDTKfZFDI=;
	h=To:Subject:From:Date:From;
	b=lt+xUkDiIWA51G7ZVup/CwpoLoOqF5N8p3lrdZjkhsVNZJ/rBop9PuC0EBYXwgL7W
	 25b34B68SbxXKkLH+hYizGPqpkh1clm7YHMIbjlAB4KHdaAr9bCnFbDVmc4huU+DOt
	 boZOhOdIpm8qxEIrijU2cfi2tVIGD9eUyeEKdBd3HLrpvbLvXdcXj+e4inCs80PVFr
	 h4NxLoRlUqJhPjcSQqST3WXBgph8x5MI6sCdchNBt/O8KDlziq2L4+kDT81z37omcY
	 wK7mf9KJMuq4XDngOzZF+0Y0JNEaHckdC4VZCXi5FmOUItcp/yy9y9V/CYZLKtV1Ok
	 jB29J5fUQThDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB36FCD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 03:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178140879367.8544.6801987589114504872.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e0f739a19a7da49d401c5531a23f99626e582ccb44aadf0d5a3b06d5f575f54
Date: Sun, 14 Jun 2026 03:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781408793
