Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3187015D1
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724517954; cv=none; b=u82MCZB6L6qiXytytKsseQmb8vxdHVY/qFxx2/PsrqzaDW3spPqzsaWpqZlW+w+sD63xRyPdlU+2+dSAnrZYKp8Ic9UlVPzWWe3IWeSaFaGA4sm06AHSbKFxbGmuQQkDRbftgB8nOIepxjvKnYUzAxI2qNDsGZNKCS4IKn/hjb0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724517954; c=relaxed/simple;
	bh=bqCkSkr6RldLVOSfsEao+sz/CizR56AhF/SEWSiMsN4=;
	h=To:Subject:From:Message-Id:Date; b=oj6GbDSfiJ5YUDwLbnUISsJEd191q+N71vDFXPFO8b70UhJxw9HZY6HOZ8eHgCmUiefE9yt96LWlHvn2xEld3QfPT75oOJaEWh4ParSPFy9TXrjgmhGIE/q1n614AfU5WpPbYt0VpvYabaLxtdy+AytCskI+fSE4IcAkxWY1XsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a2cmnkBo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a2cmnkBo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0186C32781
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724517953;
	bh=bqCkSkr6RldLVOSfsEao+sz/CizR56AhF/SEWSiMsN4=;
	h=To:Subject:From:Date:From;
	b=a2cmnkBo0W4wo67nn7MJbrvEAsKC6WTpj+axfaDFxjeylxI0suWROr7yfHbPdIZBk
	 nkSUXJQNGD06NkbQHGhwmJzaxiXshYtIXHStGoRJ0Wq14/2T5sg5Acqi6PIxTZVYWp
	 e/0My7HvWozfgifwYkhGt4gaSDKR5q9Pu9ffpMFCBcKmzL6f9qF2w7h6kK3F1jj+GD
	 C0x/kHxf+6R5N+iHOgtAgR3ZPUJYMaCmQnvn5W0JUkLDIdSzgMZPmdAlLP8/DJvWya
	 eSrjbOcyX1JT0hk1rIx3wNK68ETY3BLIF99gc1OfAhUa8dca8gPe3AWnw6znParBFU
	 64XUh/7RuYa1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9623AC52D6F
	for <ddprobe@lists.linux.dev>; Sat, 24 Aug 2024 16:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172451795359.16133.4458335202004997486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca4b71c2c63279c2b4cf994f0ecb0096645667ad5dd93f8baaf733661f14d787
Date: Sat, 24 Aug 2024 16:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724517953
