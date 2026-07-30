Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226B332ED40
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785374434; cv=none; b=iASEiruByliMV0pffFYMUXNtMNO5CZmLrVdt9VM0I2kpC6UU1zgW7TerueYcRrDHhEZrZcrXYno/HF6obPyWk4X5g/9Suow6DYp1AOdvCsYr+xqL2T3Xe/AElZKR8mUA5gN6FGYsuq6v5yyNPvTw3hvDyn+tM8BP7qVMdJNJP+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785374434; c=relaxed/simple;
	bh=9jVLe8wL1HMxnn2c4l2O4JSCx4Kg3K43WtdiFfs2Jv0=;
	h=To:Subject:From:Message-Id:Date; b=CuYdgfYVD/szH3WfW7nNy9Add+bnKrWlQxEGlRh1BHG9D6+J9E3yTCPtJaIPoqgaYxBOzy1LAfUgR0KnhAO8XOUf1NVpHdtl+6S0GfaniCgkT3nCl65NCv3STXua5YQtFO0wCFlcsoJkmcJiQzVEKTY1d2kf2Xw6WRyL9zhGaDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmhNCCKn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmhNCCKn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC199C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785374433;
	bh=9jVLe8wL1HMxnn2c4l2O4JSCx4Kg3K43WtdiFfs2Jv0=;
	h=To:Subject:From:Date:From;
	b=hmhNCCKn2tz+Eoq/2umwxovqxZPCWeAzvMN07ERGz7j4TVBzQFLLZYGZVNU+hhegy
	 dw8wC33CwviVKZK5P6NsoXGPIYhfoZx7mAEZoACvhFjyMWfEzQmXUV+Q8/kECb1ydh
	 CivTbMQcIpZOHTZdM5xsBiQK+mdBPd6T2tBqsU5+dX+kkFf95Y1qymJQCAbxXm/cS5
	 FtxWJQuEdrxCJYW7npauRNVUYQkr+eHID48Igbx8RwyQfNygTrnTkPJt6SZRSJ5AWR
	 H0Aoec51l6MTNet1YLIMkHTUK3Du2HOhs4MYljOMsn5DJl1hQs1GDNDA1ut8bddxkK
	 U+Ghr0DPNUp1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A886EC53200
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 01:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537443368.22487.7375933148443590816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06a5b623dc1f54397b24d89a8b48b41363eb35dc8270200f4a88d8c7fbd0cc79
Date: Thu, 30 Jul 2026 01:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785374433
