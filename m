Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2728957C9F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767530634; cv=none; b=mw9NF6d0T5N9CatCaqO/xp7C4vQcWiJ6ub8YnXpJ3zKPf5WmTzpihrzsyT2IR/K3nm+kc3CSvfxpYB3lg4+WvoNx/h2QHIyRMhXYfO/V8p7PUEcbwH4m8dFL9TPCKY7fucpkGUJ1W3V9GxK498QQ42Fh3zG9vTbmub01ifX9o6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767530634; c=relaxed/simple;
	bh=uKhlD+Ksc2M9WN1mhiaw+tZMxCXcWNVrSSH9aBTU/Hk=;
	h=To:Subject:From:Message-Id:Date; b=sQFJKmqB5MrszODAhc6Lb4JaNudJRFXDhEb5wud42MdVML4zhlCmqlGPIcSyc64uh2Urq+CfJJJGDPpXmTif8lROu6ZMJmJv5x7Atv9L8qqFF7mRvkcrFmytNn2wb7jWws1OkNakj+vF7y91mNlHd4mnokYlW9NEy7SHV7Ow5YE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aq/yO12f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aq/yO12f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB8C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767530633;
	bh=uKhlD+Ksc2M9WN1mhiaw+tZMxCXcWNVrSSH9aBTU/Hk=;
	h=To:Subject:From:Date:From;
	b=aq/yO12fKKtL0/6aiFHkiPjTAvF/hLWvUDzWP82UEJGJb0nK65mBxD77YzccEHJgJ
	 4ByCwBXV/5y0um99kYliIHIRw1clxU0vSF81WJcwb9L3kl3/BP5mUQOAUBQ7Ve56TG
	 C8qgF2fa3ENZysCUMXH/A3iHGYULJZ7lL48IGNP5rpsF7W6dBY1S+Dmup9S0EG2cr4
	 nCuY8l939SHQOf3RA+wpUlyodHVliMBM0YGOhei5Gdoj51JteAP0rOP/9HDHabZ0P9
	 VGKP+iyt/31+375S2/LSAYJA0y4jfCDD8AlMS9uSyAVyMUzEbnB6EOdJQynk/hiAzE
	 Bf283ymNsa0yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91998C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176753063357.20843.13813510961132664627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25eeceb91925daea6845a5a822a3f209b4a0effc45506c0d7cc35ad759ab3e2d
Date: Sun, 04 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767530633
