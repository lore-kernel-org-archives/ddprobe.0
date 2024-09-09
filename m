Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5C41509AE
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725869754; cv=none; b=WDxTMNhzTuLJ3DEiLsWvH615kwNovFH2uEbzY6mTvJUuYDIFPRtewm5CekIo8tX9Utoek+En3gsytZbs6Jbf0nc7xN61tY54OmZS3c8T88hGv+U6tbM6Su3gLnZeAhQYfnJx2IVxq8hu4/30WambwQ2/vbMA5e9mGZ5HBo1MNHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725869754; c=relaxed/simple;
	bh=NqxcBpsVPRb6qdju8dvpTY4ueipYCpQFGr+1RssbtBU=;
	h=To:Subject:From:Message-Id:Date; b=GUyrL0sjxg+NS+Ag0DQE0vKiJIHArH0AwTql85Vo6MTrA3AycHORtgJbr+z08ok1dNUmUrxNT1/trOUR+DMLavR75qXlKWf8w42NGBd1dUuM9OBs95JVfF1FXjP0mf73lNGUO/s/sHjudzJ253zvItpT4DnKtc5TOXiiY31q5W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qEoeHRaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qEoeHRaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A623CC4CEC5
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725869753;
	bh=NqxcBpsVPRb6qdju8dvpTY4ueipYCpQFGr+1RssbtBU=;
	h=To:Subject:From:Date:From;
	b=qEoeHRaDkBm1tKxFbuq7qKGS1X7t26ZyOzGmUFwWB6Zx4PPKqyu5OVs1j6uqmCnCw
	 kbux7Y0kCuweFyRxV0pde+z+Loi9J0/hDjpM9XY0z+/AHqcKCvmAhFdLoNeBRLK+md
	 0EebzUW3dJ+5z99DCfUwm/o9jDCZX5m/dpldKB0Am2g8M+O0qqCeJWQAh8S3kryqps
	 04a1cSjbz7dRPLjHDS2wRGHhUjbU53JRVPhmtT3mUxkL39O/Y3jCDn6EDqL49iXxRQ
	 j1FrqQH81/QdaQoItkwZAqLRq+TaOOTKDunM36x9Lx7ybKx4QuAhXYxwP+xXMIB9aZ
	 gBpNNWZ10Es4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CDCECE57B
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172586975360.10464.11746663223687496826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4bd6c2441ad7d76af6a85a3f9ce3cf1a8728ff2ae394166be78ebd375e6a1c7
Date: Mon, 09 Sep 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725869753
