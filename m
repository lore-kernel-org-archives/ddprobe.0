Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C76F51C3C04
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737287753; cv=none; b=PTGH2v/sxFOBDN2TRkpSJX3TMVRI0SYKfa60z6LqApuMOOHOZKeCTWux/lyLkdVbtWOL7/yfZ9o4ZFIl5dhF8sDlcyBmFnvJdXV+ZiKz6IngoDOwmjK/wewAyJcyBdMFrd0a9waX35qMvBrCos3/aTAjKLNrlPTfC7sKDEARrDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737287753; c=relaxed/simple;
	bh=nDtsLqgbnhhPQk7PrZipTbxn9/aJLJlscGMUiaZ3Evw=;
	h=To:Subject:From:Message-Id:Date; b=kcnVsflbK4fdpY6cU8u9qSjTaLNdGeEhp+I2pC8Odu96v2xfQfyhLGY+cUPpbSJ12XBGibCXzpXu6h+p5yvav19rXN4v1ML1AE3+de4bb9PL5Y/4iOGFaR/JcWohGdRb3+7xZc+mpAcNOn9m5Wd4gkoJtgzlhcMor19tOG8Bvpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmGZmxUb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmGZmxUb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D59C4CED6
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737287753;
	bh=nDtsLqgbnhhPQk7PrZipTbxn9/aJLJlscGMUiaZ3Evw=;
	h=To:Subject:From:Date:From;
	b=EmGZmxUb1Noa0jNoh0rIlXAdp5UPDOEXZY5K6YMpBGftn3y5dPCYSUXe6XSjZH/Gj
	 +SiEVLTgTiE00WygmmU2SaYNxQ1dEqMJh6VkJIuu1MCK04xm7zq5mWOKgENVvGZQkC
	 FHbMHwGibCTnTHYfAvlgbE4SB4h9K2ASEnsMKiRpvSFn+GdG9qGPJj3FlfcAtyS6oS
	 euBq1X+p7zUMstNUXQYcBSrEvwkaQGvYU1qwzlUV6AaQbLFWXz40GU1af4RuDhPx7y
	 i5pr4s3UhZQ7Nyql7skwvQ+Y6hGbQkEA4QvRd8rwVZwVCI56nlIDbqizMrgDSq+xi+
	 cCw7v/+KYk2pQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC2C02183
	for <ddprobe@lists.linux.dev>; Sun, 19 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173728775360.23303.15986580560419955578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3539875ea076b1832f5420727d40c0b02c2572dd5ba653a8b4546e8efa04300
Date: Sun, 19 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737287753
