Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2773628935C
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752751794; cv=none; b=e24Izs75MG/Npt8i4nxWDklSt44LpS+UAeMBDurG/FHFOKmxsyJZv+sJ5pILtCOxwchYYUMwX6pxgDHjmu1nuPqC6yTUAo01h63HBJD5nehzt4zBkprnX9PqHTe9I5F8GUYDoMkAznF2iBGg5YYNfo7X4i+Hmm9/iWy4bwf9Dag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752751794; c=relaxed/simple;
	bh=IyHMiv73FI+wTC7PaAjayi9SOjkeqyjkKj1Ip6gmGps=;
	h=To:Subject:From:Message-Id:Date; b=umBnRPsZ0pYG8vNgZ3yytBsBONHy1DXLewgVn3DvbuOUnHaTd14omSHNhkAyEGZ9LDf1RROdiDmS8rqzYWpiOTxLtIOgMbwUPfkZvtO49I+uRZvLiUKkzVpuO6kcyP34cJNvBA4T2Lt7rDtB/6GfqeVuBsW2n9miUldirzy34GQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ieD0mi3Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ieD0mi3Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE028C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752751793;
	bh=IyHMiv73FI+wTC7PaAjayi9SOjkeqyjkKj1Ip6gmGps=;
	h=To:Subject:From:Date:From;
	b=ieD0mi3QIMVnlZzuVISqbGPlJTUczMABOO5pa3ewl9PIqc2ki1sAXa9wlFED4xtrH
	 uTo4DaGtBZy6SnO4B/SeObm5eAZYgcPJ4uQP+QvSl6man/EkD0TQho0Ymd4WuRXP+F
	 bWr3isYS7J9g73VzFkwMpyl0NpNl4HcGI5D7b4k5DiBlGlB5sEpXwVUicWRQEqGzVu
	 B7XNpDGYc/G75xlbgnWq1kinPWfzLJGZI4ii3+993p5v7ZQIUS1E8TCXQBXkxXs0/8
	 TPfv7IFaWZrnZgPmpJDQhKUOIqoddhJXhnBOxxMJaO73lgY8xWHWZmwJnXz/nvbsKG
	 jc6gNlmbfKtGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98E33C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 17 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175275179360.3793.1560092886745983095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d56cba65b61cd741c8032813b3df401adec19d91ca402a174b6ffbfddfec0dc
Date: Thu, 17 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752751793
