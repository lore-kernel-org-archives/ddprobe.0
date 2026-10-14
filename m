Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88066530E0F
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791997234; cv=none; b=l+1gWY5vYmhQiRLYDabmxvd1l6pvWe1MvUgCOnv0psyY8KKoYrZ25H6uUq9ZW4t7KMLuEpNHDu9UQYo02PPyyaUvyKF0nj0dmFoCsjXC8gyDp6mV5HH79eM1oJ7eeXY2HYmRc/j6VXPFdBT6DflvvOUxxfFEHvHhsjaJ+ZTOU7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791997234; c=relaxed/simple;
	bh=sLSjDPorQhex2EZCJtFqwAM2heZ1oviANQ/epXRCAKk=;
	h=To:Subject:From:Message-Id:Date; b=qW2Sv1ZZWplJABsQq09wxuNqdOD6FfqWAwbJhUwe5NCS+y6vaAEy2KKloc8Mc67uDGVjiKL6hd0Xycncdji/id+KIGgkcrY0r1rQ4dyo9Pb+6ksZ0H8ax/Vxh+BjdZ+9iq8aBZWdWLnQnhzgtxFNzm3l8mdtzbeeE9pLuVLFCUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIGsiaOi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIGsiaOi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B72C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791997233;
	bh=sLSjDPorQhex2EZCJtFqwAM2heZ1oviANQ/epXRCAKk=;
	h=To:Subject:From:Date:From;
	b=mIGsiaOiyckvTP2qKJaMMfM2C3cpcZ/lJE5KjRfzsyPLSfb+IbWgVv9dk0dPk2ZP0
	 EOo33gReZhxVk3GkvtIDaut09WMv0rxMwQrF66DIVU8r/Xxao/1KzAUByT03juXJuj
	 w23prOuf2bdmUl6y43Q67zwa0pibCD5J6jinY8WjiRgT47FjfDi4c6+ZXaW6EAPB3q
	 rpGCGLHcn55qutJgZF2XvTLAcbfAF8lILOnTlXqcDnuz6NooqZO+3zHfADSCBdxcOp
	 HjcXnjK7Si6xQtecqOeZcl5EI9JN15cWdOMW1Bcv5Lon5kgOZbVwZJ4DrRdMLEimF4
	 PfvnFwTni2g2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B22EDCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199723371.12930.5297098173376154600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4978e4975e5dec905062d2557a5177de2286a6ee3a7c7e94e41a36a9bda5baf3
Date: Wed, 14 Oct 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791997233
