Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319CD1DF24F
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750098594; cv=none; b=kaXvP82W3ycHk2ziHM3HjpGph10cughhLXpe7l2zW8Jg6detJmb0EJD4sOaUd8/m+dQniL2wdMJlfMoRBUb/fz2nJNbDs6+euUb0m+GwO2qy66JgW6z1DToZOWYF0kim7EyCvhGSI4r1RLhgl1LBqljjmWUfiZUL2chb8zXPC+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750098594; c=relaxed/simple;
	bh=CjEX0BJJNN7OhhZcgjmXnCYxIorcvhujKarKRFBcsgM=;
	h=To:Subject:From:Message-Id:Date; b=DwGryotw6U67hO6yGkSVlFC/wd5RaKss7nHJetU7CwlvijyGdj1JiLBhaVnvoICL8430ApIKseruTL3xrULUpxsSfhIusxlp9ei/rG189vZJoOaXyr3RyG06Q9xuJSIIkraWpV9buqojY2KNrZdHFWXTYqcoB+hvCrZW9g2GulA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qePF90uB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qePF90uB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2946C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750098593;
	bh=CjEX0BJJNN7OhhZcgjmXnCYxIorcvhujKarKRFBcsgM=;
	h=To:Subject:From:Date:From;
	b=qePF90uBXrdPGE09jijOwXLZ5fzVfhlkUT0UhEkG8pbLN8gZXQAh30SlgsKPMqo4q
	 mHP7lxb79EwIv4nqm5p/6pcqpV13Ot6zqaeXrcB2Hm6Ri1pfcCVc+XAWKwNhMo8cMV
	 pBVuu8SqlYyO3HxnsI76PJc45BOVmPsrzsBwwI6q4CFogQ5t/D9RXyAyfBDScFRPf0
	 sYBHo6ry51ZVjxPyH9DlGx6Up3JEesiEKzM3efV8iz7/gvAinMutMoky+XerHcXlUq
	 O9gpF4rmhMg7gzbRiee3B9xsNI5qqrKs2y/CFxF6uGBTPYCmCy/I2kCBp2p9cAD1bs
	 c1IRSbO+hOPZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132AC71136
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009859358.5014.9465963256692461620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1da2c5e2e68cb2b296408fc46c5416ea468547c5e9ad781d74e358cbf2b5a6b3
Date: Mon, 16 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750098593
