Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED5BE330651
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775376334; cv=none; b=keYIYM6ln+KjXQFHBEp0cyC3tL/cDVWvKaNVxvf+HbwlTvY8NhCyqi98+uCX5IEWB1UbtuRYcuxIgd9EHwGXuPar0TqXhD3d2lSsKUYZav8b72BkYTcEkngl2gjxGeQCi6hi2Xy42r+vA5t9LSDJM/n+iJLTnEb5pHzMh8eP4Uo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775376334; c=relaxed/simple;
	bh=lg1xVkcg90XDQJLvTFaFBF0bvifZ3VGlGya9+ratGwM=;
	h=To:Subject:From:Message-Id:Date; b=DLa511f/+3wZoRComWY9G86LYh7Eae9iYt3OUsJGnXQT54Lv7UnyI4kTjkQGoZQiLuiBn4trN7Srgrzgydv/0V27buTWQ9dkz8PIqGLW2hsXSa4MXpHT7Pvs7Mxu0OGRNTDEGLaszoRY7hG575u7OHAWsJpIYdoty+VahJolP7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YGCq9vMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YGCq9vMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCDCC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775376333;
	bh=lg1xVkcg90XDQJLvTFaFBF0bvifZ3VGlGya9+ratGwM=;
	h=To:Subject:From:Date:From;
	b=YGCq9vMNfZ/VhfDiXk3vcCQVfNBgEry6i/pboameQU4OS2qaaHVCFWm+4INfYUqMU
	 gPXOjZ7ckvonGp7wRBTbHA5ddjTuYK1xk9RWsxFg2ZSWFpkJfLQ3tq9Y1Mf+fV3BeZ
	 WQP/8PG2GwEenhEDF42/natUPEUaxGuDOFtke9qbe8uDBH4cZ/NS/P7fDpJyi10Q0r
	 lEjHw8UYeNmE6amiGjXvBUCTeQg/p1myzh/3OSrFIuNh0/hjIf7+2vXrQC3z7XUxAz
	 5vLQVltUCfwXkkpovIe6B/1q8KGAWyFoBgGK4KXrB1X6YNlWuaHifBFE5+b6zJeI2z
	 MxWZfRjvTecMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE227E64016
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537633369.8728.7835622368006509184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 868c01ee0b2c7db189f985eed3ca1cc347e8b0b0d79a72af81eeb84268ee0067
Date: Sun, 05 Apr 2026 08:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775376333
