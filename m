Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F03640D565
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782058594; cv=none; b=jJTFiWh2ObaLqNTmHPCRo+IqhnyKM4tWKBmAobd9Y/VZraUWZxotDNW6YZQNAxqs6fwmAx3XLL+MDytL0hIaHNb+SUTVd2pEdvee4BnPMkcV1bj/D8PQLTacw1liHhzIRFzJ/JeLTc8mWZlVXRBVMzRn3vLxbsjYJ6DIJd/s488=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782058594; c=relaxed/simple;
	bh=hyJe7m02pAsr+4+n1XPnxoLwH/RcLVCMMZzZ/WYQH5c=;
	h=To:Subject:From:Message-Id:Date; b=m2sq8jPox4aIPnRBRRI1PdH2S+8di1eL6SblLX43bx7MrTHdCIOmnx9vPkWtxhBPxXSeyIeo6EiLfP6jiTOxsr6Chp5xUzT+EpygwKecR+D/BPtjyvghEkS66ZFyMjllNgtTtuzEnbHeDCJ+Y7gCVah5ZpLAErQ9Zo5so31VpE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tK78PL+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tK78PL+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C52E5C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782058593;
	bh=hyJe7m02pAsr+4+n1XPnxoLwH/RcLVCMMZzZ/WYQH5c=;
	h=To:Subject:From:Date:From;
	b=tK78PL+/rcSh3S64FU12dSlHyY8AdxdYBblz6ykR3y0ATnJdnQ+8bE5um0YhcMgVo
	 jGXW5p7t7peDDgJayoTodbnhCQ/kBnx/3MLrRM3C4ttIW49zZgrTKSeQDxLGBKSYMh
	 c5sjzmnvUQlj9YwCNr8JXS/c5F4P7p4KuOXI6mUQQGjKNRg/guv7bZ3W9RZUrYZyQk
	 fwW613cNsGEomwTYE0dy4OGV8C+CP3grQlN6mlkCua9cd2jitrrQzGG0iXKYeuFnAq
	 W2Ac5a8fqDEXrDgg2aP+82J9DeGgEeiMhp/9HzOia2r7BFlzktB6t+R0xd0alj9rIp
	 Kvc+XEIJ9U9KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB228CD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 16:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178205859369.31336.552014496047159198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e227b7788b16d8aa9858f85100f8acbfaf08f71cc8f8ac24314ea873a32357fa
Date: Sun, 21 Jun 2026 16:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782058593
