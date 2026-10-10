Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425A33438B9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791599434; cv=none; b=mlYhqnEfTAiBlWMHrab4MKRRo+2TLxSHK0KU/N2xt5js3JslDDQE4cnVuwsIbZ7XKKwvYDJM1Jb/WVr8XvjLo79UY+rysK3pfoeY1K92hoozMZFXNC6cic6p3JI2CJb5VHz8Wcq0Bp7ZZCM7OwWfdt0ci5zxmVAiFzZrAUhOXFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791599434; c=relaxed/simple;
	bh=FkeNY/JqBm6bMe8q/H5Xeh8p0/M8+bKeWlm8uAisdls=;
	h=To:Subject:From:Message-Id:Date; b=KuE2LQvziA6Wei66USmJkkYJ7VbVRCrRu4K3l3M9m+5YXPggiOWbyVeyZ9z2i3iRQaVOrqaMg+ZsYBD/SDnphIZ+/uAcgs/+ixt+OuWfh3lpkCV8DzWaIxhTbD+X1B6V1Xgcuv/3L56YR61z3yjhQVWaBjDF7BVg0pGlBY/i+Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VtrNN8ZX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VtrNN8ZX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0BDC2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791599433;
	bh=FkeNY/JqBm6bMe8q/H5Xeh8p0/M8+bKeWlm8uAisdls=;
	h=To:Subject:From:Date:From;
	b=VtrNN8ZXh997wlSk7nlsthFX56BXYVPdiAf4NMrDIv+mhS11SE7BVbytND0jRuIoG
	 /YsA12I9Ytudr+NhMhyonYrl+EEiE3TdUmj5kgB92X9EiZFYYUh75N4GPjoSaGYevE
	 GO4GshibmcJy8BL6K5tEtTtzMD9xZG04glGP/5CtMNYkaC1Xsfl8vUAnLvnyYWEoh9
	 kagSXEz9SWvtacyDPSg1e+SIzhtVOwo6zmzuXPLMiXADXr307EcP//Iwx2rCSU+2V7
	 2XZRmhoY1pNJUrlagIFYYOv68UAqWKdWr66kp629McZLQ+1capfHK9X8dniSbBlpPQ
	 pE7R53qwqclTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A959DCA9EBD
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179159943368.12062.13892058208203511018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3da5f2055568317209365ff8353a3ce3ba86c848fafbdcbbb1e76ef1d93de3
Date: Sat, 10 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791599433
