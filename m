Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C44853A425B
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785398434; cv=none; b=rMqD1RhtZpXjvLSIwPGTTpDgWj48h/soq4R0gc14+j1jCrR6nAen3k8tNdu7ULnkFhE5/PrpV/q3jP2FMT96AtNKPkRObJi1qh3EXk0n+LRwwtddx2enszfOjRFtb3IwrTc6C1ypLqNy5jHMOGeDci4sY/an4nostfvbnglX7n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785398434; c=relaxed/simple;
	bh=glOMArZkHh/SHeCTez4hphGrQn0WqyhhLcEHjhFRwD4=;
	h=To:Subject:From:Message-Id:Date; b=ryPfsGkUCtBVisc18qfU3D3pxv2DTM+9DQj9VjGsFNO3zFz7gGw+9yo1xa8bW8Xlhgl8God2igTjz+lzHemymdvW70ttburo7oDcpgbSc0GvvNK3RQ7q2SwlTykcGNq2oboh55cHybRu0u3rYnFKOEi1sK67w4VVeOp5a+Y3uss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kcp4INqs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kcp4INqs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7B1C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785398433;
	bh=glOMArZkHh/SHeCTez4hphGrQn0WqyhhLcEHjhFRwD4=;
	h=To:Subject:From:Date:From;
	b=Kcp4INqsv29/0QDafkPFAp8hoJbfa1stTU6BOp6FhmZjHBenm50duegk3io5MjIAT
	 oS7rJXA2L1Mq0vbBFAyXDYsQNywuhFvPZfsXk9p9dnUe8w1TRdytXuCtTPUV7PVHO7
	 mTxdaKcBIKltNoVtEFMSMoI9gsHOG4SR7xdE4NqwiEvebZxSsuY+WNaP9pG/wQPf6L
	 ETGeqqiekpO3KP5YVRex4imB+pcDvme3tTsbeM5SlzzgCbJGPKFcBEKItfxZ61lwFF
	 8X6TiGw3oPVDr/NWgdGhgctQR0z5Fg8//VQ8uYfqDhto9n8KegGH9oSDhXBKEwcKgd
	 Le3lGRwzZdgfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A5BC54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539843368.31287.14695240631890288962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0eceb029ea18d5876c842aace679dfa15ad231c7c9e0828274296ca2ae8b817
Date: Thu, 30 Jul 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785398433
