Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E508286A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721390154; cv=none; b=qZcDf1NiCPGK3ogoUMcqAiqZqctPGEh89zQGs645VYReClEzdjn7SGVig+doiJiZ6U11kmPVoeGZfFcxocmffO5XVd5y7WWAcGWuHCxptd1aek/piV7lCBMc2fZS8FN86mHpCdvqnWnnS2W5o9RVSzTxEfLLI9JFABv/PFskZsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721390154; c=relaxed/simple;
	bh=ZJ9PmhTbvT5USeAlofVnbYTFIBF6KscBvGzEAHdhfZs=;
	h=To:Subject:From:Message-Id:Date; b=Y5QrUqrqNovMxvkxi92GjZORyonQKkzY4NEuxx1r+kKU43DHItWvrGGWN4KRfdeW1FuEWUrNj3nRVETcshDH1IZeeGIAnJEPYORBvk/mRTjhQtBhtpXPh4kLMVzu83L7NCdyZK3LmwIb8ENQ5HknX3t5HbuUGhsm23VkKQ3N0Lw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k7Un/zNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k7Un/zNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54D6C32782
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721390153;
	bh=ZJ9PmhTbvT5USeAlofVnbYTFIBF6KscBvGzEAHdhfZs=;
	h=To:Subject:From:Date:From;
	b=k7Un/zNrHG2gImAdaUXMciE8YtdEPV+/TRcQNMBo3xtc3VQyNqtn4cl/VjlutrjAW
	 HnxWtFFG6oyCLKbw0Gpk6ePujUQc5wfnjKLuoltFWxUFYu96nKL/wdjaVImSAZtgu3
	 Z0IDK5/poOB+Jco5uT9572KyVHln32AgiS/mJRUk+uc/WrkO/OxywNj18ML5pdDpT+
	 RCaPRxGq5mYRXUtpxsJ6KUdU8ewdKu93OD6DWiHviir5teUtmh663AYtV8YZNvpt1L
	 sR6Rf/XdquBBE+IgNJvlm3IKyNyDCJmiuDxvcMgUxRQONXdEMNiggvc6xo8wuMb//L
	 a/jIFnju1mWcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9586CC3DA59
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172139015359.5852.4645851034610715048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4e848c695f43bdabf816f80ae4b0ddacc13c1d3abfd2b867a049e17638f857d
Date: Fri, 19 Jul 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721390153
