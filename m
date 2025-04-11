Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87DB5278E67
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744367994; cv=none; b=M+IrPDNt3QIaQfn6/nU4vpKUZyJccthqg6oJ+LLJDSEvGCDJ67idrJ+DUI8dbhUXrTW6fNfyhzYhGPTC0ikb8LpPo5y+D8SEQCxxCWPOffwgLMrE0H6CV2724TQMVBNBH9fFwSz44smwph/2G3PvrV6IUMg4IpRFZZvonIUyMDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744367994; c=relaxed/simple;
	bh=4Mk6yafexYVcSiwx0k0Tg0CisDUy9KjAXFvFsMyefYY=;
	h=To:Subject:From:Message-Id:Date; b=MrJVO7c8VclqwRHCMtYisvZNxFADVv5+DXGnlwlsbX9M2D9pbWuxPWKpo6cZGelbREQl6AVArbOeySJP0+lSNjIxW4MmuLk4AIwOKBt4LjnAanI/yOnl/gPpII3iH7VWj0MTIfsUI4i9wjIyPor1mtD246UzL9bywb6nZc5d8U4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHlV0HIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHlV0HIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1D15C4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744367994;
	bh=4Mk6yafexYVcSiwx0k0Tg0CisDUy9KjAXFvFsMyefYY=;
	h=To:Subject:From:Date:From;
	b=BHlV0HIHM0SsHgA0QNQ5Qhz8curuYoka6PYZPCQ8my9740Ktc/lSnvpwXrAgJBdFw
	 pqhvqTCUfzqh+XKRr1G7y582d2ui6xT8TJjeGrK0PV84ftx3LtOZzBJXxViUzrOqCM
	 OGcmt/7Q+/gQNmJCkSosgNE6D+S/j6MPnTute6dAFv8uPFhic4yQxUGHcsJXftOfqY
	 X3c4p+uPSCwBnRLctW3w0liv4unOnFoitNEepPLm8vXSK/J0qMTJD7bOuttInQdiqg
	 wT6TNwlO/p0aVaS+wmDbJknVzNIrY61Sg7Kz13Jf98WlBo4q9rFAd/0ZUeB6cf/3Zg
	 RGuNLRi46uqjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F89FC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174436799357.2220.13144677486043856729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2959520da69337c4f91746851187175a3ec59659c71d49c6691d13a971aebaf
Date: Fri, 11 Apr 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744367993
