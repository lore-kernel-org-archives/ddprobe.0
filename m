Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B403212566
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779649354; cv=none; b=M36ni205Rap8RtVc5JE8qI+U0AR+4o8yZUxmJhRx2oRkz0Me0ZXE6jLK+bbkZVwb0CLUjfttWZC8G/gQ3BuFLy/2tQv7mGHeK1rv2nmtvI+PXMEF0JYWwSdIhrRj3Pbzhvgyk8V8bK2fam77+x+2nulITBWHNzy8lfJdwOhk5EU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779649354; c=relaxed/simple;
	bh=aDmGnpbjufpAc6S+r6d76gjkn7fRM85zU3Q91gEfgIo=;
	h=To:Subject:From:Message-Id:Date; b=SD8OvTAzhsBXlvfWSv3zZW7MkfFwuAUSArKKClFlCJyQqlPPj8H0gBUeM+c9a9X+tLUa+zPaOr7JhagfcZ2qoROYzL+Z5NDAXQUylgalzPn7a8Fm6P5+Byrc1pjCL3rtuf2zqVmsOESL3dHhK/O2Pyqz30BKOaVYsr3Jy/eyN+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEI6t01w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEI6t01w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4278C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779649353;
	bh=aDmGnpbjufpAc6S+r6d76gjkn7fRM85zU3Q91gEfgIo=;
	h=To:Subject:From:Date:From;
	b=HEI6t01wSdLQu8nasT0koulDmZUVTXlYCqasq8t13y4wG48141nB/0z/8rUOGOm5S
	 o2+zWUbn2cWsur8Mc5Qv14w/1aRmiGEgwM3weNm7SQDZARB8Zapb3RbfkgaCyA+U6q
	 fMqr+sdgBgqae8ICk+hbrdeACOuLkHdX40ql8xf1y6EtXlSGJ9A0fcBc7BOjn7cadi
	 JnqY8PdY4WuQLc09l9+KQJo7e1wWYaX1TbPoquJW49JoDdKLGXFWGOKwi590woQL9U
	 Mr6O17E708EBOaYBFmFiED5J09/Zg1XLpRvqJgCd0utZfRNIx07McZoJ7W10i7Ekb2
	 p/U0SsQJ0qGJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB741CD5BAB
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177964935368.11216.8287264840380873156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 899f596ba9ac072f56ea75ecc94e373428b048324a43b5845346e13c722efa2e
Date: Sun, 24 May 2026 19:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779649353
