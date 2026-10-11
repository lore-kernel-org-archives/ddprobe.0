Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529F128B7EA
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791754234; cv=none; b=S6fO79Po+HL2PqlmLsGzA6adfL9kw6w5+pFLXsLmKTnYHdB0maMZ6WsRdCyzWVk7o36zvhrIRvJvsQZL8PsKOCPlyxBnAAQSKnBKHy9Ce3pGoxuGXFHKO32ojRf+HYwzG93kAok6y0M1O/TfNXlXyS5M/6KEKTWwQ1a8YFk0Y8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791754234; c=relaxed/simple;
	bh=p7COs+bBdxAid9y9F7uEtYvHz9x1DLuQWDN8q9grRGs=;
	h=To:Subject:From:Message-Id:Date; b=pq5twWU50OOHgf9PVcLcOBE820PMDfVEveIXKENSdg2OdRtwS02aDQjdTv/vLH2ltEiQTptH6zA5U7NvhFRZQ+D2lJCvyrx+LBhtWRW44muI37zElkmcqLCiLgouaUqnXphqqDmC/N0ZQtna04CttqKowYNNLXbLpTMlhIxl7XI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NRKPM06L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NRKPM06L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D627BC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791754233;
	bh=p7COs+bBdxAid9y9F7uEtYvHz9x1DLuQWDN8q9grRGs=;
	h=To:Subject:From:Date:From;
	b=NRKPM06LzvKsJRHjoeiTpNitvT/73VnzNqdfatl4uSnKCdfxibwpfD2WGVu3GI0+x
	 s99kfVOtICoDgqBXi5WgV0UhBb4ykafbw/1qrTLPt5NT9FuDZrOR8WIBxkgSSVjGNt
	 cqa8TKgjb7hYpWlqGvhZINl6bkPt+ZN6MtKwGI6zSG7YqgOo9QzulegEPp/pM1cn8q
	 NSGkp0wMCMAkB9CXNwzUAxmQ2Cdjen3n8tNYnCYO6BbUe1Dpo53298qrVwzeaz6Wut
	 9q4KjpqLCxYW1nlgbME2CultSm7JTPKKXIoYp/5A4Qi2iGU7D9D+DrHdCrIOFs903z
	 Fl7FSC8xFE7uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFBF1CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179175423368.1418.5507516742011650987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0edfa96a4d5ad85181b55702ac0335685b9545eb8197eb1b50bfafb98a62e515
Date: Sun, 11 Oct 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791754233
