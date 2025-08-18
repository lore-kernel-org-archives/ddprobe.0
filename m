Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532F5DF59
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755487794; cv=none; b=XKYgidPUyViJyhjLSngnG/cti4gIo/DiTbsGCh3YxBI6u0va5vWfeDGSru1l/xGqcKrQjmIs17ExAvg8O6HyrLfiVp1odGDuiQLmJDQpS494g+bLBL8ejtA7uWD7ymEHYLNwO5Gt+7gypSSqIyis4E0565d9YFVuJ9EtKMPmSAw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755487794; c=relaxed/simple;
	bh=0DQEZbld10PIG83JBWrCHZDii8QiLKrCigVhL00xm4o=;
	h=To:Subject:From:Message-Id:Date; b=kA9yDH50psTgXDeSmeOMBej8vkFN3OdHPaTk/1ENkhNgS0mI3FAcuUfMCn6YbbZVWxukOElS2etedCopXUhpmLfLnuDB3dDZkAtChsolt7qGOLAsGj7VcGfqU6SI8f0UDhwCl74ejH4ShHAIy8RbwjH3dDQ9LSQa3JG+17yJkV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pg+nJFDE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pg+nJFDE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15C5C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755487793;
	bh=0DQEZbld10PIG83JBWrCHZDii8QiLKrCigVhL00xm4o=;
	h=To:Subject:From:Date:From;
	b=pg+nJFDE1ctnzL9elTOR9ygP3RXWR1SHFU4uVl4IHNeGPPOhSvY6a5xDtQPwXy6s2
	 f2LYciQOTWsw8bAPA1lKOxsK3KXs33/+VlRCPrlX5gRtgkEQ/n4t4ZiN+uj302N9fQ
	 TYoMPrgQm9nHxGCLue5BOp8hnyIv3+ReYf3nXRsGoaGCI6+5aj66lG7AOL40kKnltn
	 J0GKPTM0Niu5/SFdxPY3QyZw4ar2q7qmZu2jyzii7cRVeR/6/Eu97fDikEAIOokOCh
	 7HCXw40DdYYbcLGL1YbYmq0nMVpfXhviU+scXMG5f+ugID59uQsDaxNM6JOK/G/DIo
	 P136Cl8QX/8/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E905CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175548779357.26450.1177391466654285568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 461a040a996aa660ee0568761b1d5350d8f4a1fd439f95bf5b7da221c582452f
Date: Mon, 18 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755487793
