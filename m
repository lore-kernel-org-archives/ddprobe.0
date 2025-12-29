Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257B52798E8
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767012234; cv=none; b=m98QKh+zKDD6HcZO4YeaFVQphZjxtUtJayUE3P2gtWEXOEKztNncX2bUIhaI9xFVoNKJeC3CZojoFc30ULiyFJVjyXmMEReUyfGxT2iHEo2arPrsLh6UPGOd0gHQVSgoIlCZ7UKNwDvkmfCzxvu1AxOQmB/1kNxEqKq28fbKjpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767012234; c=relaxed/simple;
	bh=dbb+A7vTlQAztDc++ATfnQPqhOQ1qpMQx5fiKgddNeE=;
	h=To:Subject:From:Message-Id:Date; b=eOqHyrKPRr9uCm2K5BNL36Pl0ytSFX2A9Rq65p6ZaNfBx1X5vN4Q/ZsMMiDC+msXY/oUz9dg8WswyhUtiWkCzwRKENcbAWF6sCrLsjCoAdGqyCPHO2GB941NzQ5b5ViyyYw3LfiqTcw9cm8i2pbI0r9rG6dEYF0yXeDIAbcHGkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mp0ZCJaQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mp0ZCJaQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1FEDC19421
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767012233;
	bh=dbb+A7vTlQAztDc++ATfnQPqhOQ1qpMQx5fiKgddNeE=;
	h=To:Subject:From:Date:From;
	b=mp0ZCJaQgrt3dRH3z8YvYKmzQqu9c9FMPTN95enwPyG4+V6P4LXjm1ADUPPV2nHiI
	 zfx8IXgMWih6oUYhxqwhMBwfvvnGKcA6G5idOYM7VQJv/fopuq8WC1PYYpBUOcRKYo
	 ilep/aBixieNwicxbbhwW/2qCiDPonYYLeJIwzyukRitCxXTwV2WWM7+X/TyI2FQXT
	 nmr15Zohs03qvDbtGWNbsPykBf/PBUqbl6xddWAQ1sIFusnOp76Ut1t7Ytij/qqC6D
	 dCJJXReDlyeo83Mn04WGM6RpnZy42pqRhN7GC8HcHdwEsYsJB6D75mrEkkqElQlC8w
	 egMwG2N1XjAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A205E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176701223362.8571.6019379589092709370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8187623fab2cc1a9becf91d2490a8a99f293e3bfa3a82d2787633922b77a0415
Date: Mon, 29 Dec 2025 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767012233
