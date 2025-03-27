Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0DF17E4
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743056394; cv=none; b=cGeUSQzLHKww0w7hVnxwV0imqeJuwBMKz6nBv9SThAP9o5fSdqT9Q/J+IzN6n9KPqOoUr8v2+d5czosj3tMa7PhSuhyrfrba4qO6oWR6+kdppH7cohWst9DDGybvfh8moLWQxsHXKMDLiJvxUoSHpfMPA8ULMzq913UnAXR7DWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743056394; c=relaxed/simple;
	bh=I6Jt2urDGpXtxiHnneeP9WFN96B/mv/PUV0o1Uca+YA=;
	h=To:Subject:From:Message-Id:Date; b=Dj4Ilv9gLgFa3X4gfxkIUc9p+9CPr2E9N7WvkP6VbP1tB3WdJDvHlSxf8/mxZ6PSsMYhQKls9xBmga8zDLnBJOHCXqJii06H3WDkZqMBZ2q/tpflsrBr8p4IfcFITuS4imtE4I3gNTpuursmG5SaiuqsuaNAfCUv6FQ58gKAJHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHLBrc1V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHLBrc1V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B58E6C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743056393;
	bh=I6Jt2urDGpXtxiHnneeP9WFN96B/mv/PUV0o1Uca+YA=;
	h=To:Subject:From:Date:From;
	b=KHLBrc1VpD0qmFQDTlq/qgjAW2n4Dll/PCMRuJaVxS+KgL5823j5NqcIBYIOreib2
	 T0UQw33ugJVjMx/6czSsyy4kcUlyslefpt9ZBNWOMqwDu3qMNkFbUuG2ijkj5gbyTn
	 uqjGWLhUt9O1ApnLrbMgLT1bvrUCa2zgfqKrhBvrZkAak8lcSeEV+yfyZOtr+8PjKQ
	 r69NnXBMBTLOOEa7H+wFEYaTaZG3sFFjYy8HcA6p5fU7uDVPirO0gawqjZNkvPP04E
	 aX5e8B0O6WsnloERzvkP5fDGk/BZso50aSDgAr13HMtsMV79cpJykAbUOJRxAqIyPP
	 RGNklzXG9KXqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEFFC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174305639360.14618.2688088376647580581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8376badd9eec1b7845d9aced268fad1395c1b3e15164a1d3a5ad097cd2a686
Date: Thu, 27 Mar 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743056393
