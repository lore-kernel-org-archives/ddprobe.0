Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3325B38F91
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745371194; cv=none; b=HeLkXDf5k/waan1oEdWv0LPd3w4ZXsexWFp+HqiR6auKfLj1YrYkuj6CAqEXl6VWRS3kTP50DS73Slsbdt9GmVRgFbO8cTfEKrh/QT5P2/6rMLRUhlDPOjda53ICHgR+oagXvWTnbw6XF9B4gM3IaSPA/jcsS9SW8sfdL2c6nPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745371194; c=relaxed/simple;
	bh=JhXdelweOT/gXDOrm+k8H4waeyQ3wfE3pCnstMFnYMY=;
	h=To:Subject:From:Message-Id:Date; b=HF6ppJENwMjgCqJV/SjSbz532tw3bCQ5RGnEJYJJiea/vMiRr4jLEX0NUMMsr5iGl51+kQHEQ9G109ydCyeHLonHeDlVsiTs0uVjcOt+PQwuT7Ce2MdUzUrbc4b8VRAauOWJT9k/Jl/eDj8f6U9CmruUSOag0rLqeUntq0aXzM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIPNVpw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIPNVpw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B1C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745371193;
	bh=JhXdelweOT/gXDOrm+k8H4waeyQ3wfE3pCnstMFnYMY=;
	h=To:Subject:From:Date:From;
	b=HIPNVpw25zGRhr4Rvadui9QydhmyELbvAEKHefyLMxdNJQtZP4aiUkPRDvzUhQwSR
	 kPVXv0/KhNlJIFc3yX3ArWvW0MzpdBodkwD9uOtgz+ZKWRX80UATo0Pi5msRDNx6Af
	 qyVDPIiGfFsa3pSA0P07r5beHr6W/tUIc+ocZfh9lCyn/yHQ6ExHrc8v/861W9FCsI
	 g4epjkSuMtbEnaz/5cuO2Rn7yCdsUV8sNPI+7/ReobJMghpv230EUPtqIDqRBrYhxx
	 pdIfzcqxbsvOasu4saGeMUOa6FetAoFoRlpPEk8NzolOum4kT38AvuJ/Kme3M8WMFj
	 hLTGR4AKYTFJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949FBC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537119357.7502.5577749652606129130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3047c189e6f4a06e00e5218f2c814013c6156442ed4869ccbe0531c421654b05
Date: Wed, 23 Apr 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745371193
