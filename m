Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218743358B5
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771330494; cv=none; b=GA1NaTv97lFPFrrYMyfu1RJkr6z4fVBmfnZ9cix4cUQXsm0arIELIKuWP7WmKN1JKMenVoYRfYTYaPmtX5/O4mQxbS/RWI2AVdKzzwBZRsAgfE/Wv64vDl/oUM8u4LczvokD0Mhu9oeQOFF7ZN4LHvaF6r9A5okotvISLMwBWw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771330494; c=relaxed/simple;
	bh=qLtA48j8hC3jGrmeEmntoMMpQBgOeNtvIztFjGrqID0=;
	h=To:Subject:From:Message-Id:Date; b=f3KiJTRxO2+ldJLUAT6fXw1Swa74862ibNqNeJbgfCI0k+/7uUTXunIcXyKksvqxEojta8lGh0DSD3tMmxQ4WdWR5jQumb/ljlGUUHpVc9mO4sKcruCIp2OeA1I80Ohv8rbEGRHddyUsS57/1Hz7WXt4t4haJT9cniBICx/BQW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oFnqJwO7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oFnqJwO7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA084C19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771330493;
	bh=qLtA48j8hC3jGrmeEmntoMMpQBgOeNtvIztFjGrqID0=;
	h=To:Subject:From:Date:From;
	b=oFnqJwO7l9QkW7ZRcoo3NuezfV+mm0N1E1bM5mjYAxRfrB0hsH2sDv3wNMJ5yCtQk
	 Jc6am4UH4Wq7YMFXnX146uMyyhdi/jDrKVrYnTM/9TP1yJ2SDudE/olW4tFAQRSAoN
	 KPO5nwIjIj2Q7/9vds/IftPZ1U6MeWVfxzEjTVYtiWqU7XI/zU+MXPcyO3B0P/bPMJ
	 8WU+EVvAGo0B5qxBq86aLKU0IAOxicjTE5B9OorAhdtL1kRcUZyvtlrs+sIWFaTbxN
	 k7deMgX+qxoeKx0v6u5LA21u2oGjyUGZJzc+rxVoampRWmGQccswX5mj/WAjHPsr3E
	 T2Kjnt9FJsd/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97773E6817B
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133049360.3180.1917522373834315881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bac7e7b9e1e56ed418cf898db1613bc10c10d8fa1236f411eedeb6e5204ba33f
Date: Tue, 17 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771330493
