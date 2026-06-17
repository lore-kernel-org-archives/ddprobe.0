Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350BB1E1E04
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781658394; cv=none; b=bxt4jgEbuKgq9RorayQwuBop1mR/of4HtxvSfoMYysd1g4EetgS17jByuB9b4CpNMPur7MaG8NCQoZhDK2nl6bDlZFDEJ80Dmte1A6dhIU1g0+jzLr5Ce4JYJ4YQIOzKHkls87eQNeuBNQ1W+iEnyyXm0WKlOdh0m7CSzlPiFEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781658394; c=relaxed/simple;
	bh=iErVXgkbjbU0kQ1bBgo9Twukwg2O3mlox4zoGnbAOZ0=;
	h=To:Subject:From:Message-Id:Date; b=QOCAt+0rhXavYb54p0quYG/sY7/FFDuwo+Smsp8lEm1TKjv/U6ZaPVCZEZcIeay0uoy8oOw/3K5h7i4UZKz2F7/TgInftAlPK+lSrWutkUixbrAgtLBL3Yil3pz2njaETik10/sL0WbGQz9+Z8VwuBiXJo9g3AKvxIOuqRuwHK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CcJOUqi/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CcJOUqi/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFA2C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781658393;
	bh=iErVXgkbjbU0kQ1bBgo9Twukwg2O3mlox4zoGnbAOZ0=;
	h=To:Subject:From:Date:From;
	b=CcJOUqi/0SftxprGmsj+YQ3gP0Pzt6izR60BDUiHf8oCrq8RlE5J1dFu371kb+iSw
	 2GCYVhZha589CDjyyOk8mBKGJxqB+j/vIe/8qHdQNAiD4eWkR7P8pBjCQajmtNi79N
	 G7glGGWULUQYXH06UUDaHjjMh0UcZdnqjw3GPohDIuX1Uy6VGIa5MycnXyMyEYp+Ed
	 EnNj27/faG741jj2Zj8r1Lkt9aNm5PzKXdaJm2Nfw6UbJErDp1pDG7TTNZm5+lE+2P
	 ygncesvnoEx8D9Mrh3OV8qfUZogxJUf+FekJtttpk7ZConuNAH3Ds0KofWblstSKNB
	 7d0K9oL3fMUng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4869CD98EC
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178165839368.28034.9870436475999596681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f33142f8481dad0b46195bfb90d935a7a33b8aad988aff6bbd933bb6e27e1eba
Date: Wed, 17 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781658393
