Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EDC12E739D
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785658234; cv=none; b=gT3hstxYdXe4UMPDCDU375nKb9XEN4TBGaU2nvxjSuEFU61aEJPRyglZ7C762eFFeHo2NVjspAC0upWOBIOBZAX30SGtADppqibwZ9KsKtSVutFLP8vY9vd3NO3s9pZHsHfm5YP6rbAlGNpieNqG8X7uKE1nX5zN9r3x9ANe/qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785658234; c=relaxed/simple;
	bh=Rc1WOiEi7w2ywNB6lplSuncbIcVvM5Th1iJWJhnP6tE=;
	h=To:Subject:From:Message-Id:Date; b=e9TTqLS7eVZBqcUrFBQ88SvKFJVvc3PAyZi1H0kGsXEqPOywspeRdPlnlVWYVW1Hkl+Rp+OiAErw7Zdc4hClIN1KtO3jFmR3FF3dhmbhrm8/x8sBptG7jRNmL+ng9WQV52xYUJe+iJOw8Usg3Ir76HiPcnVHKpKW+QaQaJoOfrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=scu/tuY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="scu/tuY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4484C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785658233;
	bh=Rc1WOiEi7w2ywNB6lplSuncbIcVvM5Th1iJWJhnP6tE=;
	h=To:Subject:From:Date:From;
	b=scu/tuY1rpJushwGy6H7IeGKdB6uwdYPEYOI7+oJH5Ex5dkowULLi+15Gx7uxqPCL
	 LqNyLJoZZZ3THjs6WtPF73cwANP4FnoTiNv3Hsa1FObyfPHjXKLz3DL71IVMupAEm3
	 HC2hojxdDWX1ASrURmqunoBKCh9G2Ome0mlDU9GHPKARd3PZpF1oQLP6tTBSzm9zbD
	 oyfOIMnYp+42jaRidy07WtYtrQ+3Hhu/ac3aoLRtgKnsS+BHGkhxbil+bE3b+6Xh/a
	 v6Lng5Q3VKNM9F5OSI67QzLKNyMMZkTBXB1+wsr5z3bkc4eRfdryBdRnptP3lOte/l
	 lOh0M/pMD/UPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEA7C55171
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178565823367.8007.8718953312934578839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38e3f536b0a261ea33356ea0dc15365c86af012bb5b010d80f00c44fd6cae1fb
Date: Sun, 02 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785658233
