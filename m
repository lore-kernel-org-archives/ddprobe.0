Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA651AAA1E
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750961395; cv=none; b=kmKt7Ww9moxlTuXf9LFtFO4O/MZJYqcwvxCej/1uuzFpUv1VK/BN0J2+kBzs/Wt0h1nzTcLUQapronRoq037DaEkgIFz+fDCrDHho5qGDQvdpp2IMZLJ8wQtbKl+QcbGoIUNkgphkwo8OT7+zCu2FHKOrFwclWb5hiVHAGxTDPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750961395; c=relaxed/simple;
	bh=0ADrYF+6gL78d9Y6RyO9unuLVca+yfCqDOLX5Tp2LPY=;
	h=To:Subject:From:Message-Id:Date; b=m5rU5yl2sEBy/v8c9Z5dkSFPAmOEgemPZOYZsRMjl6tbq7IKnXajrVnIYjuVHuRfdO6HWSM2D98Vrf1fkJ43wBr0IuOHkNZZRi01uaCHCQvFJ8kjPoDi6zPExt2oqBiZafQmDdhi9/tVMsq9JBXfaknl38t4j6RaJ7d8ycI03Ds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=obgjbLUc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="obgjbLUc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6C4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750961393;
	bh=0ADrYF+6gL78d9Y6RyO9unuLVca+yfCqDOLX5Tp2LPY=;
	h=To:Subject:From:Date:From;
	b=obgjbLUcEpiOi4Evxc3Sc9t7QsUPigqqvCKXqRVpYL10ISb5oMQqw8Ad+enHr7oIO
	 Ga0/3dKiTuOrL2G4vPuEbV6WWRMDsj0Z+w7v0uKVVfQzI7oCdXFiLBSMk/KVVMc2Nk
	 2LwUn/BLOgIcjzzhJJNg7a1XWYBIdGeJRlpfZmts8KUnnZA6Dwc+Lp6Iaa0JMefBDR
	 UVrS6jb44qvdxPDysu6UeiGgDmtQC0l5hPi/8DVwuxsh+3OyXsOvZEVw5pYy5+az9z
	 Q8m3PYtbKZBXutDIW2TZtgfMzCdKJHxHbCgWhdaA0Cdo2LE0NHhLjnQWequVanJDKF
	 pW25zdnNdoOZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929ECC7EE31
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175096139358.30410.15011111242228566131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a09b05f8bcec4b431d68f0d28d54bdc23cd3dd4b8e7860f90f9a168e8d3b53
Date: Thu, 26 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750961393
