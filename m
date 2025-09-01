Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCA31F5437
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756736394; cv=none; b=s5a4XBZIo/E+pp9v4vZ6RLnpwPKIcL+h4yExTpAV2LQaNbe6pNzAzAFnA2DK3oy+ImMq9EtdI/ODYGjNOMW2y62h/KNumvo1ibiYv5AXbbYeXzTVVklhovPtsVbPESCHhp/VgLdhEQDx2FgjyXrKBCCyRPY/pGKUJRAukdzvL8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756736394; c=relaxed/simple;
	bh=O7GXYmNcpkRm4Pfx9Tk8bYWo/bFuKrEEXTa4eXwzsGo=;
	h=To:Subject:From:Message-Id:Date; b=HTC1E9olihPlHCB+tdbEPmF2H2ZkncaULtvLbkDfVA1qubnUnRJMIOLdXW0Rde6Y0WN6UNEccgG3imDpp6DieiZNlQpWW3ZmSSR3Ngq3HmcLRJXXjtNGQgB/WVO+zx1e3udT45UnlgBfkWNYYz3K54sUtooqg6BDp67xqOCWLw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWB4hftN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWB4hftN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA3FC4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756736393;
	bh=O7GXYmNcpkRm4Pfx9Tk8bYWo/bFuKrEEXTa4eXwzsGo=;
	h=To:Subject:From:Date:From;
	b=NWB4hftN0WbAFZPFXH/t4BkHrDGWjdB9KScSGPGXMdGXcUE1/u74XMs20wkTDUZiW
	 CoqnOzDMO+LiP0fToeG1XmgyLiFl7JwsqKvFXO+xH1A5bWkrRcf5S+0e7D0BLbgLf/
	 U806AvNE8AeSJ8t8VIBc7bwWHJavPPG9Fed6MpiQjf6VkKWtw23IRbKWXVG3ULOY4E
	 XKHeOuVCqEBYkYYcmmv1JzovysbtCKnAyPFonsh63WaGHeKZ3GrBr5JVxTt+cAuSMm
	 wfDwmYcrPKctSdRBydYI3Xz+M6Sd+KmHJJPE2k1D/x5ZDM6uXDfUNbHmPcN1RskVpt
	 uJnyvUx3C/u4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2C1CA0FF0
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175673639357.11754.14798736493227003665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e5097d71a62879a45057b1a539e70b3c56cb390d94d44595c7545357724f36
Date: Mon, 01 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756736393
