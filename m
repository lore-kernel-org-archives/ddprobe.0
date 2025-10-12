Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A22728504D
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760281194; cv=none; b=Yr7m2msG3g2UjHw8ImtNpZbPztWcYMz7Oal8YZzm5M2bbxsG8nHh+qK1l2c/2HNYGOC6hAsZTvLXa4/A8/+cGIMldT5mCRfjRb22SxYde08Sz82PuS1syMuT2JhumViXEf3E279x3ha7qW7UE9k/dMVAStQrdO9Nrke63Q07iZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760281194; c=relaxed/simple;
	bh=2jtRtIU0/XRXwTgu9NYJMx0sTgAwAmvY+MOlA1Sr2EI=;
	h=To:Subject:From:Message-Id:Date; b=Wwa4uExtzGHo43/DwMLVQe9UWdFBkzAFUn0pl86GNCiW01jQx/zsRAYyDN0zUxuFOtuKRZrE4bBVOzIgT2k3idYhpuAAtlJVStXO9qQDwoLTHmEPOqKPuR+GqS00jkVGg0a8I+BPKkDHsjXTS6Wctibe0r3p7kUtQmYhXzheOEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uE8UTCJ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uE8UTCJ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F66C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760281193;
	bh=2jtRtIU0/XRXwTgu9NYJMx0sTgAwAmvY+MOlA1Sr2EI=;
	h=To:Subject:From:Date:From;
	b=uE8UTCJ7+LjGzqajeX278vuIc/xUL1JZIM9tudAHHfl6Pu+lIojGWwAPClOIHdwhJ
	 WP/yWSfmZSJ1qu1MJYBwZ/HPXpnm5Y3W5HxNM1J1hkokbEWnxSutzZA94Zw/kkNas9
	 uWqoDxe2cBJo3YHmXJ5/Szr3N0MfnpwRdMry7PJibiHDObgsJgKADnhd4MeBA1ZVx0
	 wEvXu04hSuCq/BCGHXD32ZIsEJhpS7EnjWCqle4dkEx2QbyUjhExO4lndpcEr9JIYW
	 abkraMcIquQiFkephBQz64bvMDSQzz7XMyIeyCluz/ysW/L1EzmbQ/uTKfwZnupLwA
	 5XXF7Nql3pZaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91307CCD187
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176028119357.1122.17213661245194334500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14adccdb22e96edc16d0fa12a8491f4fd526fbc1909cc497776041647884e316
Date: Sun, 12 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760281193
