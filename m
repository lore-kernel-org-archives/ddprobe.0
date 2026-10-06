Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E2BC3EB0F2
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791288034; cv=none; b=dF9DIkOOMC9OZsIT0WQbptocLNhNyFT0tFdbAuWy9DK3hBD3NJtXEZGp2TWWNPX7YzL/ZPLJXIq6sCJeyF9SUGhZQUueWOTEd9CkaWMtClzhQ7lbg6RTznhzb0IgLgaJbUigBCJ1/ej39i68Aprt1k+Z+2po9cEcMWJ5cuAd8Z0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791288034; c=relaxed/simple;
	bh=9awyVgG7fuk1uOxID64cUc3bwznUput2zz99QyBwCqI=;
	h=To:Subject:From:Message-Id:Date; b=A735iHlypuClGHKq5Ayl8fSRUT5i+4PDKVxI00GkAk9UJEwY/uKEd/mUmvbymatGS19AX1ekyjilE5zYVGN/wj35bhtnO0wfvmxfySEjDqX9Xatn13QzhYFRxkQCa5mem4Y2b+9CxZ4H8zkk8C+6OJ/feOA8bfePhDlZwnBuri4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JSXtoI4Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JSXtoI4Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEFA4C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791288033;
	bh=9awyVgG7fuk1uOxID64cUc3bwznUput2zz99QyBwCqI=;
	h=To:Subject:From:Date:From;
	b=JSXtoI4ZBjT/SoKgAUK/SKAyjS/+yUvu2H4JlltgUGGfBF1rIJR594nN00GDir9jr
	 YkSbh74N6EKRNWNhr7ERL4FjsQvIwRWFRhBi9OQXuedM4QP5osFz+fl3o5AYO3e1au
	 qTx+f1NFFZfqnG2KPAACTZrslH4Nmt1IbBSZvUKd9Tsdg6KudzG8CsnrBJt+3XnZMc
	 FP0uKAILCwCyY5o5DH4dCagpglxQLHtTNyzk4D0Y2xU9dpePMCrlgmr63Md6i7XjbE
	 X+9q+zTJ1fZkLNAdfw3vRDI0G75QMwmviwxxtqO19yiUT/RrN5dQaU87TKz1FeN8ht
	 H5CXUD7hvVM/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA7B8CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179128803368.31593.10684077518275474825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b642dc5af668ffaadb140f83fe91ade2b781ed044a0a8427f49cec268768211c
Date: Tue, 06 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791288033
