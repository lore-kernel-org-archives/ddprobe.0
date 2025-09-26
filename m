Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41C411F95C
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758874194; cv=none; b=sj3xVcfMC9+c5Pig+BogDzmh2xpefOdjffwExuHKvPaYOGNF6O+BMHLS8mu0ijnWXlR3/Olh1PcqHvIT0vp56f156zh8QFEBiXkIDP9/Xwmka2bXYPfnHXoZx46tmUskYjBShek6QoXGoWZzuS0aTI5IedStY0b64iZvhrNpGW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758874194; c=relaxed/simple;
	bh=43BZd9jIzfW0NkSw1XHBEXM3Kyeks/P5Bg/SVQB9UMk=;
	h=To:Subject:From:Message-Id:Date; b=Y0f+upPTO3jEmicqxZ31Ir9hmxCut7JlW7L0RMyqhcZdZPHjuviz4ZMqMEIRoEbIY1c7CzH670mWQk3ZP+s+gt89veQBl7HGcPU4CUe5efZSs5meyHWZG2i5BgNBb6roRqM6Jb6XrIHw4KOv/Tny7rIXabSo7XrZ+6qPhJdUciQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NUbNFHo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NUbNFHo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B4C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758874193;
	bh=43BZd9jIzfW0NkSw1XHBEXM3Kyeks/P5Bg/SVQB9UMk=;
	h=To:Subject:From:Date:From;
	b=NUbNFHo34Mz5HN+aknhDxq+RpVx+XUDtMkJPYRNtgrS+ZTY1siDj/vIcHtO/B7ygz
	 jGaUzHblJNbW2DziUOsyxtysJObz6VoLYrsK2UAwtWpynkWCR6Qy+fd0xPIcms/Rlk
	 LrpHLRz4l3jtzq1SBVOauAiXJR72OaaYyySfWQtGQ31Lr5smnoK3pdLnqRK34jJ1tO
	 st/ebzMnXpCiRYGxPO3lc0LGLjdWkDShKdb++ZL2hoLcVxO69ryMWYEgcECaAcXyQR
	 UebCUgwb+LsCbNqK2fB+NJYLQ0QlE78k+sK+YTlBv25dIvPyNrRaOi8OmoGGivypHe
	 3N8eocgm4SnBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931ECCAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887419359.31059.1559201940253026685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9edf24e3ef0ce9bce8e7e1ba21ddc6eee4012e215222fda3e7e5039c040326e3
Date: Fri, 26 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758874193
