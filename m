Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E52CA38
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717979843; cv=none; b=dRD2PFxYw3yEgzoeR52mSho+j0metnrr5HxtBi496WBivawkU5mWntlukaatKrwiv6n2t+01QrrAg4PGxiVu9TQvq6qVQ1r1O3Prz8RDbTaSaBNQOWIFBt6cySSQm/nlvqwl1CbSoFSAZsLvwlWivcMg+CWuQVbHXn/lhBKkcPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717979843; c=relaxed/simple;
	bh=+6gH3HOx6iOtWwLZANpAx9Mx8+pJoluj5lwiYttC7Xg=;
	h=To:Subject:From:Message-Id:Date; b=CJkxMCDqOEvd6ubVkMuWPc9zT5vDjiTWC53S6y9YgEGPE2mzfjwc2DhIft65PVAbXUANlWIW1ASt6lJyyp2vqGMqk63vDllpaYNE2ukFqWff8enFideq3meZF8Rbpud6+f6HFC6hRpP5Xar3VDYCXGGhVSBduHHd1bi1po06Bd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gEuRbP/1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gEuRbP/1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E12BFC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717979842;
	bh=+6gH3HOx6iOtWwLZANpAx9Mx8+pJoluj5lwiYttC7Xg=;
	h=To:Subject:From:Date:From;
	b=gEuRbP/1EU1+8pIhLU4xElLMEjuxY3ieTdjYTopgNETKFpp+OcICU/KVXpeJkcl/m
	 OlvPI4OtYjeIIdKfhmUGI+1E5Wt8E58co8Tf/iIs0WcTuEtHLMLsKw+XIRYmDhdxbl
	 cxvwmOCQoR/wdwbXvK2lc2HxKd132/lxoYWsAKeuB85/TCSpgIvfwNtjbts9ebm3tC
	 IKTgMZ5oxiPsZi37Ycwy3Cz4TN7DePqRP4UpMXXaePFoNlyJJd1lnC9FxiFd8fvSUN
	 VGqZvHB3v3H5m0QDwbNWDHceH5iz5aiSEvvofmNH/HRIWJK7f51O9yS2aY2AIWlPi0
	 jgh+XnGml+8Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAEFBC27C53
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 00:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797984282.27515.9349341748475609002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2cd59d95d6c65c52e24009f3967feac14ecf0b0adec8d03a08389eb5cf8171e
Date: Mon, 10 Jun 2024 00:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717979842
