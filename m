Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 835BD41DE0D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785495034; cv=none; b=Fj+Pe0JkgSwjrorSHtzHzziqrSYT3RNQoGvophjAy0uZeyjDHVpIhCF481Gt1pwZXtVIJU1wUjZaXzajn9wilirQu/h4CkEFe1kmbp3gvgu8BYdFt8Qy9+GqOc2YwLWwn228OYI2wHYnIKP7SKIp7HuZ73Kgkl5gZk2Zqnupx2s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785495034; c=relaxed/simple;
	bh=f/MAcu0cuYBEuDqmrIn09sb0gBeoEda95+aHM+hGKyo=;
	h=To:Subject:From:Message-Id:Date; b=laa9QiOUDQ5Z7acRZ6/fSzZ/SVBCncskSxxv7CXQM4Iyqlkb09BqYUBCnKDYbdfFBgpZJzGNiAnGc/LVPcj4N6YU/3XSNBUsJQePlBq3AIPLpMe2XhVegdjmgTZVptTstHqfrSkHBcYZR9bj7HiRKipAUtEPPNC+yDSyg8RpF1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elx2nfch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elx2nfch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B49C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785495033;
	bh=f/MAcu0cuYBEuDqmrIn09sb0gBeoEda95+aHM+hGKyo=;
	h=To:Subject:From:Date:From;
	b=elx2nfchyrXX4DZZnL2aK+kT0g91fDHsvLj5dl4jVkozi92bCU22PpimS+kuhGlwC
	 A0R/dnZvtxw1YsJo+AINUBZu1fr4xa3gvW2exkZaL981c5ieS8kXRb08Nx/GPUdz+u
	 FEBmnKdZ7CsYokwtJEt9ha83TVKeWdyZvO9G3752GCJX85l7uvnzZTzI3qcBzV2Q/x
	 qGr844/7YgHNyofkrnKwjkAHXAWOiNnpWo8lvOsyaygVfemxm3SKu9kE9S3F+EZqbI
	 YA3iY5ddS4S+fiQ5O8I565gPEaMkHGkio0KlRst6Hgi9YIcYio3GdS/aT9GVfyTdmt
	 LYpKda3r2vzng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEC1C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549503369.2013.766390771129225116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d676847daa23ca56ff478aeca68f9e13e36a3d9a3ecc370ec0f1cf1f5f120fb
Date: Fri, 31 Jul 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785495033
