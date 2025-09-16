Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DBE32D5A4
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758049194; cv=none; b=tFAwGCJDdHiycMZTPcYf00nfjNTjcj1MfF8gK1xkoaXQN78qSgFnPOfnuJp3HAg3XZCwNuUg0uL6kuPZ7T4DHnZRZZVTYGKwSC8o1LN1KIhcjpJ15azjk0ZWFu4yWwPiA34uno1iOjB9QH+AW+2oAzxQKf9hW7d3Ouh1iHvouV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758049194; c=relaxed/simple;
	bh=7rySIKOxQa7Gd/vxsEQNAPvi2sGOki0VZijnWyEMZ7k=;
	h=To:Subject:From:Message-Id:Date; b=A28+qdisI5sWI8nv7hEeDM+KF7WMfffgHeCB+VUXf085Jmgph9pA+tKerG36JmuxiOhSp5nQhMRm4IFuQP3N+ibDJAOE6UAANXNg77DbnC9Jbcay8lkTMOta7WASvrEyTUwvWW0Zqj/g/zHJdOWeFK6+3IjZysmXxJF+wGKjFB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K5TqK+np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K5TqK+np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08E5C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758049193;
	bh=7rySIKOxQa7Gd/vxsEQNAPvi2sGOki0VZijnWyEMZ7k=;
	h=To:Subject:From:Date:From;
	b=K5TqK+npXm7V+Mnatw7zRCQ1YEFWaMCiIO3uFc476ZTMdU3nBCCDSqPI0MEkOO6HM
	 jgUpOSY5dTrG2LpuKvuFjY/jb0ui1PCQ3EzdXyhdW7XTbpt+vWAgizOYYLN6zlStbt
	 FFAnwS7ceoCBXdcMdlQNgZ+hssPblhs+uBpZWas4AFdwZop+i7+C2h62mvFarCaubh
	 RsE72/olRnJmENOuS5/NyVoCKWIoNq+WoqAP6Aok6oIAlL36Jm4ngD+L9MjeUJcrsA
	 83pFokqh2YDvnaCB7ZMFqxgp3CDAQz/r86wX3Ydw1MVCahbz6qRSP9uIcNnjpWffSl
	 tAjMP6BV3s1Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED5CCAC59B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175804919357.3815.5939586389649528930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1ad955c35fb75172fef11272c93b0642c5f5ae8b71b861e777a5c51f6b2e4d
Date: Tue, 16 Sep 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758049193
