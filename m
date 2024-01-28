Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1534C8BF7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706423297; cv=none; b=lDFdRtCpHI+tXxjyffR9pdFKqBS4bgd39VoSt6Tal5xolgqdLvJe0kIIqDKUfmuzJjzeljo/i4DeEn/g9uEKreu++jzI42YxMnWe753uVTMZUWtTBFVwzaN4JUwD+43JOgFlkHIGL3mp0w7oAwMC2eGonwV2/Yoz76+tqI/XFyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706423297; c=relaxed/simple;
	bh=zIS4edNUBAmt76eCgKB4SAbVmSTSECAfpuNIvBq+n+I=;
	h=To:Subject:From:Message-Id:Date; b=freoM+A8CfbHfQ3Ktg5feJ2P/tBFXoo7G4/celLZQ9hddbpo8+g0a87PQptYSPskPAyKWwj4dlNLv7CxsgQHfYyFUg1+7KjK7paRO7VtXyNKwsdefReRj8XiYqF/0CaZOZ1ruXeYVEToEXASiaUxGWtCaZ+feftQ7VNfQhAfO5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uz6+Qj3Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uz6+Qj3Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7952BC433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706423296;
	bh=zIS4edNUBAmt76eCgKB4SAbVmSTSECAfpuNIvBq+n+I=;
	h=To:Subject:From:Date:From;
	b=uz6+Qj3Yaq853TWBjGy9P8Tx1O7fWnJtUVHu/bpLVBWIxwKPNptyHKKLcvUFaLOgw
	 ERqD3pJCykeHol8kBimVZVL2+rGSVKCGf9C6usyn1DtkCpEqa0Z/ZZwd5p/rzkMbV8
	 KuQYOSy2PXspkZop1uwo6tp2DMmqlkdwWrj/lObCeOKoHyl3yx2UU6CdYSgnkgY+Ac
	 wWlJYi3F5LhhlJfe0X0/y2k4lE1P/tt6yU0q0Ppz/ffN+wb3eOF2enJYE2ISfRa+BY
	 Kbuev++0QPRvXDrymx4+Tujo353gtNmxhDiKJeq/W9DP9yfNomwKEM6es4n0TpX2Tg
	 jEHuqxJFj0iGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D602C47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170642329636.11623.9859970128309324348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b446db2d99c28edee8b873712cc5372a844b016990fba9a9b455a25027161d
Date: Sun, 28 Jan 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706423296
