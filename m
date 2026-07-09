Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5632D3A5E7D
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783571914; cv=none; b=JkMwgdRt/PDWAswdeCD8e2TH2l/RTFmnWUopwyn4h4Es9r0nKDin0gUk8GgG7RckDWyPmwQHwcVLsiwWzM8mPvEWe9tU74ucgxg+pA3YVmcaQ1+tICNjMlWnb6CgWQ/nQnyy5T3fkqFA1GWZp1EAyR/wQah26AFO29btGRJbzGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783571914; c=relaxed/simple;
	bh=TjK4C7jdTbo74Uw7ZBzp1cxgNltmeCMDYkLeRzx35HM=;
	h=To:Subject:From:Message-Id:Date; b=QuWywmii8+P3bSzPZoI7lnpEt8lgqerGk6vRV7DducVfKgiozEFUagq6F3ryy2Lh/F1N15BSjMtte5fg+rJTl7xszXGN03yPCdM3UKwJ5xvOmukm3QQQjkQypijVwFH36i1/nDV9+7UvepADgVwXRD/7A3zBnDiuwk6B/yIznq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uefmpE38; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uefmpE38"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8BCC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783571913;
	bh=TjK4C7jdTbo74Uw7ZBzp1cxgNltmeCMDYkLeRzx35HM=;
	h=To:Subject:From:Date:From;
	b=uefmpE382iQX/ookOwmTbkRWq8PPf1CDmzb1tkKGJT7eEC+xKqvNArUzCtELetsXy
	 B+15Kruc1c00aSriyF5um402RT4eVxsqgk0FhviHGHO8nhW3ZNcq/ytnPjmdeyCWSr
	 fib1KXczUc0UlLhY4Csg1ZmTDddx9SyEfmUiVTxW52dmwkDqmkbTMMyApFL1pQ1M69
	 kmROYjxwVqQWWLFUk89Ydz2Y29IlPrwm6/fOMjALJruY5JAcG5ueH3UC2khv8kl2zL
	 VVF6drkVpWZOsMPjKB7nJ6g2OALphyD3pHBT27rV8pbDv2p5PPQPEoXh9R0qOEVH4Y
	 t34MYL3L16Dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE70AC43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 04:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178357191368.1698.2995845371897606591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b48dd14b702967794cedc9aaa3cd172340c73e042e70b86e867597bb04220629
Date: Thu, 09 Jul 2026 04:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783571913
