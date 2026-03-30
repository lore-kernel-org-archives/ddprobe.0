Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1618578F3E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774847094; cv=none; b=qcovPYX/yH2wIp6nECkHUtY7K5/XITECNL94j+b+/ww2D9AYs0ar+/Bn6CMUwBu49Zr87AHJnFeE18WoVyWhLy/lzvgMZ16KJoOtWyeRDSARrmnBCXvFxaXnHuq+5ivU4Olp7eVMnT7CEQhyiwtKrogCiTjXpDABINYJNuPyi9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774847094; c=relaxed/simple;
	bh=CMNWKkF1CY4cabTRehczPQB1UNuVW0Sj1ExGXSDZG8c=;
	h=To:Subject:From:Message-Id:Date; b=kMp30rXE/vltpNIYyiuh27LTXK/pwDxKD+S77L5KL2YBv0/3x2miATAdbS2l4betSpR4MCYEnrP2K1rOth8Zc6DFCGmjrD82Bvnc5PdlmlaPhRqhjrc/DZ6II8MNXxvdRNj0rELqsLeB9Oz340NtjoYu8CoGRo5hGt8lhnGNEgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jF/E20vN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jF/E20vN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD155C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774847093;
	bh=CMNWKkF1CY4cabTRehczPQB1UNuVW0Sj1ExGXSDZG8c=;
	h=To:Subject:From:Date:From;
	b=jF/E20vNSOyePqzEvzBl37b6MjhEBveUb4wbVGd3UY2fALTvRFGMOMq0e30mep/8m
	 mz7p1QRj/t9t5vBbOMcbeLn7mL+ZicxlRX5dTId6pU5K4vGEo0l8NM5XSzNNtmtrFd
	 z6UXNDLBt9uah5MLIOg1O+YMqj9uXZqwMnlW2PXoovSexFuUe1REd4HFYRBLsW8j7a
	 +1/Z9YdizySECBV6NRZ9WQ5U6Spp4MNElOxwtmhqmCN7icvAZnhK1+EGDa+0pCvOKU
	 uRC/mibRhfo8xrDn8pWDe8Jg7hnkCtPd8jKQ56TmXWdlkG3kMCvhbK3KmZXIS6Uo60
	 COHJsaTpUYg4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AD0FF493A
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484709360.29353.17301648119418248456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98f6295d90b9bff226b986bcf1b60b809e069ecc2d35747b8f42ce0bd0b95cf
Date: Mon, 30 Mar 2026 05:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774847093
