Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EE9535942
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759462194; cv=none; b=Pwnh9mC0rOhyfWQLaeC5O/Rwfq4C2NRVJMLpWTcWldC9i7XKmSbANmOswKHi+eTkmAuJih7aqjhuXL6Ag1GUjCGXEiqXxQCMUvTdWv7JqbMT7GcBIvIXKMu7q8tMQua99FcP5/Y7y+t/PWl99I1DxR3W5UR9czxRuk0/HwCX8L4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759462194; c=relaxed/simple;
	bh=2IIx4ucADRQDCQf4F26zyfKvQJrps2oVznQPn0pYPwg=;
	h=To:Subject:From:Message-Id:Date; b=IVMR6+Fg6YNJscMN++rP5ztzpK5ZIdbMud3wG7fMuizXMwMCn4aLeINu+aKRZ0fDRbbpWxorDtxMVA7PUsL3c3G88O5/BiNBuKdpE+bbD5Wl2MPApdf/chxBhZRiQOGkAz35hAJ4hBZrqK1SnlwXrdouUEn3oN6MZxi+zjgr5/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mG5oY0hh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mG5oY0hh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B777C4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759462193;
	bh=2IIx4ucADRQDCQf4F26zyfKvQJrps2oVznQPn0pYPwg=;
	h=To:Subject:From:Date:From;
	b=mG5oY0hhQ3KKSpOhlbczXniiABJm9McpcGxgmVEUWsAkqRp/H2ZqkukyXOGdR2zeK
	 TS/B57I4np83dWb+jJcw5RTacvS00w9ze2Sz9Rkxblwm3UBa9XQJwJTUNARyjL4CTT
	 6GGwG1/lEx8UatJTMnodL8LYk1yeK/PVnKf5+uRwml9Fx3JrIRyZEDO9Qc+tqMX8bC
	 aN2POiUeYWNbTFt1G2Mut6OR2YZb0mPAO5MlYu7/wI1UDUCPbMcI4QRFfMiFyTxjkM
	 fb8OOCGUPmQCjjbvjjOTrRr+mF3U6/7wY1Xpaac1WJwO+XoUlo2PI2MVkAfWpWBMHa
	 cdlIreff2bOHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFACAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175946219357.29855.16074449710008894088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c307eebe44831ed4a4f7fd260f543d4c806242eb52e7a2353147322f1140610f
Date: Fri, 03 Oct 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759462193
