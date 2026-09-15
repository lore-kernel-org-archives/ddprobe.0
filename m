Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F61741D127
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789512034; cv=none; b=ayo/8lHULzPz8Q7HoXel/bMurIL0P0IaTejTe69bXNsX7GZhhdQOSQbzX/N3VkCvdQ1w3hDofdst2RsvatTkMrVQv8s7ZUo9paJSYF6TNHn8NTH2iYtiQB3RVPKpmMs3DDJOYw0qTzsTB+DjWPyZgZWILTlkGNWGc9Mi/MWmSfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789512034; c=relaxed/simple;
	bh=BRIIunyD2tptJuwJ17apvolh3VzLZ5PmbFRN6t5lJb0=;
	h=To:Subject:From:Message-Id:Date; b=m7m1+WOEG4yFJWZmQeX67MaXmCBKzo2+IY3sCz7vwLaBmHZYmEjWZIGVqIh74F1eQMuXD4uMOvpDcfEYDJCnpC0zVAT2voH1iU2ETCrDf48YYf/LxyXvJXxuNCe6EN1Abk2EjvrK6gvoPVmrShlkd7hgM5TZwIX+n27TUAluA1Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fFmu2ktM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fFmu2ktM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA33C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789512033;
	bh=BRIIunyD2tptJuwJ17apvolh3VzLZ5PmbFRN6t5lJb0=;
	h=To:Subject:From:Date:From;
	b=fFmu2ktMVSH02jrUkZhX9GGj9y3ybzbqFfK90634nNr8dGc7RZSyq2c33uh06psWs
	 Gs6JX/Nxe1uxMALV88OO2X/Ez97KDGaJbmLzkh8RjcLcOk2bDYb87CCyx1henuaR90
	 T1Xyg7rLLcue686YdO+jkdhENZY4TPP2BHVtattLb6/7wQCtaQHWIjoKuX5JcHzlik
	 2WqsOHVmXP1nINs+Bv6Seh6fv9HkgxciA76wlAXJDeMr9awovWdxzdCZ9VUpXIoyHU
	 cNKM5Y6rPK60HLymB/aP3BzB0hv2D5Le2Jp4Lf1np4iMOBtLBZlkUrP7jfELCAAds1
	 WcMxiU/JcBKtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9700C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951203368.22650.8955172203512785400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d924a59b561c97ef990e81c5be1e12b39b2c2b040ba1790dc6b8688035187ef0
Date: Tue, 15 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789512033
