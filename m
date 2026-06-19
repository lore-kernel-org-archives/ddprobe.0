Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A41E373BF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781868994; cv=none; b=sW1swA2W3146NWFHrSR0n8htmLjBE1G20D7v4QO7geXBxRZHQIUgMY99IN5YKpLHNsRba8evhplaL+ygji/ZflIsQzmSGYBG2+Sr/93NCtO+yFE/H00qtwK0GwtUDXGuOClecPXgP/hKcb9bTqCW76aXbdp2X0UnCqH+gEfHMIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781868994; c=relaxed/simple;
	bh=SbNlO78OwlWbJ7SHCXOQdlLD1wlyaYNgsCmgU1SAfFU=;
	h=To:Subject:From:Message-Id:Date; b=dOm4WLxXdCHqGZTz2z4QOwQ7IekBV1OWH+uCzprJGfST1629YjOUTRukUXp1KGCb4fy/+NXvIEbecs66N/Y23T/r9Pf8BovBngfptFEmD9gBe5zHPbnBt5BfJQpSSCtGX72TxzdHYmdpAM+ZAqHPPiChgjsjQrmu3lTXyx2+594=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bP/1Nabj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bP/1Nabj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D209AC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781868993;
	bh=SbNlO78OwlWbJ7SHCXOQdlLD1wlyaYNgsCmgU1SAfFU=;
	h=To:Subject:From:Date:From;
	b=bP/1NabjY39nPZAhxEeSjKehhpNzpMW/0fyWLS15UHupcVg/bukj0+YMq1ULOnUnT
	 mtE4/+tQVoXhc52s0BKboVJSzXSFI3eFMTU/7Ex9XYVopSRDEEo/ohJUyRycpKrIl1
	 IfYl63AQ+KOVsPoEEuTZEAFAMVEi3noCMA7bQ78L9u5tOI0FF9Y2d9DNBsaPcBZPHJ
	 8vBi/QTCRVjPBiovUIt7rkn/VTka7TDbuk9cEb54vjA16/FT/ySUTqO7bQMOigINng
	 WiuAIDdxgPp5fcB95Cl7OuugkbteH5Bl+RPZrvvoB4ZZmwhpi35arGxh5alQZsCCfe
	 uyhSPRCfYDr+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63ACCD98F6
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 11:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178186899373.25247.15713382589964167832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a53fdb9bab7bdb84609cba8847c1a1fd5af56a57a184de5482d0ba2e2b5798a9
Date: Fri, 19 Jun 2026 11:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781868993
