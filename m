Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CEC38D3E9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781771194; cv=none; b=YSho/OeVHfxDSwDpDZZbajr3gtyGOqQ09QZ6QGLhB5PyVcpQZkqWjEY7UiodpD448/xPrbs+z4YpaNCUkfh5fC72cea50T+cL/FOsBK16Mpnotmu4CR5NVIpCQoFfgY55EFLQKhOlMZvCnMejNO0cdoUWR6G0EY31dKtB7GORRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781771194; c=relaxed/simple;
	bh=/32b+Dh+hZL2rA+SBTzZCOHAHBfGw+BnrQ1rreZzmnI=;
	h=To:Subject:From:Message-Id:Date; b=mr3ydHG/KLner4QEvPsg/HhBGRWGC6/Ap9RhqYOqlSp2Lyg3UWEQ4wlHoXD9DKfr2mEfAIcVTsKijIh/n4pKCPQUTsm3qgfUP6V+fNcsNA1GMKtAz8aw+ysv3/Z3FEsqCbmO3sT30x44KQDAEnUWig2+0Suh1wTkagD998W0lWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsgY4BtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsgY4BtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D05B1C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781771193;
	bh=/32b+Dh+hZL2rA+SBTzZCOHAHBfGw+BnrQ1rreZzmnI=;
	h=To:Subject:From:Date:From;
	b=tsgY4BtOKsGDxg7K5EWgmppZK1TIqPdchkjySOJO6xqeoR7/tiMYb99Lp+QGtKFoq
	 2Qg3+rlA0ie0PJusWjvc+Vnfsxh+ZqIELuvFKQQM51sQxuqcoqk1txa079sifDdKqs
	 t5mQhZXcM6OwH/aQCl73l69AsAFES8H0YWDpaj006tR1jwlzIUtyPuPFK/cGbPrjiM
	 1J2wQuZS6Qtfxu7hljHmDzVeO3HPr3kX0NRYs6I77PkJD9SNpGxR9Mid/Mxep61f80
	 6+z3uPUe4MIbcC/fgnot1z8PLjGhQNtz54rR32aD0AE2XWiVZdMAXfSOt0HormivAv
	 1KDTqOhk1l7Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07D1CD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 08:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177119371.1825.12202181082800985349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5258e0e6b826bf6230f057b3062ac24cbd6c10ea6fb73dc236483f80fb6db4
Date: Thu, 18 Jun 2026 08:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781771193
