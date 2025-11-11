Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D0CE2882B6
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762841994; cv=none; b=fsAjnOVdQWQ+L1p+YEna9h+dYrg+AkLowD4NDr2of+7iPA4DeRNTlirfFUKLQxgx6ByubWt4WeH/NxumS0cWBZQjM3YhzG1wdvp06c/JAcYJdgPfh74PTOuSTgHBoAY8mqvAUckB4ivFWNDuBMTFhn4uAQKBaqLx8rVqf7bRmaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762841994; c=relaxed/simple;
	bh=7DlJ+nQdbM/axIdFmPRqvhj83MnVde5PojUQPqIz8FE=;
	h=To:Subject:From:Message-Id:Date; b=r11J+6Zx9Kl0z567ynmuaW/h0pmJCO8NYIZcCGX3iDRnBMsyGiQltsZchtTnEBIiSnNzwfmBelj1gc3oHcR6KwvCqm2KTa2y0U/3idoFgF8mLyLrHEkioa8kwCKPXKjMNhvclfJYjGNWOuSEEAAFv+C96zesWTlCYzvCGAZrURQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H32yitNs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H32yitNs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8049C19421
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762841993;
	bh=7DlJ+nQdbM/axIdFmPRqvhj83MnVde5PojUQPqIz8FE=;
	h=To:Subject:From:Date:From;
	b=H32yitNsRWw3rowMaI9reijd4imOUyGuQWy5CR7bAWzh1OFVyoQzOFFptnLXRqFnT
	 smiG/be7KKAwc4NuOuu3ATNjAnjAEEZ8/ZEwUoN5FA1r46wSqMj3uXJg72bWBaygjp
	 KiZMj/M3ktB2cjbw7HD2SV7Bvf+AwwjcamGV1DXjJnSY5NtB9TXkj80IkCEFz5cihn
	 Zlg32XpVfvT6xA5vJR4bk0SbPTGMY9ogzqTmhhOhNaZhWaKtUx0O01nossSJh8y/CC
	 7kW8nMCOdG9WSaDTCYCVGfXWcz/6wi2n6SySqAinmLHEdUslSEAHVGYfG+7iqQNk5q
	 CHiTBUvlsf0gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99105CCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176284199358.29693.12980705366477591087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0043c08279bcd6e8c3754af36dc29327a1f984d086ca6d1db3727b2f2224bc
Date: Tue, 11 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762841993
