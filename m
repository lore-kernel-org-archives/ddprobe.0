Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6730150288
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719673463; cv=none; b=QVAKl4vHE+NS1+dg7pEwjNjpXOh8BEagP7mv8HtPHOlqzWAP6jcEcw5SpmEJI9XYUiLwdv9MSYU2c6w20+WxCySH77xdCwJXfOeu22rtxRvsYyLS5LAPs9kVH7NdjdGh79MwSztlkjanwQPMgXM3JiRt2LEz2/tJmiLNoYsT7o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719673463; c=relaxed/simple;
	bh=8fK4luHik7+H2yaFYQAlVN37Fsii/INmHOF2vGpQHPE=;
	h=To:Subject:From:Message-Id:Date; b=VCL48Jvn+KX/4XUY9vrNNEGH7y/cCKvu6ccxJF50MyGNbEFymUg6dY4VmMfaYyaLX+mTlhMsDp6mprGpWxQka1gTbsO4mPfXm4/sM/hNJumlYKVbwX4CC7sU2LhHpa4HxqCONlOJQkhVDordk+pHzBkyxeryzmqJDuf9/qBH+hI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEZ2x08N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEZ2x08N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D869FC2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719673462;
	bh=8fK4luHik7+H2yaFYQAlVN37Fsii/INmHOF2vGpQHPE=;
	h=To:Subject:From:Date:From;
	b=NEZ2x08NKz+PqG3Un/bIg5Ma1om4j0dxHohNsSTcTo7SNMLc0YJwwNRwOCLrbEDC5
	 a7g9wtSq0F6X5rm4tPzfO3gHY+yaVZ+ySUKFAm+5w+/QYm+vSur1snhjI5tyvsNeUf
	 hbqM4Tdi9jpWixGP/xEVfpAul5itnjWgxrbDzTfnOyUwQORMxKMTyvu/QQOGxoW8IC
	 6Bdv7qnLJDYCEitspjY5LqgrXlynTDOb4S8Ub6ntoZUEErBse8KbM8hmytMmKNtTUI
	 0z5Ur2kQgT2qAva7AJxFcAP2RaJAB1VAt9zljIJjohanbp1CbbSM+rfYF0y2J+0Hkz
	 Qhlr4FXjh1PgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4955C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 15:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171967346277.4291.6540167494935360278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaade4c9d31ef3d76198975376ce823dd4e16e2c84ea60c18e2e5f2bcbf58897
Date: Sat, 29 Jun 2024 15:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719673462
