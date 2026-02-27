Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130F4346E7F
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772182494; cv=none; b=aMoe470g8Bty2EhK9UDx1basHJCKOH1BvbgW7Y/Dm1wQvxrbdUkENWt2DwQY98Ewsu/HTYOffxJc2+WG3V+j9YjvjhF/G40BHbAYz3Bidw86jFMj9OVJ1EG8d2FXTCErg/XAK8qyhDcRlX6sZ5xHGXqhVoTRSJKKYRF3twdqrHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772182494; c=relaxed/simple;
	bh=3wzIwwj289vAL2nxqyfA7VZ44KGpHY22UwVDjT47LYY=;
	h=To:Subject:From:Message-Id:Date; b=fizVn/WrMk0BmeXYDYZBcv4nxFWtloYhsvdGVeZcuZaImQLcH4Gn0M1bzjk9bFCzQa4XUK6KQxfwJyX553Z6QK2hyIifOjrMWHFCXnykvySoN10M1/P3uPUraZ2AjSBWUFCqtrKoqoJMsPe4jzZKOTe+pqnDeh37ueGqqsqXZjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SOSJfY1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SOSJfY1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3065C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772182493;
	bh=3wzIwwj289vAL2nxqyfA7VZ44KGpHY22UwVDjT47LYY=;
	h=To:Subject:From:Date:From;
	b=SOSJfY1RKGK5HU5HLXCg2ksh00EVgIP0I74sQWuzwjY/6wpJZbHV0KeBt9NHptGC0
	 xudLFE+jvHjyF+aoTTbwxaarTeU+UHcCg7Nb4BxEWGJlMTrF8omA6Q+JyDGRc3Qlbx
	 oebJPSNRxtLGwuXEFliV63g6qB7BanriM2n/YyZ0+6pdyUyva/EVfrxH7raQqVu9Sq
	 Re61rxxQqz5MYHeOznPmFwog32y0vW8WFDm5yrwdEfmoWFCgXB+MDUDqK3xxQzcrPO
	 sgVjJS6gfpknCyfDQaJbWyuiueN4PyEA+tD/SrInn0LFGI8p6GYw0G23ytuRaEEzFq
	 +tyuIxvP0Ustg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F7FD5311
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 08:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218249357.28764.14390381831261853366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e381e12f5aba273e53f2385707ce0977bd5f368645d700eb86d7c04da55d735
Date: Fri, 27 Feb 2026 08:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772182493
