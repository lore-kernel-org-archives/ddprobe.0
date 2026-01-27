Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3CF18EAB
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769475834; cv=none; b=n1EocA30zTBJtdEdJJQae+006gLIJdVEJT4vclCA7ujp6RdDu8JPa+xXLYSyDmJEgI/URykCuLjZuSg/NMob2Mw3K133liMEiLiW2zPL/hBiWz58nL4FyHesmiYBuJ8Xtm1E/xVf4B4vjNQoy0FxjQh9F9VSUTEkYiQP3G2MPKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769475834; c=relaxed/simple;
	bh=tFupJ0Ma9e8YmMe7SGS+MhaZZYGTJi+fKSQMvtDB3Mc=;
	h=To:Subject:From:Message-Id:Date; b=kzX6+Rv4XcBkiXCjYjHKxWVBpD9AMnbGKY0kLuySZwSueCkVE0fSMaagRE36LYylJClrBEvrfZH2Kkpns2e6ucqN4fu1Y30WpGAMcciJ1QCzk4R/NFSZjHNN30ZPyPsgh1tbNYhmbNyu1vvEeBOemWOSW2uaZ7Qi3VzasXhRMVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UyppE52W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UyppE52W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F3FC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769475833;
	bh=tFupJ0Ma9e8YmMe7SGS+MhaZZYGTJi+fKSQMvtDB3Mc=;
	h=To:Subject:From:Date:From;
	b=UyppE52WWRUqro0/Mvh5AhZMDW+gj5GX/QpMESdv32NhGlZg/Gu7Zo69DIvuUqa02
	 GApC0OMXtKd6xyndO7Siz0Vk5jKCleUSo0Jnm6DkQnG2OGWbYH/tKfJxo6XGyZZBpi
	 CKDYBQ/b3uIfYTxiVPl8BArn6bLjOc+CXJl2YP5Cch9u/SkvyfDXcdnq/h9Guqt2Ks
	 Sak5SZkB0fgt6FwVWOBzY3MW+WFVT2vOkE85V+xPHwCzNa/cRbyyIgLS94VcePsVrM
	 87iPxztkaxjPrdeWiTpYwi1csLShxQSOeIX7VWkEgr7eA2NG2b0fnTihP4cK7hAdJV
	 LFXMRMAgbPeYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902ADD19511
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 01:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947583358.29905.2369201794670243324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2956a687b881f77d864ebbfafbe521aa8058a5597135dd0bf0f63a3633cdc98e
Date: Tue, 27 Jan 2026 01:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769475833
