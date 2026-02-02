Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20F322BCF45
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770063834; cv=none; b=kiyKIDdCNfr2/IkAY/hCJuHSZVqawat2d6ca56WdolIqhX4FQt2JB7Fqh6gvbs2YjWis8kA4dnAvpAJ0EkTfvVJXacFJcoLz8QVnYTvnEKCwSo6nIHuSHzicv3RYPU0oqY3ZV/u32cyH1YRN/Ygb5R7vaHi5sIDrIr9F3O7ON5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770063834; c=relaxed/simple;
	bh=zpDGXu3zBWtaGLSQnGR9NDPL7iX1Pp435uxJifCWCz8=;
	h=To:Subject:From:Message-Id:Date; b=cRwQloHVGgBRoUvO/dfmqkhCKdZBi2unzKiIi80D/V2PBA5t+3Ce5UDg2fi5N7+YD0/JEI2SEacTH75p9+3cjDC0p/3RORc5KMGhUWnHlONst+CC+vKOO7hCv0b+IDqUx0MxEpLrx6xCV/SCsMvyIB9icyJy3/yY68bd+2niq7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jofofGSM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jofofGSM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9A66C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770063833;
	bh=zpDGXu3zBWtaGLSQnGR9NDPL7iX1Pp435uxJifCWCz8=;
	h=To:Subject:From:Date:From;
	b=jofofGSMGMajQJZ2FgAvN8Ox2mLR4V5g77LegYsGvh6l7TKL1gpytjM/C7acIewL/
	 6/25xlS3NNLOxSz647x4v3tPRuWzpHQHtdaDjUdvm6P/dxlvHIAyu4YuSnl52d9Whv
	 NbB7UEMBtpmgOnpS05RhI/tE2erVK0z64LnDfb951i/HT2eSyJL9GO6tWH8RUoKcZG
	 QBNCP2SGFRCDsb67zXFSzmmaJYX0nB8qyXywagms5cLGA0nGVOQ4XqpRAdXtJftBh9
	 V29xzt4vGDZalBasxfX9APLuzsBE5Oz6aQOOHhRkZhxtFP02RCjAlXAJWPLmJVL1hh
	 friUDJKMsxihA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94328E7FDC0
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177006383359.2251.12265772021935464934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b67613d5dc4fb79ad288fb5e3fa280ef3872532cda7aa4c11a18659e9c1f60d6
Date: Mon, 02 Feb 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770063833
