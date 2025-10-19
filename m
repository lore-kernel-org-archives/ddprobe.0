Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE2817B506
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760887194; cv=none; b=sFIT06uSl8Fo+kRsvpERlS8P6XX8r8d4yaBdy6+7/oSwSVGyTdUvMEWBP6uoBX7QwQaj3ook58JmpCaO4DLVbQZEkh8c4PwxQuMk5YzMcPsA+SrowjFh20Bur0aj3I+jfg3N3Q17S8igKxvqCw7qpaxpUyG9MRghr98nX/aw8+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760887194; c=relaxed/simple;
	bh=dGy9NKhyYej85b44iCV9QhpdU/1fiWOr8S0btj47cXU=;
	h=To:Subject:From:Message-Id:Date; b=BqtbsBIU7lERlIHW27fL1dMCgECdzkVUD4NsiHNFIh1Sqx5qwzh5cWzzIHc8XCIHTmLXyqRNRFHzkW97bloNLyjz5RfMY1b49u0WIbjKD9VysbHKwih/JdobgKCoM0ySLh56+FB1OZI5ROW4DQ0KcdDcLbrIDHkqG3C0HCBCTOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HKOBet9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HKOBet9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D5FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760887193;
	bh=dGy9NKhyYej85b44iCV9QhpdU/1fiWOr8S0btj47cXU=;
	h=To:Subject:From:Date:From;
	b=HKOBet9ZH+I0cKcXp4ECjcsbrX3/fLVy9eQ22asOJ2Epntqyj7W2Vjtk0uCmSGDO8
	 qlAuuXNZ4/F+FJPcWX7rF+sJtelsp9Fl8sYOzKoWO0R/idBzEMgG5Nw41abgFRSgN9
	 iRT+APyYIkXWqG7wRU+5p6DXLdn/hLtz7XX2sIq2T2Ps57bl5bl7Yq492Lht5gfiZZ
	 YXwC9nnhFcRd9h5uFj84bRX8U5MtT+tnEWMbdQTUFu6hiIAbIzl0bBvtMF3obiSgQS
	 J5WTAufw5DzFUISYifFnZJefInUZPA9sw202hXKv/8SoXpcomFhxEnYJKMZKcLfMOr
	 XCKpbBAH/JyYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90703CCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176088719357.21717.1858345353950547135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0fb75a9c22dce2c02ccbd4e988f2223016f8ae0050a6b559559b24aff6bc2c7
Date: Sun, 19 Oct 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760887193
