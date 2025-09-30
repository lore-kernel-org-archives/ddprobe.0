Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA69D231A30
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759249794; cv=none; b=ThR4FJz6iSl2HnC+gEAAlPdlvoqlp5W82UfYXPCzPKwKcivTxJKTXJiiqM90c0jb+wkk1+xHsHZV+5mPvEm/HRkeCEjcjyvZEBdxeUJATcLQ/oz1WuTvyce25PJXFpiJn6JuBSDEBJ09nXIsTlsm3emPRWndQWUM8BY/V8hhRg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759249794; c=relaxed/simple;
	bh=KiAYWeNFnH4fWzAwPsr9ztGBOAHVmvJ1etGx+gGGSPk=;
	h=To:Subject:From:Message-Id:Date; b=Vb2vvJqai4/WSNBGZwg8qGJfS4CczAZ9Z+SDGRbE0j78zuD3cfzRnJYOEjhNdOtIktqH5UHUGUQvvy5sZ1hWrC2TQKlLydOjA4u0w/V3/96YGS2Bcm6gbJDrWsnna7oTXWZb3bbPZydBwLgLBqU9jSZml212O7CHf1SfoVoiR+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=frSqQhhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="frSqQhhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9416C116B1
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759249793;
	bh=KiAYWeNFnH4fWzAwPsr9ztGBOAHVmvJ1etGx+gGGSPk=;
	h=To:Subject:From:Date:From;
	b=frSqQhhYSAWwOOQcdN+ZaKRIKIqYoenUlokin5EtRgW1MAaeNmyvVvKHeX3NgGVKx
	 kREL01TGlPB3hVVeFAPmPjtSY4gykHdlFRXFx5I5G79glnH9A1rdXe4CZTkvpDhV9W
	 CBLNN2/8sSw8jOb8QatDnfhXXFGEKLoxaFlBhijvmskMNZn4exHAkAGyf4QjYp7zdO
	 Oyip1H9ppAz6gMJ6KZQEsEZDpY2dU+FakOfzcWTjKOyUcqZ6sXIVhwERGg2z4qeo/0
	 1UM/fAuKXTwDDAeAIfS5JxYHrXKBFcdDEzm4HdCen4Mc2xLKful4glsa84jRD2ATid
	 2L3qPr0bxQKgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1DF0CAC5B8
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175924979365.615.16474765174353046610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8385338e6f2261c04b2abd9c30de31fd2d050814f9cd9b2ee9b490d78c1ac990
Date: Tue, 30 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759249793
