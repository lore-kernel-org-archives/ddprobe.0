Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181AC182A3
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 08:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706862497; cv=none; b=BnTGLb87ciDCKH2G42pumFxI6A4QHAOfft9iB21GTxLwTaKZ59bDydT9ie3ESC6oqy/ovoZMvdeB9QBlf5AUyrPf6qxzg21d4bJdfCva+tGpPFlDSdS97VvfGBPSrGeXJmUzckCKQSbSmI00f9t/FejtPrhlI2I+u+bGHwwZTzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706862497; c=relaxed/simple;
	bh=SEd/kTyd8bIltfL94rjtZe/o+1SC1E3Y5N9D7sLoFyM=;
	h=To:Subject:From:Message-Id:Date; b=ptkWHUcwRRvDPWdLjcMA2BHve2P2c/Ad2C3D+TBe6MICs84VOcXG0zSSOXuh9+0diXS0w1TJJvA1qNE0D9K84G+oC6aTZUCgGIzNyUvv/VJdgusnAFKpFznPYGcKqIF6fORr8qnzDScQyakL4uuXQe8tkWADLhTOo0rSA2Tnjho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mruXVZwQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mruXVZwQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77944C433C7
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 08:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706862496;
	bh=SEd/kTyd8bIltfL94rjtZe/o+1SC1E3Y5N9D7sLoFyM=;
	h=To:Subject:From:Date:From;
	b=mruXVZwQE2uEwHfmiON/VeHSNhebjeie+Q6rKTzX16euxQV2Slgw4Xs4C/B3RiGMp
	 HqwLdqyoYMlmnmgok+o0Oi7zUHaqRJa1eUTkp0aNvQEz/tqIrI0KyAeFP4BXlmkcX2
	 y3GVA17pElptKdUtjeN07aTbPJ4gnu+VtA90OL1qWaARs93A3gb21RQ/ZmNc1fLQxW
	 5GVVmPePnuvKUtL36X07oa+5TeTefgpl6PKP13yaWsSGTORruKhDuSFUJZM2hJj0eD
	 38lX/25MnMEUGDRwyuxkv+0V/hv2vQGDdXMVe+0v5mjn8ArTSFoe6nzmNW/H01E7wI
	 6PJANOSpNXncQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5CDD6C4828E
	for <ddprobe@lists.linux.dev>; Fri,  2 Feb 2024 08:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170686249637.2039.8123936118553871217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b949bd61da46591f7d47e2767b64d1ef83202dfa4208c706958f2ba3df0438e1
Date: Fri, 02 Feb 2024 08:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706862496
