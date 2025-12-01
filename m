Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20C357E110
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764622974; cv=none; b=j1Lxu4hfDM0l5xzVbFv/wFqMF/hHDAr5403iqrreYOntnijvizB96vQds4VeJsOnAToyTFDmcVU6zNs8oXIKtLzPW/HUj71ofC/NRb6wnE4JaPoHYXJ0pmMPbYnr0A9i0gORdj3B2/twHvNoz4KvFea0at7Wn5IQkm9k/gIp07M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764622974; c=relaxed/simple;
	bh=YZMZ5ztq8ceA94SyM+8ko1/lctonWsLhEARDttMBjNo=;
	h=To:Subject:From:Message-Id:Date; b=DhEwDovLvSppibhtAQXCLGtgL9rgmaoc/pHpt2OBLGGlJ3mJY441qyIWmZbl3JySYFq/85YO3vcj8taUlZg8I+rDAcfKuj6WUwUfIWi2LmEPlmuBiE023LuzURkvAU2+iM6T9/R1idi1LNLGyTgIVQGQiNhS0IJQJBULSNUyP+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hbad0DY2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hbad0DY2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FFAC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764622973;
	bh=YZMZ5ztq8ceA94SyM+8ko1/lctonWsLhEARDttMBjNo=;
	h=To:Subject:From:Date:From;
	b=Hbad0DY29hXP2pJNfPKd6ryb2b3qiqWJhke1Pb7S3b5uSoM2bgEVv/UqCdxjb2Rc7
	 5nCIlhP3lNIfmcrZra9SEoD+lFAYruQh4nRqB75t3e0BwhfZLV0nyDYmKIXK158M3J
	 L6uJbS5qfZDway+Bwa7GoajytU6oAKoUVEUUao5W3hMxkr7nUAynE/4iAjN5lXX1Pt
	 jGQOKeE/bByb3jJpIihRZzgem7pZWypvbSvU/4SG1kUpYRUXw05qOGQMO328OqHc1s
	 /77xU3csH/j6VFdWThXJodMJsCXGRGXkALqYNPYjgyKBsmlo+F4WWuqjbmQj5s2/08
	 922Du4QrAzBUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FD8DD116F3
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 21:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176462297364.28247.4617044105599147780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a8d2a3ca10b348dcdfc6ccb64fe23d27b806f3c11fc4ff62501300587666882
Date: Mon, 01 Dec 2025 21:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764622973
