Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E291F3FE2
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746131994; cv=none; b=hSba2umwbucSoJqOAeSyO9tO9VAzwMiHpnGf5M1WyXh+ivWloms9gbpHZahy7im69JY1InUtOKL4KmvsaTbAKSD7W8q8eHDL4iyAtWbHMSy6MKWH3vrpM21LgR9Fk3nX/NWNLBCTahFVRq0AivJKnvXrwND+DCJsvh8Mtu5k2NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746131994; c=relaxed/simple;
	bh=17757qTJMP15Z2yu8NsLlyFp56lAkfggeM/R2KCtYcg=;
	h=To:Subject:From:Message-Id:Date; b=ZPfB4sLXF2IDjvnSmX4QxyWEySHn+oJtSaUUi36rn81N8LTPpgucBhFYf/UKM5/N0u9vt5no8FzdCNKeTfy0EUrkczwudXF8bYgl/ftHE7gXEGCgqYMyg6y3NjyhqCQJlPH1PE8Otkvi+K/u/f9x5gBJfaWc57nywgifbwb2ce4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Njo2pTP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Njo2pTP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C10C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746131993;
	bh=17757qTJMP15Z2yu8NsLlyFp56lAkfggeM/R2KCtYcg=;
	h=To:Subject:From:Date:From;
	b=Njo2pTP7DDPrWbMS35+vy8XtIX59HWDS7/NrsOn3ucLsbqOq1wymQT04lwcq0Sx69
	 ljV6OVb4Wc4fKfdn8N4+YvE2ZC4K923dqYl7WTT6xX75s7EQxjcq38Dyx4GPxIDgLT
	 20nXR20zAUq7ofXUOjJvnJTF4zjBzuwqTphshyIRwmN8jv/h/yKYkJA2Tc7OJhp5oh
	 LfFEzKl9GnZqgF9ZK9yh0u7gcpzhulx3VBrJHWGLP2Z9dJUnNFVe2iLlf1pRPdL8ZX
	 waSZTaKniuJ+lCPTDwRncHsY2BprhiiVmPfydHZ4tkh+Xx3Ug76oentXcJSJmcXMWx
	 rUN3VL5dFTXdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F30C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174613199357.31014.6662118384625994211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa7e75162cc631a10effefc3e8694b717c3a2f0e25181bd1cffe74a7a0f9bba
Date: Thu, 01 May 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746131993
