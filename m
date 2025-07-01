Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26C50153598
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751341794; cv=none; b=Mx9lreWWRDBopbxs+gEEAlN/vMFdLM9XKKblzL/nU7UDnDxwniHkRqiw7yNycJSDdADEf7LTAhMdNaILlXxsECvmocn9BiIcA3y8/UXwqPSjgu9HcRGWg+rEGWbBIhTa1CrBamta/oNU/odf2X016g8UdZb7bgOIi7rKDFp5fwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751341794; c=relaxed/simple;
	bh=94fDSioxzWuA49VWVMKHi7X+7g0hlWoZjKQkO92Xe9o=;
	h=To:Subject:From:Message-Id:Date; b=IU6THBbuteUosCNYSCkcansmza9827LHLo5rjQ0xSCTxaYA9YawJkZa517kIlWk2ib7gJcoFoPzKDnx/shIZEJb7Ez6PHGfsdwerMKq4s5pEgg27R5LqGu64Buabhmbhjv6HdDl9Wppo4woc0fTGW7pAyASzrCcnPlQG3tS1NFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fakG+l4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fakG+l4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73F5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751341793;
	bh=94fDSioxzWuA49VWVMKHi7X+7g0hlWoZjKQkO92Xe9o=;
	h=To:Subject:From:Date:From;
	b=fakG+l4BvAteznH/rE2n2R2zlyL8ATRjwzivkAjlMXDCKDPay27a05XtrB2VTexeM
	 8xTo3nR6ex24KjTiPrJdAVFH623U+nOY0aDQtuApu4qTcft23S7u7IYVlgEdxaga/Z
	 Js/4FTofdqNoHQi+yfrTSu1GZbDJshhupekQLhGTqOSBsVw20xu7wV5gZQDvbfFWRG
	 //00K8l5fB8gPybML/KediY2eJla5P6hHRht4uWwUMRuRiIcdoSvPdyj48X2t3B1gj
	 K86uaXcvD7HEzV1iZmrR5gwQtan4MaWCyNluVZZKaYDJt/djWbVJX9L03RQo1xgVB+
	 Rg/Dhwz2h3Ucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BE9C8302F
	for <ddprobe@lists.linux.dev>; Tue,  1 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175134179357.24464.8498739785865530429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3871dff2f5232d9d8fdcc68997e6c90794543ba44b802b0e944f2db3948a251f
Date: Tue, 01 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751341793
