Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474F81CDFD4
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741797534; cv=none; b=EUpGAt5+PncoufF8Qws0gprRe+NhDg7jab6jjR8gob4gcVCrUVRHPLAPPV+ZQFilICVJQRrAVWsl1h2sW58IS1hraRmRF4UhxW9WZYs/aAl0Q5wFGx2qctK4DRqgKt0ndnbP220Djznu+ytr02H+VGNaRwRbjPJZvKi8UQnnNnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741797534; c=relaxed/simple;
	bh=tEzoMZpNLJHsRIWTCRJCNTHM95zMvrXJvAS29xQAFq4=;
	h=To:Subject:From:Message-Id:Date; b=cXxaRaZJmJBvGolB587+s7C3/GR4QtUXYJFnoB2SzIfjSvLFzZVmhFD94bXCzQ/x+CsF1w1yh7i+BvudvDk9PSe8FSpYaUCB7EawFQ2AMicPGxnpp/gpNIGpkzsI2YQwkYc/OdRq/8Oj2z6XHaBnZnM0/mqT0ZE0CffIOEzwflg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSwl80Yx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSwl80Yx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B333AC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741797533;
	bh=tEzoMZpNLJHsRIWTCRJCNTHM95zMvrXJvAS29xQAFq4=;
	h=To:Subject:From:Date:From;
	b=sSwl80Yx9vsvIOIKLyTQadxWFHi7SMLveN43RMchV6zVYZ8X705Fy1E3/VBzHQZa6
	 K/3uzWwr8gz7hNB2rQCiDWthnmzoMA+dv9PRYS2hroYTvY9wAihH/tI4fnz4zw+j+f
	 KQvatr6nLuzlOcPcDndw2QGtwtYIdml6sMDFgsaPfIci7WVXOFN+NA+TTUy2nZO/Nh
	 7h1k1+5EO6M4Rt6+U9vydXA0A5rhWemLh+Q50Gk8wEhSOkn75vAiPXReiyql0MZhO/
	 OgMzgf4HkIziV7VqLOPoqFMnpXWmKPh4alAimDUr55QITawvVnP6uEawYnw4fQEE/M
	 V/DbgV2yNE1qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2047C28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 16:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174179753365.26191.5782394152873973253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc420d0149990e3873d2fbff53b1f3df2fcdc67c4d7fb27f00c84ae238fdb1a
Date: Wed, 12 Mar 2025 16:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741797533
