Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2015A2D4B66
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750870194; cv=none; b=WgifUtL2r5qXm+yNOLeruVdAj6NOa4x6bXcmJH/FGn8i5kugq2du45cRkUGg86bixzQcwG+2S5HPJb2ebpRVHV232zssYftElVG/GsVRJ/rrGL/f7axNuNc9IAoRCM5ifVTI1Rq8+XzWDFM9dfn5mNRnuwedtteX0mM9OEmRt0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750870194; c=relaxed/simple;
	bh=pq6asqDXBSnuBnf5T+ZjcNY/EBMEH0wVlSYLJIvU9xo=;
	h=To:Subject:From:Message-Id:Date; b=QQFLlSa/F0pkNYncj1pag5pSIckHC60JYB4IWrPLFKTp7zZ2yjenYnxZHbHR6/6Yc5w5xRI44p/sT6x0AJf0BJglqGfDcp0olHnP4KuhJ3m7WOdHsgXxy2zCnd1kXaH3Rsh7OIJ2HZ9JNrV+o5IGVdibjuwRvkafe5/zPdYGOQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ao3S17jC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ao3S17jC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BDEC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750870193;
	bh=pq6asqDXBSnuBnf5T+ZjcNY/EBMEH0wVlSYLJIvU9xo=;
	h=To:Subject:From:Date:From;
	b=ao3S17jCg+B4WJyBZNT8MsSz6G1/ws38jqCGdEyQmtPwj0tlJFIAB/5t2AFQ6dp6l
	 iFucWONaINluNgKxAIeOd5SFRhayprSYVcBH4wRJro5K0aXYT9LAS+wzTHpzH0Gk71
	 kkA/OvzZ+4N8rFcFGooauoaJZFr7IMTCo2APk/v1niLHT9DicvnCasuDGMd/R/DcKF
	 Pt1qZ6XG6BQ+mnH+W8fOSKXBOWtn9nfTtPa/uVwOz3z9b/0+kukv6x8SUwMTDJS5Xy
	 roBtlz24ieYhZ0jbOcVbLG0dEt1X7WFYW8XZ5UfZNoA1FwCLM+zVg2lPAk6wPG6HHP
	 2botm+SSNMtcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A48C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175087019358.3462.11842048689350759833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e144024aee26fe525e1a0277af51a247a5a0f0974151d95e11c81833425beb19
Date: Wed, 25 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750870193
