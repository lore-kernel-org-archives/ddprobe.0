Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A251DB12E
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755934794; cv=none; b=hcw4iwiG4J/jyxeCvS5ehV5fWDLsviYV1yKZwpO3XKZoMVeSb6sFK6Dp/zP7GA04nt4mgT1Yc0Wu2lNEnpwPaJBHRyYJm88NYDts1IWuz42i2NbqcbmTYG6iCnPh9hzIOo9e6JDdxTOCELWXYS7y+K8GNNqwiiLI3APV4LcdA1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755934794; c=relaxed/simple;
	bh=+NDBqD2Ac7NEUwo+0QlgwbA9fGxkrEKK/jLpI2eAZSY=;
	h=To:Subject:From:Message-Id:Date; b=Mn6NwZEjbN/YHrCKm+mpwUTazLatWXaLU8F5RdPasq1H5gAuL0WpIHNerxk2WBbpEOfmlwuai3Q1I/P8aXvgZ68Y/UY+9Et0d3675JoxaQq5VO3+/jromumihPexPv+jm70nu+Og/2Ey6IDwVZXNaZIrYqO3TWRT1KGgW/qYbkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MM1x1hVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MM1x1hVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C3EC113D0
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755934793;
	bh=+NDBqD2Ac7NEUwo+0QlgwbA9fGxkrEKK/jLpI2eAZSY=;
	h=To:Subject:From:Date:From;
	b=MM1x1hVWdAhfhS/OnlVYBtYxWgTYafbaMZxRvUeAYqpVQJRjc4J9wagNtrLY2K0Fj
	 AVZhKN8Pst1VvnyxLIjQJRAn0j1VX/qJLzZ11vi/putJzW+/eNvGHCDfWVp6kC0oZc
	 FCkXYbw4Lj3W1m7Pv+hTOTJzxeUbO16cpfohjwSWe/3EWBe0dcAu+FXPd1SoKJ+inD
	 1zS5LHhxJfloCs0q/7Jb4ALda9/yZJoopSzb2fjD/zvbF80CwiVaBwbpb0mQ3lgatd
	 xPxakayeOtEPH/6930/9v7strY53k1c9Ms2P9VM2ux2EafJwExNNZ1/EDQOaCMv4qT
	 rPMD3C+eLfGnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B54CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593479357.3035.14057873754810430109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef61f0b7fdab6beff65ed0309e486ca38d4b3b28303ae8a9ba18096b0dfb3ac
Date: Sat, 23 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755934793
