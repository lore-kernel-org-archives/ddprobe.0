Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295982D061C
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787082034; cv=none; b=RAd0/Vt9ZS1L1gfSsI116V0RmbNz9hc1RzEuV+m2C6KMF8c1scKN0p7W0smQZirgnSZeWy6n7MhaGavzScKHkuxMaEb/U4nGjH5TD2+dV0wlIHKGxA8kt5m7L0YRQq5h1vvOUxd4ktFFVjIgSz1NWLVu5fA/dIeokNGo89zjuNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787082034; c=relaxed/simple;
	bh=EHj4welY2D7wQuVzkTbipFlqJujn4KG7knPMVlzEmwU=;
	h=To:Subject:From:Message-Id:Date; b=IJiLquAtFztNRxC8jIPWD0L72fTKr7+CFq+COByRarSR+9jXi+Yww+shJZNLW7yWOM8hoxDa77uEcOtH6aMzXi9uSNxSdSU2jmQE1n9Jcj7v+oN2Nk62R2hviDma+HI4lBB4RmYII2D77zVLNxEqNdJNbu1dLHwjGVa7sNUaqu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f6M6xtoB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f6M6xtoB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D27C19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787082033;
	bh=EHj4welY2D7wQuVzkTbipFlqJujn4KG7knPMVlzEmwU=;
	h=To:Subject:From:Date:From;
	b=f6M6xtoBfD29y3fSzaiS5mcMisV2ZMnDFki/vJrxwXzLafTOG9h7xT2ihHkP/MceR
	 T/PWSRig+rJCWB4LFejBS7f8CdZvXWnjoFD8wQYTz+f8LBLkbR7OgBUE2+jBax78iZ
	 Pjli2ojblM/7mXmC8hdl5ULFcqsvsCdRF9EqY4Ax8OPGwojC6bRZJuZIaWFmMXM9Ax
	 CQ5F5uKkTBhP74gPZLNc1qOXKcGIRu+J5WlClbNDGh06FefxCi2iggHr1X6uboiij4
	 5lqDd5ptGEmMS04xV1P/lYwRHSf8wYuTpkU089/R/1PZ/UzbjfIVvCTD0y7qllRGMV
	 GDt8IVfdHUy1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C0FC5DF81
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178708203371.28725.18110358062628822453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae9eec73d651f5647f25a0cb6f15d7e9a905a9af774f8ee027391e7dd9a50c8
Date: Tue, 18 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787082033
