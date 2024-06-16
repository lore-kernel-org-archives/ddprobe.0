Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69C061E867
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718536703; cv=none; b=pHEnS/0FuTWcg4AQiNTx9Wbij7Z5BJnq9D64vHtSWHESCJTRPy9uwlmaPUlhmGobKw9Exq0PVjU5rMjZ1aphC3QFvmwMTVWykhnyWeadOzsm2nVBUnts0OSdHHdD/U5mJXhKx5LD+t/pBZ1/PD1DiGE50vbmKoQHTMurwiapQQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718536703; c=relaxed/simple;
	bh=UfK+U/nmKYS7CH4HeIx/IJ3mTpReYmYUp5qXFYvbfmM=;
	h=To:Subject:From:Message-Id:Date; b=BXMbVnw+d5VZOD3D+NaA4pfQV2i6TjgihZZcUonWGHvMAOSVvMplAEnZbgmWCYo5QtE65kDfDvsz6POJDhuJ5wLqNIl6wEMLlJ2XLpSP6DLM8wLLJGzxkQ28RLpZyUENYr7Y/zk3UxUO6YncoYokiX5Y/LNhMGJ9npQr5XcTJs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqFMR1gY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqFMR1gY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0493C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718536702;
	bh=UfK+U/nmKYS7CH4HeIx/IJ3mTpReYmYUp5qXFYvbfmM=;
	h=To:Subject:From:Date:From;
	b=dqFMR1gYEHxWHMbfob3kQRD2Xapp1d5wCS0lIG/nDDEruIpnYMZpa9W+50fF97d1G
	 ddOB3NBNOiiB6WRrf+O/t13vTJYRa1C11h5wtcwWVEmv9Zn2vi/dyrSJIZYh0yE7tQ
	 0+1hEn0RTXuUCGSTt0YvesxNg8qBYZ2SsIzzJpK0yS4Q4nKiSELIdFRtEGv4KGPHDY
	 uAwOZiJ0qpt4fQRgdOkGoMkgKukjyDFu0yAvxiCYmn2kV70//paA19CqO1oEDi7UtI
	 z/sgZ9UDDM+fnDOiJQ0iEugtOioBwn/V1RBxrqIAvZ0k5p87A5x2vyMUaeXnkejNaG
	 tDUdoVKMF61fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBBE1C27C53
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 11:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171853670280.21571.13203605079958888604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3854892643678e624244e82193b2b7aa2490c1eb9ef9d25f590a7a48d41504b2
Date: Sun, 16 Jun 2024 11:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718536702
