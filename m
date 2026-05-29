Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324EB17B50A
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780016554; cv=none; b=GdlmOLwXemY84bOC+uSC7Xje3xJKOV3ZYWOFSqdFIl7V2+AbZgb3W2BUgkRXoGDHeYPl4u8ZqPI5Lt9vtwUaf5fQVyFWy8aZYxAdwByWcFxZZzKfpSz3itz0ONy3Z2Yr8f8vqN58n9fVYtulg9QAQmDrRAgeVNTTZ3y/45r/2No=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780016554; c=relaxed/simple;
	bh=jK1sTHz60FVYl0HTHDSHeI+0V4Gf3wy8IHGTPVMaTfw=;
	h=To:Subject:From:Message-Id:Date; b=hFuODx8xO2aK7vH2c+Nvaeo2rSwlMwTGL9Lz6UQYoedrC0elTRfp5+wMTZdE0CGZZiPDuIazOfGiRgVL0uLW2HRDTAZDfRk3qzZi+As5NS2x0IRqLOZ1/dQ4FMXF8R9K5jkbMGFDL6JJZAvC/j7m3du7L/SEuHsMZdIu1hvMdW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rfKBUI0Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rfKBUI0Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33B3C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780016553;
	bh=jK1sTHz60FVYl0HTHDSHeI+0V4Gf3wy8IHGTPVMaTfw=;
	h=To:Subject:From:Date:From;
	b=rfKBUI0QOVoCB8VdWW540pSkkbfDpYP1o9i+oAtWinR3qdsQveN6S5FHOfEoSp8O5
	 uaKKYttVXu4P1K8K6D8zbwk0m0zKxJikZ66+qChyvWtbswxW6irP0GtB6w0vwebA7J
	 Hv7TabkwmBIki9YiWXg88d5NoluwHSBl4nAo/rx6tjP85WxHHz+rVdxkwvlEc71nXI
	 nwO58f+rGkd09+lkbCAlNv1AaxwmwFwxJEpQ0+6sCpRpfTEJ91XErsaI5yyygHgytz
	 0aVY01/PkPmvRVsYm+NZdbxmRCgNg+OTsvWRmToOWljn2rbjAC59segxFvnV7AjyTf
	 1nyjZYeLAqf5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF1CCD5BD1
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 01:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001655368.7665.11777381278526052915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae896a95d572df14a3d803b4176ab79338daa3454e25ca39f7a22e0eda0b3ef
Date: Fri, 29 May 2026 01:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780016553
