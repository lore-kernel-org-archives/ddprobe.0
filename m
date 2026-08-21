Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E9C937F8BA
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787287234; cv=none; b=eeK+8+/p99aYFfPwR+eBBuRBb8XYZX/cmx/SwxCxgoG5sAjGNQf19VIxX89kxDNV4sRGxLil0n3ykiWg6T9zdr5FbnlgWMaia8eOs9+cVCyG3TZ2kcdRBR49A9MBTYQrgJpw/y/A1eY7ncDcU+Fy1kjOPWcz4339n7jtBvNLACU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787287234; c=relaxed/simple;
	bh=Vw4E1o7XE71T6c7aNqhIOch+m1HuY76Kxi1Ct1yy8sI=;
	h=To:Subject:From:Message-Id:Date; b=okhWfg66fBcxO39TL2OD68yiph1C2/i2P0m1ae/fwxLQz/s0UTF1HP9CtxgnQuemXhQgjUJAren9f/o6CKrTgDoVMcNwoOWS6onxKImBbieIAfUND1pZTF/0rDgXAA2kwFPW4pWbDC0ZUc8Q5sEAKOsyY5ndkt2viIGE802mu+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BDCSWVyQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BDCSWVyQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFDB5C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787287233;
	bh=Vw4E1o7XE71T6c7aNqhIOch+m1HuY76Kxi1Ct1yy8sI=;
	h=To:Subject:From:Date:From;
	b=BDCSWVyQhWKwfQPDFIjIrhN+RMOhdDvTaTGnwRlqGPQn6T30BmgBKsYuz2UWQLuqS
	 W+SDkUph7l2/ZkM0RiStwvpiJ3EnQORmrWRASDyKulflUknW0O2or7PjEYvGkpvK6U
	 dmssbw+KdLb8GfjB6wizWJugJWOWIyKhGT6BuqmgeqpLI21sJ+tbuC/UQpHlN7ZSCL
	 pY8o9s3WBG3FVybQxw9NBtxULE1V3YZ1zdRtXTdEJDfdvZ/aXQp/m71n519gJEYL28
	 2E0rfXb8SfyL+PXlwHnj86QfruYdyHMoB90bzzWrXOMcORlWyw70PhvDSQZ5qW0KgH
	 ELfIhvu/ZHESA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9D25C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728723371.23865.17402709282601637656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dbc0f550bb9c0c4085a61d3501f2af715bc496004a0215cbecc45cddef45543
Date: Fri, 21 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787287233
