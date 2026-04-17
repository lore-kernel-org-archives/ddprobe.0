Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 107C3301471
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776451054; cv=none; b=V5QexG8LBm/OMRzjr5Nqh6hQF78tCcblt2r7LRqAisQNWbirXKQLDQRGe3B2Ww9s9NDQdkExaajmLv82JYMltsa/Dz5O2UXTyQGdimyOt13MNzrUophuKM2EdOLedvJeICQbMWlmcSiJytKOD5POgEai8booFvKjo3LTBkvi6yQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776451054; c=relaxed/simple;
	bh=jkq1vUXDvq2pDvMYMoHxxbmKlMoNsZqAtPZjDomyy/c=;
	h=To:Subject:From:Message-Id:Date; b=K0IBbEewsSN1mA0q6S5CNg3/8YrvL/WSQLT771sVfJ670Xaptt5LAVS9qUXdQ/KcF9a1iGqYXqRHA6YDK9cN9U44yc+FjdY1ghCzcveb9VDvzsAHJGs6vzOZODrRWAnVDJA5hECijellNSbdpmcka27kYPXwkPy7vwtBjMnijHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1PXzcXR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1PXzcXR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB2CC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776451053;
	bh=jkq1vUXDvq2pDvMYMoHxxbmKlMoNsZqAtPZjDomyy/c=;
	h=To:Subject:From:Date:From;
	b=n1PXzcXRLlc6bIztneAWesRETGoYWo0s5FV62PKwyJxEir+LvwwLmARJw1bAfhyUw
	 QSgyQERu7DOSxkk2N78A5TJwRmIGVWBmwd+UD10qSLMt8UUemTvuS/5LysutCYahBl
	 oe7i4kicngwCUr47zbWe0a8XANU/xBxsv48HpjPVG49jHSZkAkD/O2XrZvK6iKNCt9
	 rVusdRIRqu89a7DXpFkomA0Js1VhX70i7dInvQmqzE6lTovjPeX2N4U0yzUsRwjf+p
	 5ibjHCm6V3DyaMv4k4BFITMtb1qd3JMNjpOfTHoAdbialeeeGzczlS+erWJQUqkGqc
	 ZLTWjys+XmqTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9560F8DFFF
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177645105368.7500.8215933244178478869.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94009bf8c829915422d4fd6c391702241a8fcaa37d1b51642bdb0e13f670f30
Date: Fri, 17 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776451053
