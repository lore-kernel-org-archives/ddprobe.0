Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275D312C7FD
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732826154; cv=none; b=TKvLiAkDA4VkblW3/xsAFChBUBITXfWHlR+SFI6BuYDGzvCxVOd85jiUUcXp5l/aKv+ut8zgFmRQnbWJKXJsYgpMISP7OtSelOa/RxbamUL80xmt2kUL0ViTUHLCK4N34jRZk/dKISWiSdTp6er5RAhOZwtKnY10TQ9g8v837uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732826154; c=relaxed/simple;
	bh=ILmOh0ePeDWLQe10V58ei/UPy0tgCy2t3EVA9oc8V+0=;
	h=To:Subject:From:Message-Id:Date; b=bMYZQBaL5rC8hLr4nj7Hp8IIbz7DQ4ql77onMl0emifOrFVDLek0wyj2THRlJzVdZmJ2/MZQtngYvfVBOV/cOqGqTET8h5FfB9FLAmsjXxoVuC4dNum5p6mKr3t8Bbn11vIGMvnfaVl10C/fNY7lOKMwjFU6rMfYkzKNjbzKfIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PUUWnp63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PUUWnp63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AA5C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732826153;
	bh=ILmOh0ePeDWLQe10V58ei/UPy0tgCy2t3EVA9oc8V+0=;
	h=To:Subject:From:Date:From;
	b=PUUWnp63aT5kqk5v8hN+pEcAexkjLAFvEBtPYV5PyuGvIUmQM2qSeY6RK8MOMISTB
	 Vzt9QOBwfZPflzNpT53qn9StSqM2h8aP9o+lfcyiY/LgbVDy614pnopuAF7ENGirlp
	 dnlgKcr9+XUETDER6JGNBZZzjPwupzKWnKCYo3BixKO6cuaNSbALxBmkpFXb1TdTG0
	 MZadPUgH5Q94Lif9JecNwFgZmzAA9GA2gv/0LutvyGipSGw+WWejB4hVDO/clAbTsO
	 toTzy+xqS+s3TtC3yyejP8KpxGKGermwuMr1TXjhl4A95dGlphQY2a2vW3mYUbk5l+
	 IpAfrsFaKA1Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D676D70DEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173282615360.12389.2526682070601040325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea445505e616a2521c2076e0466598e01dc7ba29b07c71791fea9bec15ff19dc
Date: Thu, 28 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732826153
