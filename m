Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F24446D574
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789983034; cv=none; b=VBiLxEa0AkjufrlbjLKEq7MibfsR5WldWFKl+CIozfy8lxRHXEisSV/mo8nsRQ/xPcaiEEOajzZZQAideUnv3Ty2IablNPQ7fa+RJl/zSsVm8a1Sb4dlUPSnCfQkw9IEtzrSuhQvwtteOGlm7daV4sfU5WVZEV51Y+VjJYPhMeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789983034; c=relaxed/simple;
	bh=Aznqg58W98//44lxkyjx097V/7qIpFwvLq8SFXgz0Cg=;
	h=To:Subject:From:Message-Id:Date; b=qjal7TxZ3uTBnBV39cIIp3jDL11+cAvAGOxiYC5sEbiudRyBKG8GNjwQhUlVywkOLGM7Xd85k/PvtZ/8CFil99CFdvYm5FMJ7gSbVZRlIyZ+DZMXg2/DC+bKokhtNVQu/Szh5ipxqq7W86C/u7NgOFEcGXeCUReggSss7LddSbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfCpCA4T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfCpCA4T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 20A58C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789983034;
	bh=Aznqg58W98//44lxkyjx097V/7qIpFwvLq8SFXgz0Cg=;
	h=To:Subject:From:Date:From;
	b=sfCpCA4TG8P4UV4FKn4WjyqFra3f51MXGcIhvgb2Dck1U82PkNW1+PRsTwW2RK5bK
	 vfo2G78JuySCiU06lzBzc1Nf8pPdXBGrH6zuROFkhE2Vo/DZzMiUu1rxMYkLzruC5c
	 vMBD4WD5kttgSCBdzKcvl+DyypYlHZMlN9TKaXu4vJenYpSbjGMXale7/LysBN0flX
	 r5VWPSmhtYDvacgij2Rxg+05hP0TGb3C0oxu0UK8dbdfLYTiXOBdeH41H8pJv5I16l
	 3MbMz8ubOHsyG8wP8JTqFpiqtZKHhWFhzWw4in6HwYnNpKEz9tl5fR6s/fdij2BUnf
	 mAAeJfpUHS4oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D76A4C982E1
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178998303386.9611.18008578355118387496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f08f50d61b79af86479fed24368c8bc15a2c231643d567568fdd17a8b380f2
Date: Mon, 21 Sep 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789983033
