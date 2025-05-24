Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC6F7E9
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748057394; cv=none; b=Gz+G3G0nxVf4QTPJwwAJIGYHdcgymrb+wCK4ye80Tui0lsd5/n/rp9OL6vZgKi0Wc9sUaasg3miNfE7fQ/w9H+kKYPzc7EeyF+6LyWAu2I4qtANMRLpG1AxT1326hkKvsiq3H10LLkeKVaOBP5laNxuQcIuQy9m4jd4gUIwNI6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748057394; c=relaxed/simple;
	bh=r+uQyu6kCw+RalU7tv6DJw7Wp8z1Y8P6p2E6dtHLSHo=;
	h=To:Subject:From:Message-Id:Date; b=TRR0rR0DtFWGe2C2H7+n/eXIQDlCAxfOqfUDh+8Rcc31oXH3sde/5dMvhI5AZ7OUmUJZmefVaaAipplySN/ajsjE6NeonNYivUyR+u/xuzq3sXk83ejjL8tqynO5FDlRgbv9WOZEbPIE9tDjzTy8qEb69C8ysXofkN1K/3tQdxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VM9GiVms; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VM9GiVms"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3843C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748057393;
	bh=r+uQyu6kCw+RalU7tv6DJw7Wp8z1Y8P6p2E6dtHLSHo=;
	h=To:Subject:From:Date:From;
	b=VM9GiVms02pPkZDW+z8zklJNCnofERwungGobtGKBB8iovH6h29jZmPPAzGUyXY4l
	 7ehI/LcA3R9vxm3MG9UC7x9zg3Hgmal49BG/IC23V/1jak2cxJq8HNxnyL8USLNiGS
	 8L7INezIcOW8bDu02dm0WP55jCnl8MRR4+Ygl0+z/bUt30wyhjEvzRhea+/u4e4HPl
	 hC+ffRwheIyVtAPTgPi7HhVeAOb4vxeG6sYeze1vtE5+Gd63788ksAPPtrpXYfrBzV
	 wpADIC5biSEMSMjlfiosqCb3HK3Boe/r2keNLBYuLzk0viHmJfNF6OTS3ct9zi0T2e
	 u3eBQL9yjrjXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903B6C54E71
	for <ddprobe@lists.linux.dev>; Sat, 24 May 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174805739358.23850.3634481261419258765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69de9870377143c82be643b761874770794b50f658c8ac895b457f3ac77d62df
Date: Sat, 24 May 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748057393
