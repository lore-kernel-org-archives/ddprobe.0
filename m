Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377C540D563
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782778114; cv=none; b=IJcQy76nAXojHdJKrEr36m7ykck0ZP4W3y/QItrSL0sR8fKCoCKZ2oPnARfnsqeQ6CyJAPjsKpZK6C4TrgNxVtlEvWAFKv3A2AEq9hwsXTkmZxZ6/x5ufG8FUiRAYQrdnUjeuhKfQIWFitjjhJf1Y1yy8OAuSMH/sfW1pBFniPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782778114; c=relaxed/simple;
	bh=2g4Dc5FRyyCXawmHUdpZY0kRn6OgcRDCDoapGXss8RY=;
	h=To:Subject:From:Message-Id:Date; b=IKNJJpwipeHA6J2DZ7/vUzXwY06amDuTIbu/sFxB4yt5blMmzb/nIYptqj7XBiiSermY7igD6/RsjSptpIqAYRuse6VEvWj4truQg2FjR9gL57AhH2RlVFkdWrMRekMEJTV/OrUqF7OmYfdZZ3QrQNw7pqT4nacROuLc+71MgEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cbdBm/wJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cbdBm/wJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FBEC19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782778113;
	bh=2g4Dc5FRyyCXawmHUdpZY0kRn6OgcRDCDoapGXss8RY=;
	h=To:Subject:From:Date:From;
	b=cbdBm/wJ15SENQjj07BhffIDtK08XcfbadugQJlgvCEzoEwNM/GHIbI5VYwklxJtB
	 F5mhLYx2FyAcKvVuRyPP6idf+UXJy4ZEPnr/3BI7ZDKXEjv1Ge9e/OSOGv6nqqsQwi
	 JT0uwCdWbQvlODuawuQ5VYuAUwSEWu/5hnJnMVXMTYWTLxddKuBTcAHP7qda27jTwP
	 k9wtnQAIbR48OBbX2jQI2567etj97L4MdWAyb3t0OkFNBsg6NzyKDcJCdwDEWwQBfs
	 U3Qv66ZFaSGqSm1Vq+rVZFslyLFSdKNcZdgPvD6u1pd3tf0OWlSCPM4k9VSqwyM2Ks
	 Pvyoz/btCdSng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A989BC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277811368.16048.12509916869327475090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89a4afeb4e24763923a674febbd09cf489189f7da99e8e3abdf29b5341d5894
Date: Tue, 30 Jun 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782778113
