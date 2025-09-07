Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3D14A06
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757233193; cv=none; b=lCiTMM8Ckxdz6VtWs/JJo5YPkh3FD8SzDm/ctn9VuINSbtRW13n5yLoH/V+NsOCOGkrcJneDFhyq08RcK7QXicOH87jINklvfmED/RW9Pzzuj40hzyQTVAjeaqOA02BcIlR/VQNiBqZqH91P0jrF2HbE6ecdZo291/5Fok2vEBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757233193; c=relaxed/simple;
	bh=u7L1pm9V3Y1VDlBwZ55AB7oJ93kICqpAw2aWXwxuFiY=;
	h=To:Subject:From:Message-Id:Date; b=Suieb9h0cq9tvOgkFYzwJ5RUZP1La2y9rn5XZYw3VZR2dbcewPkSxJN8jpeNRWphyFw8u0C+DN7xpMv/KgfGZq53gzyrapHLCvXeFLtnbj+YUBgWQIozMIylQjZri4yY6Xzsjt1PCiB7+JpwypDOOYKWaXcIqQRYqBiUs2z7tU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZEruO8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZEruO8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0647C4CEF5
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757233193;
	bh=u7L1pm9V3Y1VDlBwZ55AB7oJ93kICqpAw2aWXwxuFiY=;
	h=To:Subject:From:Date:From;
	b=GZEruO8IcJd9HSHbm4SslQbc8tOXTZKHw3L7uIvVsjsssrVLmlIHwId5L/5mgGiK3
	 K5MGstHRJdMq9xYMjzXXTk3DWkyyaetLcty0AwUVmbbsTq4otrHPAZr79wxrkOSgT+
	 qTx9LmaGeUWXKOlOF8775jlHVjKx9nrC4s+Nj6RSmCGKGG72rS80DO4LD97luXAh3q
	 Dr9IxjMOAkZZbExt5OKwmiEfFrgSfggxatg0jeH64+VhTRDE4xmba3J9ZRF1dLurgy
	 yidwIK8sNUajRVevq92TrCGTo7mPN0yVZesrn+P3o/+VjY4tUsH53moYjyfWeJLeGK
	 lXcBKiU4OhI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F39CCA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175723319357.27491.14787993245380061707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47fc052319299b7d8a71820920036ca5b7ac21face03448e715a4da525081c37
Date: Sun, 07 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757233193
