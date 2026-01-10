Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AD62512E6
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768084434; cv=none; b=aR2rwe5Sin82JsYvia7dsoB7kVFwc1i8FwiziQ+AAEOT/lQfW5XrJ3tG+w3woJaEFYfxiWL1tXOS+XA0ZzepxzbRIMCGpZaz3G1sI3K4fDnGs5K9ZQiBHrUyC8oTAESuWXMf2B5+FT3wIK3SoqmPTBeATvFLgKCW+idHrY3Q3zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768084434; c=relaxed/simple;
	bh=C3gonjyVwpX6xT+H9f51wC5kCGIZQRQ5w7dl/UfWjfY=;
	h=To:Subject:From:Message-Id:Date; b=eig+AE3vv1nnCNcPNrn++PQIA1Y1Ea70kCGhMwD2vh7XBTyhd6kVh8i97dKNNNj4Igt/GeuYA7f9oi9yaGjwiRXwyPvd1jIGlX2eRFXTp0Y+vyky2trx2NbYy44bhcyKjHh406Pk3SKh4OQ41pceKiuq4EylLDKmLiLS20T6WZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9M9hRYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9M9hRYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4011C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768084433;
	bh=C3gonjyVwpX6xT+H9f51wC5kCGIZQRQ5w7dl/UfWjfY=;
	h=To:Subject:From:Date:From;
	b=m9M9hRYCNZE8IcI1LpchueQwsN4roPPFXsXZ1VE+RcvR8XeSnF15auLcqRQrfD9Aa
	 mN3C6lMfCO3LDyt+lNvjSXiUOlzpkt/gIYlTtdOC7wn23jciBTzCVHeMPbr0b26Syz
	 XGUnkHpIL4FukokshvhTcWK6BR28GRSu2dz0NQCVNaywkh45Ff2rSCZbhVvfb2R8S5
	 MAe7dRFjeY0kM62uHCw4QUVoOt97E+BrvFPyQbR5aJzhKfHdtcWBWkWgsnu0+WAkcC
	 rjxyBwQMv0ADxeCBRZqMoeo2nZv11CmChdG139P+n+bsOvZ8Kv3pqu+zBvuuhKg9hT
	 xSFNe4ZP6FvKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95892D25026
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176808443358.6321.7511227741971330887.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885ac6394cfa8fea2553e600be586137922ab5e1fb5df0829199e5d1977fbb00
Date: Sat, 10 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768084433
