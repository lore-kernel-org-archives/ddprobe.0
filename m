Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3309F1FCFEF
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756470594; cv=none; b=XdpMOwqznRjhkVXVOVVM4JZ85sO5EFmkW8/leQ+LsjDLiL6toaccG8v0S9gw8JYP8+AFPcHdt2Ucw5GrCM0kaLpeQMuqhrSmOpLPFdW5C39pMd5ZK7SmktcY4T/npqlW0Yhmbu9Ab9lpBiX2/0sNzT2pM0+IlQf8jbYs2e1uc5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756470594; c=relaxed/simple;
	bh=R7ni5UoGljPGYhEy1YTmR1Sux0TVPhvVEhwS4hL9n/Y=;
	h=To:Subject:From:Message-Id:Date; b=NPTvy8fin3tIOIieOrf8brFsUq31aYGfA/8KulvSO9Jg7bpo1pxdS0F2APayA/u0zN8iSKvjfdmhVtz5Bnv5Y96I+J6ibVh7L/HjY4JFhUTuBij3p/RJHUSDMzJsAttNHqRPM65JUVUiJH9tQ8evH8N0wFxWcisFTFDKaVXxiBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OSzYQfNk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OSzYQfNk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3025C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756470593;
	bh=R7ni5UoGljPGYhEy1YTmR1Sux0TVPhvVEhwS4hL9n/Y=;
	h=To:Subject:From:Date:From;
	b=OSzYQfNkTqkrvx4YArC/OFMWF33R+5rR4u/c4F0UndEGPNo354JbKNTywfqS7HG89
	 9Dz/v0UcA7I2LbI77AnAk6sfDPf0355ZK5St3mdEBDC9zbS/YfngESJbUOWeOkbKii
	 p+wbAyoiFowVW+lWqqbygqTdWC6tevw/eglGNdc1YkC7iWzw01B/8zfykZZvyGMF8o
	 5fRiTetQsE2NdC+yEL6/xoecYcVun7LJ1/xhxnrqALEYNIyfa8BXGJOICvGAR2DZpi
	 7gSvmDku8CxicCGbNcHGyeld5+voHp/Bg9eJzCAVX6StQm7r5YWtr7mA+M/6IEVbr5
	 gDymq74UFJcmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918E9CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175647059357.9260.18348569904489188519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94217dc91ccf0a3b76204baa8906c53e1bb0675d3c63b5eb4dff47545c318d98
Date: Fri, 29 Aug 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756470593
