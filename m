Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3943F3BD650
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774278895; cv=none; b=K1W3V+50dKnJlUwgnb3+YBW6ngtVHrFZD+IMFOxGSy00Vtwb+KaZy7aCfmxyPOcvAGOwa9Wnsz/d78YE8TDDYYVTMU4JBCeWVveTchML2yww94FR59xdNUL260a+lJiocGgb92YO9MflVMEKA8oj0KVxSX6SBVoJ8J3O5x76WEw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774278895; c=relaxed/simple;
	bh=FTS7rnSiboARBu/ts8oXRwWeEFYtt0vzeS427YOvHRI=;
	h=To:Subject:From:Message-Id:Date; b=oqTj4RJ4UfnOG17PADGwwW/fY6sUb/9jI6vjgzkNjPuOrmxT66UYnQSa3vS9m+Mp5u6LMwjhGe0nq7BwuIJSOCPXYHhgytaiw2JDB5T7TPpxvuEmv420/RKOJci4x5jKObGnl2ItBucqiHneyFGbnLIMcdJbafeqbgW5rbmk4+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q0oD1ozG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q0oD1ozG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5457C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774278893;
	bh=FTS7rnSiboARBu/ts8oXRwWeEFYtt0vzeS427YOvHRI=;
	h=To:Subject:From:Date:From;
	b=Q0oD1ozGJTRX5miPwKSCDPjXjyEKHJYDpOGgXmtBgMqYH2tDSw99aKZIjKKzqZbqG
	 llkVEBaD9E12TPy2E9oMaJZ3IaNKQD+MrU4KT5ZqTOJKE4Bg+4ZV/iQMdyD7RtNh+i
	 DbgH2dG8HVToWFQINq1aqe1a6UpNStWeJrLvPUE/QOf/JYFGs05MHoxWoskRrXwwMQ
	 mc0ATzKzjQVoSW/flhnq0iYO2plehSxUrUDDFn81GZ8SRzlvM+RZJXvTKSVimIzCNm
	 bn82RPOUsbz0mvjiaIQJgI0UXJPX/RNCmIScZQBY8CJx2hMcJJf6f2FTWds8kfBCjW
	 iHJ2zCjrzPcig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9431DF4613C
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 15:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177427889359.5992.16359550123734127614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e69730df97c9a863103d086a7500b74d50ca39ad49dc62de237eddc5adbc5010
Date: Mon, 23 Mar 2026 15:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774278893
