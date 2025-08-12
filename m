Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBA1E1A9F89
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755026994; cv=none; b=S5ood48Y4Tfs1+zsspnhPlLTOI+uow22EcwI89PM6VFgSQfvGnSLCuyXcSyPGxmOzOXkQEZl2uXMuVi4r7BJGyIaMYajohYMEV8cNA2KG2qqLrTJrryn52PwA5ubcWCPZ49HAgYCldGrF/PsKpGAu2v0qUsWY0cEwQy0bdpvIjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755026994; c=relaxed/simple;
	bh=tR0Pmz3ko8q0o7m+OJPtAbP69bVb4O/qEvmNt83kCTE=;
	h=To:Subject:From:Message-Id:Date; b=bk0uWED/PTAIyBpKHALmwwZShAGRutjQ+zGWrVG34Svnsq+N2I6JXvNL4TFo0kMIq1Ha1IcAVaq7FVMbzLBOViq0opkIFBK/ejlT1KZ84jAQ042CEtzZr1mw6MJo1ozShDmjnwawzO1dyMyQW/A+MvnOdp5sjR5+KJHt1v7Fx4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YwBzMaHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YwBzMaHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0139C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755026993;
	bh=tR0Pmz3ko8q0o7m+OJPtAbP69bVb4O/qEvmNt83kCTE=;
	h=To:Subject:From:Date:From;
	b=YwBzMaHIXjXLEVypg3j+JlxuUweJzTM6K7tcvNo6QMaQVgWRXNO/gdkRc7Uf4p506
	 vcSvXDYhrXBpgTn5OoSymdiZgf2y9bvGVCkmC5SxCitPffZAxfPTabQyzl/byWN0/j
	 ux6SlrVjlFnONLWwHfMdPUg0Mzz2jpz6F+vCMtVsM1+Y8jRJcUhjJyXfI7XoBCcu5D
	 4XD4B0GnC/5VvWpyEDT4rhjuu/hJsb1JefMziRQoxw27sZ8n073HgihDFfsKcdgCQA
	 PZEU6b+L1ULDq0Zd3ylgbDGj0K+ixiBlTOm+UyJVgD9msgCC6dYWAF8u6P+5iCJEuh
	 lzHo4ruOWMaTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF8CA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502699358.8991.2037994641159360190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 297885ecf865353a8bafda39fbfaa00a801cbbde31a6930b0a2fec8e086508a8
Date: Tue, 12 Aug 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755026993
