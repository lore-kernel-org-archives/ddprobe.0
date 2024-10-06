Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD512F2E
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728216354; cv=none; b=kDtF3sXIUMLgMUXVqMsuslyClMUoG9i358ehZ/bhF6Sx38tBcUffcFJAJ+rcvw2EPZYackjVjl2H1+taPXF/P9uaAmTGEz/O9Bxzq2YbK106NzaqxFJkUpnQe3cJ737ssXLFnOL5U/ziyS4Pc0VAVc029rsi/Wq540HEa2gzAUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728216354; c=relaxed/simple;
	bh=q5UYQimKpnb88Wt+3Cp0+ZUEmHrx23zUoImOAMCIWec=;
	h=To:Subject:From:Message-Id:Date; b=kpPHt4HowkHIIX04JKFi5Gd6o+jEn8H20SoBWEaIlGOe4zVBExvG/97lUDh/UL9jcM8gKS+20IpN+0A/G8+BvkecDixeUmH/TgIznAF7MEYnMx/p7vyZ1j1Uq4vKQYChFXwTv+iLu0usVQNlpRPeAVPd2mDCG4GU5r2De3T9iL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HegxeLPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HegxeLPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE95BC4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728216353;
	bh=q5UYQimKpnb88Wt+3Cp0+ZUEmHrx23zUoImOAMCIWec=;
	h=To:Subject:From:Date:From;
	b=HegxeLPwo2GvlEKi+UcTLIC67pbdz8w80Xr5ccwa0Xmt1me8XcDf+pR5S6veJ/VxJ
	 +RD0k1EdcjqK5vn28lkZSfiNfxXi7mqus8bTAummfeqN8QLISoz0i2WaqqDhWDlHIN
	 m5Xhnk81mOKiP4oJbpyd91kYv+Ijw7Lnk9m3p1+BdopPI/WNU5n/nGTklrlbrxf0zI
	 0VbbOQDferBykXFCCzUvLduPPAsjRj2JpgENXY9QAWxP1BYlCgbW0w0hBFR8hA7l1e
	 B41AyY8XRzghYKFrlP93AGhW7O2yGINln+WgXxT+Szs7V4JsCMPFS42TE48BlzLoSu
	 g2wAgwg5HFcMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8947CFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821635362.14781.5287190928945617894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2abf2da58c5bf6e65794cf41d456c95ea7920f156c9a85afe04af586db924806
Date: Sun, 06 Oct 2024 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728216353
