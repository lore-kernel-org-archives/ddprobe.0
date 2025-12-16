Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6E1253F13
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765928034; cv=none; b=OO9s1aBh6CVi/otBqtQirjOp7EdIL2T33+XaLBOzUKUn2phdXgVQtDosbgnGj10tFhKELj9YmW+6KI7hQu/+2xQruE4hCbleEPBvd96mZDrEvMvurrG4Q8C1pqKRiTbWlhMYvCcSZdwCFF41BGr0UfbRjB3D2La6nJD6sC8+e6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765928034; c=relaxed/simple;
	bh=9xNtlwhkU/GN+ggyBdQ3oqWljL5bWlsqfIHOBLI9V64=;
	h=To:Subject:From:Message-Id:Date; b=Bx72VNiNB54sfwucJNL9px+Bx+zWumHmIWg7hEb3X7LJwxT/aan1tKxYou9xj1FeW/LznZey/V1FHKfsDD7s4TMsLW9rKcR+qnfHbzF6jMjvmWDUlVSTmU4EOXG3ETU6OnKeEDw9wJtzGXllfohRsmxFPYcBekcsSKxxRSuggx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UGVx0FuX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UGVx0FuX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4568C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765928033;
	bh=9xNtlwhkU/GN+ggyBdQ3oqWljL5bWlsqfIHOBLI9V64=;
	h=To:Subject:From:Date:From;
	b=UGVx0FuX1F3gqXBGC264nHe253MFo1pXFo6iBvbHLZiUnPknmk7FXVCH16P9kVp9y
	 1roM0iCrEvkgfelDMMCgQwJYvVSgmBfLZG8jF1VHlFroFuhv6oPSUGGy7ubQyYakDj
	 kGm3+4ob78ayd02+FfvbEd8rfdMjocOdIcx8An8BVHsXJx6VjC3W7G8Q1w2fo4ymSm
	 xaGd1X2kuGoCrCMg8UvsP2M2OhNJTwNmgMSnrdbB76kcXTpqms4bURetuvu85ViXaI
	 TXMyPm8n53FsOE3tgCEvLluhtohDK3nXVjaYaNEMUgF2xK1SQ6kqw3EAvMZy4lZ++f
	 zi4+1qU6t8acw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A59E9D637DF
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 23:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176592803363.11893.16096393433313267703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cb7240648d8541f9e6ce5f11c5b29d5e5f266dd5285d4de288c6df08d18cf1d
Date: Tue, 16 Dec 2025 23:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765928033
