Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6E950E58D
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790017834; cv=none; b=NCt8duVudZZV96XEFLCOGrfgF1Z1ZtahY0WJ5RR5FZnvs8q8AK5rjPIwPQYJqFp7vRW22pCTDULjOewq+mG97wc4rG2M959X/CsqH7ElS2f/hbY2mTCK7DZRC8XmyLq97DM4GGn4AscDmNQclrpzgl6zd9Epv9QYzCDHP/2Y56s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790017834; c=relaxed/simple;
	bh=xqHEnFV8Im78HIbdnK0qKxW7hjnvPUVGvgrK+xewqN4=;
	h=To:Subject:From:Message-Id:Date; b=M3xI0nWcKTr0KnF0DxbX2NWEmiQF/Sx+X2sekjOq4UPun44VFlzWs0hseBy5LMXwaxIQvx44L4jsxlTuJ8csHf62q2kHrfoDL17iZt4LmDl3Cq91hWsZcjDZ2SQ2zjCS6gC6URPGfgK50vKBEH50zvuj4aOnJEbz2vL55wZQ/FM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kglTYDqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kglTYDqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9351C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790017833;
	bh=xqHEnFV8Im78HIbdnK0qKxW7hjnvPUVGvgrK+xewqN4=;
	h=To:Subject:From:Date:From;
	b=kglTYDqq5M2f6Cq29A61WW39keLOSBPQQFIcob62kSxsMXPr429QG4WpBcry3xKVA
	 xye44sixeU49oZKskht8m484swZ0I1+2gRv+omNj9+UT3dJDHqJ2oQ+X8auU5c5/3n
	 OHyWzYLLYp9MNiMbnm7fRYT0ixStW6JtrCGc4bvkXkV8i/UeTBEvvSEWgh/LeaKsZu
	 gkBoNVRI2ki8Y+eBOhIN4KsejJXhSe5a0gx1xLFJM4DdifJiKWB8eFNrAPEkESTFml
	 Lpmvz+izWiiQRK6JaYtM61+DsCYX2+DT6ozXpUdqTbj7aaD29iIgfgOf65mvJ2n4Ik
	 UI05mtBCm/J0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE181C982EE
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001783370.22683.14896152460116128344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd1cfb0677c5d1261ec4032d68f97937465b4a5bc0967c3c2bc13edf784894c
Date: Mon, 21 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790017833
