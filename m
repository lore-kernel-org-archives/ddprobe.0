Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385D735950
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759100395; cv=none; b=TOhiW6f4z1t52yh3JGFh+l9kdnvsg85BEucV7Dt2I9GSxg89cu2lwDcxr5nfXEw0tu1vmjsRxqV5aipqrBLGQpty8R2tFTo6fcfsPGZe8sKHSHyIKXZAIYWkAdoGpn9/oe9uaDlTd2gXSCRJ2wGKYwPv/iJ34YjFOBTDSXFmCIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759100395; c=relaxed/simple;
	bh=uhnpFpM3I3A65eqTXuJfOKcQLX6/C4K7vUc+ICN61sc=;
	h=To:Subject:From:Message-Id:Date; b=PdTC7bq5Vh9qwuiQCVET6mDr3tGfSCdIw2CQPJ4jpq3jtP61D7c5tgi+4+ZoJP2tYqtpGMxdVmaLWsxWRk/1ytD2yJergusTr8oLG4tgEPzDCRegF/GHrJKkEwG89WkNjBU+sbIJmGueOKPRmAZoVqmU2VQSH0KlhnEr34KGS9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UYT0mSS4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UYT0mSS4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7785C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759100393;
	bh=uhnpFpM3I3A65eqTXuJfOKcQLX6/C4K7vUc+ICN61sc=;
	h=To:Subject:From:Date:From;
	b=UYT0mSS4xPNDNEdcylU6yRuVeF1Y1aGoGY3mGYbxe8ZDNMicHhufumRNPPn9Cf6Gz
	 YP7QGAN//Ru2/ptcugwn7Px0tGpXVnqMjW/20J8mqQMpbCSWlsDZBGGgC5TWp63DwR
	 SBl+k1hOjPEaLTkpuv8b78irHZEstgPSfZMGCn86DP9TowjShWLqn+6hhE/ebu+pqI
	 ly6ggSFd2o1cQ8mFHlKOOOe4haqIqcIcpUeL3PlHgi0TGrDn3fJHOo1EbmOCVIgxJf
	 oBVI3mzcwfGxYESkUoVw3J85luTU0cSAG1XZED7MKIDP3AoB84i0BRCStN/tFGsODP
	 2xY4NrXKoMZzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F42CAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175910039358.16781.16262556331091742173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a36955358e7a8d2e4a80f75c8c4d2d227298f24c52d2e668932f4332770f179f
Date: Sun, 28 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759100393
