Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BEEB283FCE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766956434; cv=none; b=A9DwzPnQ5Hm2shtUhi1pSCCsyRHVznhOx6j188/Xu2EBjIUcQYOgWKYO5YNZSU8WVSDTlrx8hTg3GUtjUrm3dsaDSPgGjAxrmXGYVl4TqJyx7rZOEz9FBlKxLz50k5R9u7okgGDTOapXe02sSjL+jBlapZdch5qAm4+pofad6ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766956434; c=relaxed/simple;
	bh=ce6TwPsc8jca83v7hwqc0/v/QZi2z/EY12MRQjPl/WQ=;
	h=To:Subject:From:Message-Id:Date; b=f0Ny3798+t+jDjFS2/3uMO/BjamnXcm/9MQrpMCzBKSXpR9GkPt3kNUnE6/u0p06ReoDxCG8bES01QFYrhp/mIQcsnJLjGx/Tpj92QPomH83pjXeDtSo6KHI22zIs7laai7faNlTQtUxiob5zep/Yf3ZIWAYdursNLHJLJUEb5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3aezQuM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3aezQuM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B419EC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766956433;
	bh=ce6TwPsc8jca83v7hwqc0/v/QZi2z/EY12MRQjPl/WQ=;
	h=To:Subject:From:Date:From;
	b=M3aezQuMs4GnuJ05xe8WAmPKS0jatWgYNAnBk4isFmP8kAwRNKaXdSM5zP36y5X2Q
	 GKJJFWJWjN97BPC9O5cpxr9dLCo2zeD91IUNIlF5G3nZoLx9lUPWxJyspdN0ME1qCQ
	 BG3JobBMbxmAWvnxE3REk8gSP2m3HTdTDKFE+Gcf18e/2TayQJXyXvXBKkrrbzMYkD
	 j4HmNVHwm28JBoHi4DFf9blCSE9jJWdHQVjGoquwfhjHM2mDFPsvfNZXG0z2Rlq2UT
	 42c3+YB9D51HKv/ga8IqIwiDp0aQjcloq+vXeEtRJJ8pRXbisnKpKgmcg64zU48nXF
	 zjSQnlYGt2uNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CDCED3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695643362.31655.7005330371876739907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9829058d25284b128f26be2c61ae0c814c8a61ae8013461f608bfa3a069f2e3
Date: Sun, 28 Dec 2025 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766956433
