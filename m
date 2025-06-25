Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F3C25BEF6
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750858794; cv=none; b=EDpepTUUHmMdy8o7ddGV7YLwz2QGzTpW9ooEfnhnkTB2v89MnhAmzQULKdVAQO9jzr9WGbgWzQB11LVqI3bCRUhB3kqJjsBx/VlNXPfAze86eb+KgfbrN+6dOmppXin4JkEskWwgqxaDC8XF1gSEP8gygwQbvEiztjQHgFjWpOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750858794; c=relaxed/simple;
	bh=zAPfJg9ISF+FMgwxz/vRuLhdVsEsMhsMMizLy6847gg=;
	h=To:Subject:From:Message-Id:Date; b=Dz+uuP9cqotaz316qijhzo1bdAhtK8F/JnRZCTqdkaNyxdL3rO3Lp4nCSTCs7dMSjfcToIxUHiwPL3jv0lAokxEM2fLbzrmulRvr2reI3Pbl3KMDzHEw5/O2w/tdqDuDiZxBxqdfRLwCEJ0uC2OL35zwBQVF8tz29epRSvW3qOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hLTm7Ull; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hLTm7Ull"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3A28C4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750858793;
	bh=zAPfJg9ISF+FMgwxz/vRuLhdVsEsMhsMMizLy6847gg=;
	h=To:Subject:From:Date:From;
	b=hLTm7UllVy9GGm5b+CdLe3W3h1U7tNwGVdSDXtxB+o2bwLdsewNfLeBXcEtzOoAXT
	 VP+nT4fGByQkP+LL3+NhQ09lVVx3MbKfRtb1UUBmmH1i4E+9RYuqmpitNVDcCj2u4H
	 QIZRq0CPO4TDFrKATgDqat+RWN/oYwlg7l7PSfuWtMgRxk79a3bPr2nlq5XXWzlou8
	 O8js+zPIGwZEw5bOvizghNwwzIhrkZIuByv4A0jDG0+KNzFWbGqdL9VWrYe17PkxsY
	 QoabTQeardFxZBLVf2DjufA/9OdYHpvJP3nMpeu5Dn1Scp/n7YZWqtacaPtmczK6GN
	 603yX12XKmIVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F852C7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085879358.24260.9811639592313178734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97ee31c8d5803c9c99c5b6708b25700a00eb0a7532bb48bafe17dc499a3d040
Date: Wed, 25 Jun 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750858793
