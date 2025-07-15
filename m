Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A079610D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752560994; cv=none; b=ahcTY1lzObXV2kcTCFmrxnvEGQQWXTRJxabrM6M6SBohEpLtJEzJxkasM5ecbZJfXhHS9F/hLPhOcbOh5ot3D3o/sK+CnyH283JePw3PxgTZwYHhcy0XlplUhxPDOS5R9zFaoS/q6qWdFPaITi0WLAJCIf+FPsom+FyB6WyG6yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752560994; c=relaxed/simple;
	bh=Pd/h6xBMynf7JCkXVDrzzZ93hfuELw/dwec63UFE92s=;
	h=To:Subject:From:Message-Id:Date; b=Rql8/VhJQyegm+6ySVuBgzRbp+bl8T/3/tu2oOMdrhffgoXwm88EBJfZY7VEAwrGprS52Py+bmf83iyNE9Xo0NJfYDTB2wAU0kVsumW65l7Wk6NU1GHyHgdSCrukHbMnrCjbuK92a3z7muxN78slzlNyp8LYAbjafgmZnnzBtqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRuMGe94; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRuMGe94"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A81B1C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752560993;
	bh=Pd/h6xBMynf7JCkXVDrzzZ93hfuELw/dwec63UFE92s=;
	h=To:Subject:From:Date:From;
	b=sRuMGe94REipqhXNW16S4WRHWGgpTF8MU89mHR8+pOcMQgJ+NN/sQhyWEcRnn9N45
	 9DDdQhTUTQT5VP1Nyll1DoNZa579aQKtDuj5iIILDp13r7n0RgTS/joKyq7qqE1iJT
	 FihqfS194f53VHoHrWMg2/PPBp1lgaX9pdncP0sbHO12hIYkOdVnbczCwDIUaJHl1M
	 ECyWRygGuFosNuKZZlllvRn2SWSfKIY35Ne8YT8OuiircFEOfCOaS2eFSE/dueiJZZ
	 GH7Wvb59+SK7ARo5Wq7Yq5MWcC1gTIABy4U0VB4jqfVJsSJA11Vb/TeLCntlHdqwar
	 7bNLUpLPkKonw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990EAC83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256099361.16386.14435083170085390290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770a74b0e976ca16d27a675f709e7fd25d538bf6fd1418fe2772d90e7d49db05
Date: Tue, 15 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752560993
