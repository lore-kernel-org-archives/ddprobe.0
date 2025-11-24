Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8314254864
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763971913; cv=none; b=T44i/tv2U85qbDmyCIMoXxMl4DFeawYZuQZPV7z1FZfzIdtSfdvCk84PSmc/Fm0F/Gjxaj28MZfA6iK0ffq5lDTfIoCCpx17NJ3l1Z47qNUQEfCQJlMJ7vLsofJur0uyYjykJihWl8A9J46/hEqSSls/d5Hz3zZndnow8vjlxpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763971913; c=relaxed/simple;
	bh=wLzlghsNIMPmTxYQQszECJYK418PTblWX3Cg1VaAfBs=;
	h=To:Subject:From:Message-Id:Date; b=UDXf1FVVJzsH3bBjJInEKl2AMe++PkgnwUsVRLllJjxNMHhjRNsA8yGqs1sHh9Yna/JsknOAitTU6qcI0V2rAH7VD813g/udUEeYlv82SING/w9ImUUoOiSXtN1mZsx09XUtAdJYeLP+CbNEvLWQzp225JN/RxeIzJatqvCDOYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdRYILMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdRYILMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A570AC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763971913;
	bh=wLzlghsNIMPmTxYQQszECJYK418PTblWX3Cg1VaAfBs=;
	h=To:Subject:From:Date:From;
	b=GdRYILMhu7tdPCleFQNrEPSM63tLgSbP7zBWT5qWZh8GpC9j1KFhabTrxfCR3r6R4
	 ZOJHtgaFW2NNNqIYqj2nK+HEvJIlI+vKHMd/atnhGJ8TgWeWc/94g1Dob5HCx4fR1n
	 pmiI2JULax6K9DZXRSo7Rd0yjECl1kFK49oZwSdhreAS0kmWbL9g4/RQ6R2dy5EoXW
	 5e6p/1WxFe8rwlwWD6B6w5XedeH1Si88mfsxgvqu0NcdxtiMblwzuYyo4LLx53S1eL
	 3nzYPQfVRzS9bLECMdq8Dd6eKMjY4hxgUk6bA4GscDD5u/Uot/9D8O8KkffP03q9K9
	 Ob1wN3/UquCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A23CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 08:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176397191359.15707.15090137258042940394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4a5044a55e914adbb223bfe3c16d2129c74f2199ad52819c69a80ee8b09c705
Date: Mon, 24 Nov 2025 08:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763971913
