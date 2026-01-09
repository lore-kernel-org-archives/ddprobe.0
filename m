Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D1EEAC7
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767970433; cv=none; b=ZqQeUGP++nfkuR3W2YUXUUxyOVJWYjvNB4sjez3aY2qIIEwyIETyMA6DRsYpRtcrr/u/hBg/XQp7IbacWp4U+IgYlD1oeSx4VYnpH55+qKy9lJ6DTtBAE/VFSPayodpmCSOl6V8QPSMSfJRfID3fPRqtOKwtGxMtQtXnVXtiEbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767970433; c=relaxed/simple;
	bh=PXD50qZuuoPw67IMsRZzk0rW5jIZx0brvg2cZtn326E=;
	h=To:Subject:From:Message-Id:Date; b=JTMU616MwTmzaD75lB6GdXSAupie5k2D70Hw6nTjyFTAIaN3pL8fNzo8W9OJxRDxIKLqRdMXyLoGhq48KVaGxLuUrdTgmBlbugdyE7trqnCmen7D/CpOIRFchG/Kugz4rvSW1dzARslOFMAtTP/EI3YH6RgUcixmuO4C22WO+lI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjYPfYms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjYPfYms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4ECAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767970433;
	bh=PXD50qZuuoPw67IMsRZzk0rW5jIZx0brvg2cZtn326E=;
	h=To:Subject:From:Date:From;
	b=gjYPfYmsurPcOHihvQowUDn92c0lKBQzuuB6rguhYN00BWYZ3qAziyqN3J318w5kp
	 37nVNbHflz9uOknOoMuEwDEKy0quERwpIAqB21JQyfiEwnSLt74iO5cAcgoiCLaNjd
	 Y3wOzmwJxwIzCyQwbgn7LjGQ9YQogHdUBkwwB0BHFnsdwi+dJ/qFTfOo9aTezNG25K
	 t/V8ym6avoKEdn+EaEhc4ACWTlgAy/+76+IqU0u/8J1qSgG6nqL8JteH3o1aFxLDB3
	 aygAeKXZPbzzqXfaFVjnaLY1oq/jWYJhBH2Uv1p1BRkVDR8cDCEP3EWINxxBITiWaq
	 oA9gp87T9QyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932B7D1A639
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176797043358.2546.12967649446491232474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cd8d76462b06e647fd9368fc5e380ea9936b83ab53c245cc5049460980a441e
Date: Fri, 09 Jan 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767970433
