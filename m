Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494443BED42
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790766634; cv=none; b=sxOAPNXKxYBEs/3xEtVhbyYgG9G0VUcxPtr3kP1INvfO8wyrx4gRuVXM8p203khAxyW5rgqgj2WVk15huu0dNgxPTjm6009CPGPuX2T5FeVC1zVM28B3GWY7qUxesmZmeKZK0OYgNt3d0Xm+NWCNnZGzo9VwHWRa97wLmpdscig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790766634; c=relaxed/simple;
	bh=B5ivEeC7l7yuVkZ27sBcgcvo1fEJjFYBks3LQshjOOs=;
	h=To:Subject:From:Message-Id:Date; b=HUBOXfjlm3GKK5B+xR2dO1NFsV2SAVRmpaRZzqidP+jqJpm4CijtUzjPVE1YuPOrnGIX+KO/OyLglx1uhJTmAL0sOxIEPgf/rHSr1bMprWTSqhWFdVHqFX7Ih7DxYphPmAOFVF7+bZ/VxyhPlen/1KUj2jrfyQONEIKRLZoN4z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srZGAyCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srZGAyCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0100C4AF13
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790766633;
	bh=B5ivEeC7l7yuVkZ27sBcgcvo1fEJjFYBks3LQshjOOs=;
	h=To:Subject:From:Date:From;
	b=srZGAyCpnNJx+7/Tuf+u0gRq3tjp1Z6JfTluc8F1/mZM51MI8IWC53N9XhW1cv86X
	 Xc7aQrYmaWKyVhzimRtzGxR3xPwo3SSvSQuhotcILDWRP4eICmZ3PLJlNyQjhUxpDi
	 cTbBZuVKqo6QI2rv3kI5+TYP/IOG2fZzLM8dy/9SDExHbEjHUS8/V61+cpwINaYs6X
	 3zzw0oL11k0n4lBG+GUNrOste2ftRwRhFLND6WXJCHN2v+6X6BokZZp55+E668ZWBg
	 DawK/tEsyy0qXGRk6KBRsV05052s+IxXw/3jeBs3q/mX3wzBV2ndq92i3KQL3Oe4iB
	 tMZhvMkZlFsag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB770CA5FBA
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179076663369.21155.1571914662497924788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4b481eea0ea86cab5d3dc5e5da6aeaef7e0bc778db3627e8056879c763cdc04
Date: Wed, 30 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790766633
