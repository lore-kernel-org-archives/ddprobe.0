Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F8B84A28
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737200154; cv=none; b=hIUqh04LmSwAmjhw/7tgHKQn+xqvIqm/T7ypJG/1inyerL9nve2eU7sFAHjQHRFQqV/t3W0+0eMbf9mbf9OO0bzJU9K+JvE5hz1ndQsi7sui+pTaFd7AG1uoOSzCymg5PV2v2KwU1+067ljM/Vn0czyW3vRbgw0k+F/BbYYpPz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737200154; c=relaxed/simple;
	bh=/y7NlgCRg0+eeM6DLDFOyn1YOtaaD+bBe0jDYEzBW9w=;
	h=To:Subject:From:Message-Id:Date; b=e8oPvm3L4ubLw1yDe+6Wqp3GMWmFtQbWx+RCgWgroIzWZa1UUFUQKrZtrfbiH0B+Oc7iDg5qHIgnTEIe4uRtbt6dEXnPgXhv7bHvVmY7MijVRWpG9tbfYsbvaPStYXsldvKHvRNYjpclcXo+G4iTgg6QgMb3LMPE8JB1VsBm7UM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lazyy95e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lazyy95e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FD8C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737200153;
	bh=/y7NlgCRg0+eeM6DLDFOyn1YOtaaD+bBe0jDYEzBW9w=;
	h=To:Subject:From:Date:From;
	b=lazyy95e3gMhEzos5DlIWFg6HsaYp+5AhM4Ndm95XMhA2uYBJTzYaaOG0JQKdpGw4
	 T5EVcWY4CBKGRVNJeZWYdv9useyBc7MdopE9QFvi/xGCgrdpmty53NinqthRYlXM5c
	 S0VczTFU9j8on2ZTWL4lfopoV/JA5GrvFY5aItPkarjdQzFF5PdB3+7BAtjmAuMO+I
	 fQN6k3VM/RURAD4mbaRKxTPoYui+F8sWOK8ODUC2qwC+QsbIl4pm2N/fH92/i8DjsH
	 qwTXHnJMpWrSf22tkmawItkU8Pr5Z9NFZwqYlt7aVnfg3Wz2+vj3Cig/hUlyBIt5rg
	 uhnd1Uc4K1qSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E20C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173720015359.23201.16819370562398973723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37db3706ef0e1db306821537f9cdef3accc86507e1a1e42bec8bcf02ab69dc18
Date: Sat, 18 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737200153
