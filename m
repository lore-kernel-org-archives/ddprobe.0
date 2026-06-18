Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 443E834DB56
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781773594; cv=none; b=IbIEngu88WMlLk0ghGsGVB0QbBxGCYgcC58ipfUizfG0e2WwyzPDg33LrxtTXw4YwRI26x9X7EhQ8MLEE4jl3pnLKk6Ggv91UcZtnNakwena1oCnggkET0b4TZFmRDdjHSDDfbcZOxFK4w1j6Lcvxa82EPR8F7sqR1CtjoYHeqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781773594; c=relaxed/simple;
	bh=MGOS5MUKrM9tQOcTieY7O4Pin9zaWtIVTkidH9G/fxo=;
	h=To:Subject:From:Message-Id:Date; b=tKX5JWD+/mLl0Mf6L0U7uZZcwAgqOO9wVjL6xki9uoCj2V67dMZcHxXjDVi2/25UgWPKFxKcC0owF1KCpL2xvt9aMk6gtZznNhE3nuNB4aOw72h/MDP9dwGfxLG4SdOwyF3XRUpm0YYWudnQEG+7V9j8i5PviP24DZiw0AYolBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uS0SfDwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uS0SfDwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3869C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781773593;
	bh=MGOS5MUKrM9tQOcTieY7O4Pin9zaWtIVTkidH9G/fxo=;
	h=To:Subject:From:Date:From;
	b=uS0SfDwM4Li7jhYTIAN/PfCJ+cDjlo4de3tDcakZLE90h9UVuOzzFD4wW0YepneU7
	 4y4cWVJazAIVkEBUAcjHLbh1hqcWO2pgJ76LWIVKU69eWPOtWhG10Q+0kMr4WLc5im
	 TR2QrlGeX5B8KzS13QCe9m1Fw75b8lgQQaTCcd8U0HGHk/kUsJq1bYeevgdyd11tvN
	 zOLr6HXRylXJGbrnmBkwqMyY5pXBgDZmYY2vqhceUwu5zp0+TWVKOozN8Aa5cfjcmc
	 TJamAipm0FCziEItvwQLo7KfD2SDxR22eTulC8EBy8nHby31ZpEB9UetPWPFVoGwgi
	 PkqekgtQY2/jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA610CD98ED
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 09:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178177359371.2901.3246868915043987212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: befd44aa82de6890a7bb581f38c707664477d7319cc612063f6d651431ac4df7
Date: Thu, 18 Jun 2026 09:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781773593
