Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 798F114F131
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715783543; cv=none; b=YHmnOxtTsA7n7NYC2tHCdap4DafD73cgbgg5AmyOzWAehz+CN//dfYdTj2811HjozGY2lNaArdG6MxcxXkdfExlP5G6nXoSWbkKM0KBi/m9N09FLjpL10TQxJdvw+P5SDPHDY9+LgwgGx47/ZXku0e4RB9282KoR4QUKUQzwhJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715783543; c=relaxed/simple;
	bh=Ied0zkzcz+h5N1GV0x08VllE6skvuWYervtDQ2tMr94=;
	h=To:Subject:From:Message-Id:Date; b=IpPysLKB2wGuqxcyp0dKBPo2o4rSMFeCl7hk5V3kTV4+IDdITRKaBm6TzsHufv3qnxCzCG7pDHWmdrkFA0+aBnBRQgsR2V54w/SF3mkl/DFESqDwIJ3oKpGwzcPVxqK/PgtSQjzq10wgVB1Cp39jg44NMI+7RTU08nzj0KhL5m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZmLuzC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZmLuzC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1B73CC116B1
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715783543;
	bh=Ied0zkzcz+h5N1GV0x08VllE6skvuWYervtDQ2tMr94=;
	h=To:Subject:From:Date:From;
	b=oZmLuzC0glF1N3QUE1LFNpFGbylin0B9z6q4ExCqu8iD9kH+NkGx/30PMuFmbFi4f
	 XkxphK2lD3Vu6t0T6yKiP1gQNZNxh3sdJ1kY49xOsXUQRJylHji0QMwfh7GgTBoQll
	 zTjZnB1EZBdEgKSHqShs59c9rwtKoTsGsk7UyMdl8nS/Gfj22os52y9L/i1EiZsqoB
	 wuSu7gttZsZR4Q56/H7UTr9tKPbt8qJ5fruqiIZ2SPhXVR0MSey3xp80FOl4AskU/h
	 hC3I/1dalqr8OCpeAeBgvelMHbkZ5ByBjccdFmCxwYhY/qVweRgMbHx+fpAG9jjLbH
	 ae1sQ/o9ucOVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9903C25B75
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 14:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171578354287.30374.1118475263117989454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57492c01a24b8d0f10c757aeaad7b5d5b690637e77d410a652ff3fb91e8d0846
Date: Wed, 15 May 2024 14:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715783542
