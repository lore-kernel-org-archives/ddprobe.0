Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F72A1362
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716599003; cv=none; b=cLBReR34M3xBoeVvfeHTEZVjf3PQDyEwLxNJamuNCMRx/f3QDHtUqWVI1EbVypwUDFF2hXPWgOzctkOarDRyXEx/ro6+lAaIEY6W/SxMMwJ2wtgT7uAhWhJ48UY3dSvhGU6KLrAmTygqnRHOSIsE8Fd3RGy2nE6VkyDXnF/rTqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716599003; c=relaxed/simple;
	bh=7LwnCYaGScZBS9/qOQbKd+bMKF5HIZrYjpFpKhPAag0=;
	h=To:Subject:From:Message-Id:Date; b=iknM9C87hUEV/gF2GX+lzGUGCm37CWKkkx/MveHo/fm2Tox87pVdY8YdJoMoZxJ58wO9fUJNqsMvg7CQ/nW5l6s2uX5Wv9rzJbd+el/NzFQpNzfb+mQOINk9/6AC/YigcDZVcSsMjFCzSPMgl8zhnWrLn3YiEjYyRVpWvR4qyA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OlWiOH+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OlWiOH+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FF2C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:03:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716599002;
	bh=7LwnCYaGScZBS9/qOQbKd+bMKF5HIZrYjpFpKhPAag0=;
	h=To:Subject:From:Date:From;
	b=OlWiOH+UmIFq/QZ5o9pfHnqVEVAc5S/8uokRd9VtypmRgBqiqzxh+a1MiCUIiLDhO
	 EyOSfiSggKBVKytZ4WaioCN+PZBkKyHq9t8h12fhZ1o/yiTlQ2Yn8cQEM5IGLctSy2
	 wpRwABJ4Dxg4C1VhSHx3yUnVph+VM4nbVgA3XMGOjIT3yxqLw9aBG1HAvx1oNMiAtp
	 PixZHljXVtebrlfedkch4FkJ7kdpzV5Xp3w5iwm+VWQwew/b7PkqRjEPpkJtlDKcgq
	 g4qBtnIjXR3wvxAXEjv2JxPZY5nKrVPw/znub7x1IiCL0lzg/2BfxKHAeicbLpWGBj
	 Z/KlIFSQdgvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD410C25B74
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 01:03:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171659900276.11636.3276050982675825492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb92e2006f597b78abff058ff449b3a16057af9349d4343b5a246327d40b1991
Date: Sat, 25 May 2024 01:03:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716599002
