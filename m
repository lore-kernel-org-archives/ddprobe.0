Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257254A5C53
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790594434; cv=none; b=lM0By23x69FzO22Y+RIfrUnUlbIY++7kWMNvpFW8jQSAuIUevRYaNWlvBbvQB+uPpggsY4N/uWhIiQshgWQ8+nu6mBhO23wwAeaTTD6yuJXF2FSuSOWePEkFSzrcgeyxTU8EWUxjsiSlWasOKZlxgcS1drkFT3TDwiyO2fL7euM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790594434; c=relaxed/simple;
	bh=ArYLv/KIZ0y6HUTDtxsOrJ8HcMoG0ZyPKYtrsTT74nA=;
	h=To:Subject:From:Message-Id:Date; b=YGpXy5tgSHwcvkT6gmZM3OYoE3VxYR8efc/YxHfjGn2s4c4/cwPRSKyjNSRRSo35yrAHWv6asKLu3/MjI2qoXwa4IByOmPFw7AyLSo+xaVGXsaEH5ZwxW8dsF5oa0a8tZCw8bln5++wNp3vA7asp8+3b+6IBWHVJqDhc1IGIj3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E7p8iXLr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E7p8iXLr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE766C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790594433;
	bh=ArYLv/KIZ0y6HUTDtxsOrJ8HcMoG0ZyPKYtrsTT74nA=;
	h=To:Subject:From:Date:From;
	b=E7p8iXLrlPrz3tZ90VYhLDS9MAZgq2LSb9qmN38h2nR3x7Wwx5dcjvNFdF2czU1WH
	 rhJ26R/pHATQX7vx3ZEQ056bQZvYjaujLbRWjrTdRxJPKZYLWqUOp1hP7HmfdV56pP
	 7bzcE8Um1D/D0kPrNYe7pM7fqgrb4PXcYZtHdTLEeaV2ZlDtNQbad1bQoER5MmawgB
	 ge57PA7VB78IXPjgItNXYqRxAOaOmsxmwQcyyqgiBCDQGJAMG3EeCHkLdl0SPLP3rY
	 kYMkcm8NtYWwUjG52+pnvbN6H5a2mXV6P2WQQkUW70gZjG0iOwPiWtMcNRZhuO9DDP
	 4iryauIASX/Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDB6CA5FA5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179059443369.19069.663653554064683161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd936bc71d0d6aa05cf050c10ff8f02131efb95468ec69d8db0a0b9753c503e3
Date: Mon, 28 Sep 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790594433
