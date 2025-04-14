Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48FEE29DB79
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744632595; cv=none; b=oXsLWmv2m3+6/H3b49YxDFOVJyvaQDz70q7sp5VzdPfUSb+AwqocO8Dn/hZg9gmBaojDH9idEIDE7rsst4WgQQdpelFrIsoDgPiAJgXsiP+1NH1fwlJS2jAfLmzJo4IG7sa01fN8SaBBZk1IspkdCSbaKmuAsDNpe/B5gxn7rIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744632595; c=relaxed/simple;
	bh=5HsUXE/jk0oQG4Jh68sk9qPpSVW9T2ACu8fLoba8E3s=;
	h=To:Subject:From:Message-Id:Date; b=jWNA9l1Oy8j04CYeiaRcZpt3xI8VGucI6FF68ke4IU6U1EAt28Dxr7otKMgEI8kUqAnKh0+b6smz/jKarZLBtdjxRcnV7cJyWzK8IeLspAaaKcrb83Ueol/rUvt4zzkPiNu/dCYPh6W+bYTCdfpGV9hYfTnf9qMvu+OXAWnSSvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4F7Nym1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4F7Nym1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2711C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744632593;
	bh=5HsUXE/jk0oQG4Jh68sk9qPpSVW9T2ACu8fLoba8E3s=;
	h=To:Subject:From:Date:From;
	b=r4F7Nym1qo8DwywQzrslORfg0setvEqPcNpH5kIZ4kwWuD5jdC1/iO9urnzsQ/dQE
	 SYsS/DxA6hcZvp+kUUaSRo4CEFGk4Zum1ts92ySjYyVAJfMjmdQChtyjbiiiLfhNaM
	 /IdFOGLix458Bz6oGOKX+Fm8VADcFVjmQFgvBCCbb+FyOSfOoFOh2Zi0OBi0zaDmeC
	 gF2UyEz8ep1su7Cmk+oEg840c6E2TD0gwW7rEJ1FlWJzo0IDXjojpZv5hXne/CSFiO
	 nSMeCn/bdE9HxpddJTgufPSXV0z3qOoL6hmXFBAs6l5DTHylsdy5vBmx/4YJkDKdB7
	 C9ROOh/HxtO8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F488C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463259364.17421.7425017854285902265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b0053b43923d7b458def953b15a2307a48f0ac53bff161291ca72206578f14
Date: Mon, 14 Apr 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744632593
