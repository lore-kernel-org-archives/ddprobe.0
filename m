Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 449C01946BC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785130234; cv=none; b=da1OZL62teOK62Lv2BRa2yn40beLx1kAwvDvIaxNhK+86s6LM5qTuryMpCg3U2UqD0GPmW4yDa0a9N4JdhjnchDIP4qcWkNuuyEhqeUFGptoztUm8V5FW53BhWulTaJ0xZg21s4TpaT9fpVMIu6GKX2zlzNcpSeo0R2mJARrIBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785130234; c=relaxed/simple;
	bh=b1Tte643eWRe+XarfxXRxNNaa7SVI+a7wGZqzn25Qag=;
	h=To:Subject:From:Message-Id:Date; b=Fp7t539Dg6MOooYMjG03VebcGQsVbLDYH1S9U2+HHVcqXJvVPwKFyYtJb3NTCqEzYHFU7eRSWv6gmjrkf1cvp6zvrpBb9cZXWhJ7OJH20nZxZWgbzqC4h2JNcxQcbpfHAdfjUvKHQfmAoFaBdsRDSJtqUaiKgNj/FejVZsAGIjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aj7fQ29E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aj7fQ29E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9EC5C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785130233;
	bh=b1Tte643eWRe+XarfxXRxNNaa7SVI+a7wGZqzn25Qag=;
	h=To:Subject:From:Date:From;
	b=aj7fQ29EO/RoLkZtXLU61dsEXUK4MiAtHhS7x5nSl1+6WMvD/JF1vggUr4HdcswGv
	 9klcp/Ws9OXF7xd9EeExujpyJjrybpmDDxSNJnrT2L5Dy0AvtIEXeJVCTINa/AwNMT
	 roUEnABSRkuHLpo+zbmG3nTeiuJdHOsMAdzcmwgz2zQHepag5SfqQxoSSj28y6BVSb
	 RO59BvxyvXTOrtp2pP/92XUePsEcviYgWdkoGjJMDzQqMESIVVhJIQIJMcsv3DqHjU
	 AjpNZ3OY0NZbz3C0q+0YFIjcLix+OPlFdlcLm9dJlbkaPUS1RXTfuTaWKUA+1Y4V8I
	 RlNnxck5VVj+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8949C531FC
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178513023368.10473.9420757608167568635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78712076bbdf2ac315a3283ef5fe88e18184dad5babe82af5b8613b831f7e70f
Date: Mon, 27 Jul 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785130233
