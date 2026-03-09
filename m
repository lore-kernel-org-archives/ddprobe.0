Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECD3A285072
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773076494; cv=none; b=qOddzPLRfCVClxViHtkvW7RYB5/MzAe+Q/mpNZop+sFd50eChagoKFyb6ckUBO6Uiiw0UcQUfF0ZxOcDtcci8S/fah9gFm/AND9unkR5Wo/be23Y+exhu2/gbN6mrJSgP8rJ/OHIjVIAJcuObMW9cpxiryZQn/4nUBNr9bMckj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773076494; c=relaxed/simple;
	bh=Of9/X538gdrG/4715o04YT0I0lQbxDYF9UHtAZZeVx8=;
	h=To:Subject:From:Message-Id:Date; b=nzzRVg65iRXPKnVtsW1OUyg/a0hHbsPGEjbTI2+r8MaNnofjSacGt/pB9GU3Z6mp/vRdOPVyMF35u+VOcuFrmY8l8KvJV4L1LekPEDLpQ66WmWydI2H7ZQrzVmgb8R/LXF9i2GV0F8eXuyHTrgHms4xnXrIBBNGF8DM1Zo0qjKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ohYfiZFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ohYfiZFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E926C19423
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773076493;
	bh=Of9/X538gdrG/4715o04YT0I0lQbxDYF9UHtAZZeVx8=;
	h=To:Subject:From:Date:From;
	b=ohYfiZFi1sDtpNVkUFcZwz7RsEK19SYh/mCWJ6HT1FVGKO/za9r2y8P4RR+xhB/SS
	 IaVwdebl3uX3/nfwRz5U2AVAzIqHTYZQkXKGIwLBXrH1ll/Hx4B7Ox5Tpl0C/g4J7g
	 h8jwAgsQhoZr9hENr6dXxdn4FG6zctY8UkGR5g60d6hX6Ivo6p37HVenFjWWRusF1G
	 Ah2fb+g1DvI0lbowBTqczqrmbtT6+KAqhB23ZrKaRpbTCYIZznAWf5Sugtlex0zhYS
	 fI9gqHHQPn/ejrps8nsAaC9R/9z2+FQwP47pGmmztLkn42mTDaUW2hPtwIV6QMFMbA
	 Gdm7HuPSqdicg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F758F4181C
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177307649357.1340.7590025521923993398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 681a7f7381d82438f41d42dc4f38ab98304b536d5bfa4dec99ff3eef83238bc0
Date: Mon, 09 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773076493
