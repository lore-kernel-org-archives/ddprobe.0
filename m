Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 501551BF37
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717125263; cv=none; b=OLQH02bsRAyhJzb5QGEmFUzhaCO33rHLMlBWKwdF2woeI5QUFWIWZ0zYTdid+IWZWUpScQ1yfXZjfIRkrpvwwF/GDFIkpl90Jy+v64tjKIt5Pp3gUL+MdyIpoobs12+hgVdUxf1D5rGiEVATO4eyUiMm2jbdpJmXuEnbe7ZEChA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717125263; c=relaxed/simple;
	bh=MHGxzGiJyBlW8CNCfwvwRCzQoh5DQJFoZRqJRQL6mU8=;
	h=To:Subject:From:Message-Id:Date; b=C56BSv157CdB3NzkMreGC8Bx7iKJ5gi1IHb/dGFFlkv2pKTneoHUzlwGMqs6k6zuBXQK66ZdB/RPakXjreqXxdsEIu49iDuj71U4BGRAScZJEiDLPgJAxBXSvdEG6nAy0doArU4lHaeTrgnKLz8vBgkEJAO2Iy7aJutu9IPyYcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fDBFXRYW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fDBFXRYW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58F9C116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717125262;
	bh=MHGxzGiJyBlW8CNCfwvwRCzQoh5DQJFoZRqJRQL6mU8=;
	h=To:Subject:From:Date:From;
	b=fDBFXRYWA6QmLgO+SZaxXborx5jgLTKgFHSyj+wcCFcAVZnefIqLGuITtF9MKUc+E
	 1TpY/HIAFb+a8NBGekmv91cZZrVQKfSUPLT0MYbl+wcVUUBO2e4IMzs1hHdR+EwH/g
	 maLcfudrzXt5UgSEYff1RcLOo/PHTiFgNeGIn+jMtJU7NNgXt2sxmBZ/Id+IEqDrVh
	 +WoXrvgKiPDzZ/I9mlqtxa+3cGzaJNNxF0TDacVczkl313lwhWUM1his8txWwjRHCX
	 33LLGyJJotZjZ3Zc/aE7lTQ2/WeiA+rrUSEBdRdvmCrgYmG0eAQFXYOZn7v303dzIt
	 63ZXDhTyaMyxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBBAC25B74
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171712526277.2855.12860262294095848640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9c90ca0934909c9699bcc85efc258f430d35566ff8ad911efc3aefc00aa864
Date: Fri, 31 May 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717125262
