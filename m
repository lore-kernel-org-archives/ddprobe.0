Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11569274665
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752310794; cv=none; b=qHTjlDeaJPa+gRcRpycZdFywXKNPfOjeAaeAePJGqp1LP0QqMlqTnVmB5ICiSDZXzRSRIrK8P0AMFcVZ25zxFyqqaadBj9bAfCzEtZT7f5MZPLdBk/lFoApsp4+BSwYHwlMEayJcFSn4hVGQ+xDmYJ/QJqRw2KWYdPGT0sh8cNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752310794; c=relaxed/simple;
	bh=REDA22SVZvwrT/UipKM7d6JoqlkJ1l3Hwd8yJZbdjNQ=;
	h=To:Subject:From:Message-Id:Date; b=XiscNU2MLZtB96cCAYkysg7IZfpiJMj3++G0rsFNgSWqXSOfES083dZDu3iDOkrvISiExvBDKfI0d5pA9qMVyr04SLqmnHt5ljErD0tPvv3nPLWNffBQSIpn4OdUSgiazFT7BGQXFT0jHNJlF3C3t0/M+jEghB86lkIncEyqZOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0H+JpPW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0H+JpPW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A010BC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752310793;
	bh=REDA22SVZvwrT/UipKM7d6JoqlkJ1l3Hwd8yJZbdjNQ=;
	h=To:Subject:From:Date:From;
	b=G0H+JpPWlIBGWfzSI2pUmRMn469YG9lj87bmWz+mXdm217uZVeARTxS84e1KFmbUQ
	 UYodIP+sUpuIKusGSDp5HED6xug8tQGTtpy+YNDia94PQ5uwnX5b6SMI7M80BDyebw
	 PYHCf6QUsJCL7H7pRItggLRlfHpVa+IgZbK1d+JXVeXDpVttWffadFRQ3yNJkIIlvu
	 gNCdLmbqFwszMFTbqS3+t0SMiOZkPnkU/UXzGQc4nTvXaLxhVdYcEwYC0IMQeGoUs8
	 mLQ4K/TEpbXqyRs98/a6zWKOi8/LxHBhoaN7yYfgLryGzhg51fcxms25cugTK+pZPg
	 1dYOa/iOlFbWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91320C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175231079357.19308.11179484583418867499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc499e5efa23b1edb837d0f1f5b7ed61864bc27ee160be431e8f369b9490fdfd
Date: Sat, 12 Jul 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752310793
