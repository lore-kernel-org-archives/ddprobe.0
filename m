Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28D76213237
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758379794; cv=none; b=gQkaxmsSP3bQlWWT5sWpuPh49KRxIIuYpcubIb0fzGd4PEN9FUOaJaIQLg9WUZ4frWH9kAtPvB0+JCrcBVkwNXTtZyrwv8SvBVK8hiPzWy2ag31s1bE0L9Er1B+y5y1eaUSzAdQ8g2dQ4mY8bQagqtCAYkVV2GBlz9iqd0Tw2iY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758379794; c=relaxed/simple;
	bh=mePuqtAHom1xZ5tVWDYkZU5VJRZFlvaUOxri+tKCeOk=;
	h=To:Subject:From:Message-Id:Date; b=SKwSgPeDinT0S3ZPsG5kFDbVC9n0iDFzBXaarWnS+48bD4lJ+ag2C5wSmtIJNx4rtH67a3HQvsaGFilP49cyPdZZgKoW4Kg9SFOUgdkqoT7yYml0d9nLOX06Ewf4d8kCQz0bUoHqAPUvr65Bws8a236X8dtHzRbcvKgsxAmmADg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ttNw4MUi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ttNw4MUi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F61C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758379793;
	bh=mePuqtAHom1xZ5tVWDYkZU5VJRZFlvaUOxri+tKCeOk=;
	h=To:Subject:From:Date:From;
	b=ttNw4MUiqWOGABb8yaoOAGQbNGK0GX/xuLHqixYBvpUGMgQ8G5llLl9zXgDCkipHk
	 C2JM2yfJjy4WIcjUAbvVWrczAZzXi+ZVahA8SfjCIQyKRENwZ5PduZ+AfH8A+gv7RA
	 oBXMyvduv32RRNwGGPqzkw3Dh2I/ZjpxlzI9JEGGDl+XBRTHParjOLz0S61OhcDYad
	 HC+FyyB8flb7Gnz4a8kFsJZ6i1qZ6zx2s+Z0clA1i9cyhQt002TdNl1XWcaZGaMv2Z
	 uZ4c10IV14Pt0HkV012fTT2PmXIRjuR/Qqb+4Gkc9wLGmVGRe6TEDat+0YuJxf+grO
	 SW+c6zmgbmRPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9589ACAC5A5
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837979357.12720.1424203189447470293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f5598503833a61eabfa872d70f18baf3537c2c09bf5f13ee62d3d9c9876f037
Date: Sat, 20 Sep 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758379793
