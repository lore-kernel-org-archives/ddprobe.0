Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A74F9E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766756034; cv=none; b=lquQ7Slt4oA4YNxnVHo7UjAW/KgwT5LQCEJ/tNGWX3WKQk3qIrWnyGx3TtYhi9x98yxH29NvM3HLmlwyVkbZNAx2xFFmjPpkvTApcw7xEicTexfOyyn7sSU9/ef5LXPqAFQFQf/GEmbrSoS9CFxnvdJtNtpyGZMgTLr5zjxVQXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766756034; c=relaxed/simple;
	bh=zvMtLMzonZpX6W6IGfodrxL9tZSW2vzAui68oFwvppo=;
	h=To:Subject:From:Message-Id:Date; b=iH36fehJoAW4fElmV79t7TmfaLR3o/oMy4i8DWHRqrJ4MbfUqyU05krNUiwOj9jZ+7NkEpl2hfPMVd9wGAuVJLyelzo0eqsvqgASl54R6SKO4pjuiVJ78dHQDnh1GIDmNIVHmXIP9b5e5v1Zt92oDlxsQRDGPuKeBW9vQIqiQag=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LC/vUqC0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LC/vUqC0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB2DCC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766756033;
	bh=zvMtLMzonZpX6W6IGfodrxL9tZSW2vzAui68oFwvppo=;
	h=To:Subject:From:Date:From;
	b=LC/vUqC01PHbH3XbjVw8yB/0gC0m6dN+Gtnm1E1JCeHUzRcTIyIj1tUcIOQ51It01
	 qTDCuPf79mbcejtbVvAhnM2M5cjHrofwT1p2KBqC2oAaJOU+dCQ+h0NVrkJtRt7Ueh
	 jVe9qu/eWLTuCyE9MO8DLA+DQWrmTTaTA5ozj4p/GzfysRNdL8obhbPp1jy5loLJUq
	 nWUNA+SGbvYiA88PVe1PTut9kQf7x3K3opg4iS1iHiXKuFj+iQX24a3ftu1uryN1My
	 zIDy0Hq04LZdF/Fves4mxWC2jsAA1RwVoIdVxigFCFdcV7o/P+nIAarQN9mOuplmHl
	 QuevGFuiidSTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94285E8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 13:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176675603358.9486.705487887421588824.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247a7bb63e7c90d19b235aaa88d05169551407af6667dc9f8ee91c49691c1ecf
Date: Fri, 26 Dec 2025 13:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766756033
