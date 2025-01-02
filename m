Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330A52114
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735842354; cv=none; b=nVA0kaB/hJxS1OunltFiMDkF1ykTp4R9E+wSAou00CQt8b9EuUbFLwVu/6Has0S16LL0f1qyejQFEfEo6bnI5TeuoeUEFuJ68beLKmDpvvm6Syb7PU0ZJxLxFeg6Ra16jKxUk5YlwpGlEBwzHx0Tb8d4LADKpZGAuPLIK6yCjLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735842354; c=relaxed/simple;
	bh=hk+diccIu8jUsxOGTH+gtA/IlxjWrxdLE2zKJwDLAgA=;
	h=To:Subject:From:Message-Id:Date; b=asVoa699KEtoBr6bDiPkJ+TTMjLCBKU3TZLdx2Tk2x7GVgjseQKKXREowk9puFhNPOcQ2zdSn2E6pHpmDwzJ3axCljoQp++/D4Y8vRWTXrsgT7IZOiQ5Nz1SNbdpyTHRFp911dordWng58qH/otCj+MCvXs7WhoQJeDFpLKeOas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RElPuiz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RElPuiz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3866C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735842353;
	bh=hk+diccIu8jUsxOGTH+gtA/IlxjWrxdLE2zKJwDLAgA=;
	h=To:Subject:From:Date:From;
	b=RElPuiz5cVMrMScz0yCwd9AxeZ7nf+OLmyW+/xxEznMEdSfAB7Pyvxaq2qInHNhOm
	 th2LMfCsFtaIrKeLpW5ZRTIPdLiQDbQhBzJkFg/eKoBtkqkPH0lJEAZ4O1/iLLceX3
	 wF8UkGRJ5k1GhgOhSF9ShEUEknQPXxjnRU2G9kV02+2fbvMX3LDxll4qiHJgQBPqTz
	 c8ywdeP51onrJxVhLNHeKqR67LfPraNq3m/OB8Pf+kwP1vC6ag9KdlOKKlIK8whuGw
	 SAkUaolBg73A720Ep1obos7MGT8u0RZBn9OdkD40jumUpmg6gJv9L0KfbxufrbvMYj
	 oPtmVnJFwBd6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E90BE77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173584235357.11581.7658912153793331027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60447f10ed553db180fd8e39cba8f4e52a51e35cae800657a5156644a559e345
Date: Thu, 02 Jan 2025 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735842353
