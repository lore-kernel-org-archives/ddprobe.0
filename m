Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB3A01AAD3
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 11:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710673697; cv=none; b=EwBjZk0k9rTdtucY3BCeA3gQ8IBw1spilFIJZz1vF5PJ7tVjOf2/haDDZgvo3LBiIz3DVDz2nEJvh8IV76MVhTUF1QhGpP8TvU+1qu7rOxCd76uUf2V7wv50A5qRIqrBTLVD2mngnD6/3fKkC1hKZOC2kCZRePGrkgNH4B25b/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710673697; c=relaxed/simple;
	bh=CPIhfeVVG5UUxRaK12gaGogE7g8fEfBiUOb4p/HevN4=;
	h=To:Subject:From:Message-Id:Date; b=SDDqAwZidtXrqNU+ppUcXkoRunjhESihLj3eJpsYxtyeRGVCZfWYgPycepsG93yR0lcloxV/W6xeIbNbppKUuhbPtV8SuQrOmzbAVugRqYTgYZB7QZ28JGyH+dspUAxdc/dzcHDV4HjaxVisAKb/bz6iXwdPPqIxjwhKr+oToUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gdrx91iz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gdrx91iz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 688A3C433F1
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 11:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710673696;
	bh=CPIhfeVVG5UUxRaK12gaGogE7g8fEfBiUOb4p/HevN4=;
	h=To:Subject:From:Date:From;
	b=Gdrx91izXlLHpNGbBUUN7IfA7LFS8l+LjyvUnhKQQb9Yn98D7sd1d4ALegWG7T0De
	 FidOIb4JCUzB2mOG4w+yYAUpMm0th2JXKYHWey2c3yJejd8Qfl2VFwwL7u8IbGzzhc
	 QVgJ+ax6kCj64A53icfImy7DpmVIxNboRwMy5c1nFEEZRx8BQCNPBqROT68+VyS2wf
	 6mUe8u/Rxh/i0wnbjV5O6vUQszj38sGDAVmz+oEOxK7LCOR0S1i8xezNPT/CSsLQHY
	 GUUA8JGLpejzfQ3xJo/o7rSVSRiCrn09DsUuSzxraezaVkWkhI9FJX+oT8TV8JVjdY
	 QeHaeIS/7vMKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 621EEC54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 11:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171067369639.12021.8210589879958120813.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c525c9ee88a14a045c827820ec9b3e8bb7347dd6576adc7f198ca4557e9a17e7
Date: Sun, 17 Mar 2024 11:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710673696
