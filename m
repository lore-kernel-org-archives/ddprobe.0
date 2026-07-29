Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441293A75BD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785306034; cv=none; b=CQgDCY2wVVHb70Ga1b9nn+ov+PSHgbEGrhQJdomfmJSQ6Mm+kbg9+wWYhQAsuGzrNPbfpvgn0vqklaTupzEwGxlfweT5rUeQHp/TTxicLbzwq2LZsbGIQ/bNiiwWKoH6Bfva3KmjGaBHCjKWXipoc2HAh9Kq/y5tEK0/dYoLpJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785306034; c=relaxed/simple;
	bh=X/aRyuhUafCXUqI0Skm6NaLLRw9dKL/jH+idtscM6fw=;
	h=To:Subject:From:Message-Id:Date; b=AdVyIdb9ZwKKsexdrx86bqvSt5uvbnDFQF81ajP4x35tKNIzC1fu/1DFUgmOtguGtioEhKmlP9chxF4hevgmCDxCU0iDBNvOPcU73je08XqTrdNLnTYx2454utCDHFBvQmFzpzmRW100akK5uflwVBp3ehByWsIKzNbBd8PIw70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NA2xcwGW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NA2xcwGW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25F3C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785306033;
	bh=X/aRyuhUafCXUqI0Skm6NaLLRw9dKL/jH+idtscM6fw=;
	h=To:Subject:From:Date:From;
	b=NA2xcwGWqgO5d+GFnfJraZKGrBON7axnZswsYKQ2RT9e0avziVzJ1O2TvI2UUIYVQ
	 S4TiE+4s7nkWoGyGnXK5Zxd3LPsdosWLVy3MxZoLcodbjb7M0oxfoAEGoIMijZ5x1D
	 mG1BrHuWrUHN3M7NmU1wtBXVsrb+2HkGpgD6Ltt1OxVQRmcDXHNugQZscKmADwVyu9
	 KicizPwk22MMuiKkeH4wYJoLNIvB9Op4VltyFDkx1zzx72HRFKR3spKjhkXkaGuMqF
	 Os7dJixRzAII40xFB7KgUDML7Vcg4DMuHqXq6UVu2aGRv/T0DGlWCpSVx5KTCw960Z
	 ozoMN1SJssvVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB361C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530603369.21135.15123500727142879748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a49f547d246db7f8c5adf5868c8db39ed7777122f6a0a2b823cefc521e62a180
Date: Wed, 29 Jul 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785306033
