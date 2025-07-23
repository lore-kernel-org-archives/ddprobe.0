Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2685827145E
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753254594; cv=none; b=T8g2fZ4t26D6vkYKdTSDuJI8mTdZHgWQ4CCmYjG4q4fuWKrLWVSH1BlggNN/GRS+bBVJAFPhIUfTg3wkCnSWILT+O9KyRaJn7MOLTonJAm975PSj9fPDiDiyGyFAGz1J11MneEw+69/kxXGDlsJpeXCrWgNXol6im7Ff90ABQqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753254594; c=relaxed/simple;
	bh=sQN1wNhrtoWZweu5no1Jsty+69BbKTCOANxVPJrxrIM=;
	h=To:Subject:From:Message-Id:Date; b=Q2RA0iO1b6YBYPn/GE6wGm1vt1yOtf6pr7kwgE9vwC3Y+++amEfG85yhiJFtvbPJjvSlFpgYd0D2KkCPYObKxyH/jJBGXW7SnZnTJ4KfT1F41oglXfcA65/CXvXBslnd39/xmPohCdzTpQm15zlm5m7p5O71DLsCMRzH59EZ8rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwMR86x7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwMR86x7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0119C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753254593;
	bh=sQN1wNhrtoWZweu5no1Jsty+69BbKTCOANxVPJrxrIM=;
	h=To:Subject:From:Date:From;
	b=DwMR86x71MO99N9dWwfW6upg6iOXA4Sz3EzRtnE2r62xxGKGtrNbWxeNYZNT27Vjz
	 AcaBygcLbBWFRS1AqGsP9h6nMa3xQifjTzgksobfPDrJWZm1NbCA3+Upo/uj4iV3W+
	 8AF7yotDSCNERB5nREPSXNoMVffCcFkvpP+MjuDVAvH4KjkZUceVkGzj3g7NaiySHQ
	 UxfEIdig27iqctlLlhIJ5sQkaH4R7t9c6Fd+BHVWN+ceAqEv6AmiCkwObvkojINJw9
	 h1MBZdjMllJEXExApJXwywaCurZXni96RgvZx753OQ7M2c2LikMTcntE9/dNtVVfl/
	 aIg4MCJCjxKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB75C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325459357.6188.707405288261743546.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7ac96324c8690e3f7aa7e3f8ba370ee1efdba7b5106c9e6b2ae7ca26f7081c2
Date: Wed, 23 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753254593
