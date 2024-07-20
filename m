Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CC377117
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721508354; cv=none; b=HzA6MSj1JXWxDq6fRvsLv8fwIRuhyjCRyxTBKqVDBqLaMnkeHQhNnE29n4Gn2KPn9yLVQeRupxOkG3IUs0ILs1/O4d8Sc14mnP1zSD1flpV1ShyjQMiadxEoRpOo+/BDd4uz8VIHJiK76m0IPhqj2usE6fy3rMfDVYqjv4WnuCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721508354; c=relaxed/simple;
	bh=Xpcs1g73HpmgV3I7ybJlqn00b/4k11sf+qjkSqIexRk=;
	h=To:Subject:From:Message-Id:Date; b=t3YZUofPvpsj+NLAQCJsK/JU+vX4qutqO5OUONIeG8JiD8CT5hy8X0Y7944YLSjHHPt5Uot2eo6lwMsPWIDLDHVQx8tzGIaWaSuERBo2HtnmihIc91/KXeOb7WwEQGaMfNNxNNWnXNSVw/OFtKg/kqdfWsMR1bx+4PovOOeWxr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PIfBKzTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PIfBKzTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4F2FC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721508353;
	bh=Xpcs1g73HpmgV3I7ybJlqn00b/4k11sf+qjkSqIexRk=;
	h=To:Subject:From:Date:From;
	b=PIfBKzTHRqK1UeNl+/H9yVjt723/EZPRO+PSdEj7QJbswec4nC+ja6EFb/ouW+xKY
	 dWsc+PatucxskT0+0+tKgHc4mQAOn4F4BY2L9U4q0f2J4Bm0qJ4E5rF5ipqcZSjJZ3
	 qmJVn0+ow3nHoHcAuLROI2MV84oxdatzx55vicerWkC+eus8nQpPBdCdczntFSidAZ
	 PMe918Kty7/AeACQlp/B6+O+p9FCb9qyolpTO/Akl61CpmFb5QSo86/rntbDUi6M1o
	 SaKWiJA7FYh8vIBFbzY5jSBXsS9ArIEjBdC9+vG+VPHwBaQ2MlEbOZmvT1fcT3EVzZ
	 Zi0i70nBggqLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC21C3DA49
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172150835360.30654.17866779850858765175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db27c894ee14f97bdc7dad48a0ce9c31bbe807230d9d619e82847b64faec736d
Date: Sat, 20 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721508353
