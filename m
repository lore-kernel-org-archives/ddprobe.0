Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC727280309
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777105653; cv=none; b=QeqPcNFuV4KMyz79Dsrd1W5foSTZdZpNDq9XpcUBi34+REQu5LPaUPCGaegxCN7yJ6Cfqm0J+f/VhmfoOU7J+PnxsZCwCpXd6/tVwO7Sm30e5xVpCObVTPvjkH91VClxN41BGQOY18B0mHAAw4fwYQhQWHkGUre8xbsVOI/rKUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777105653; c=relaxed/simple;
	bh=WhNAx1FE3f1yVfrjWiRz1Jay7HyzfuXvHhTN+UuIZsY=;
	h=To:Subject:From:Message-Id:Date; b=cFjxA68tBIb6nuc5ZQZFIosNEHyqyCIefLhR1FHZ7qMQrtUJrudRzcfV3HjpFtjHlLMnEOQp+Dc059xJ/tE43QeySAHW1PxmlNtAStk7HqquR0v3bqJmCX2w9TPCrcaQeOp9qHWjV00m37bDQBaB71NKKgo1bR9GJ8ZTjXlI1T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g0WcVi8j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g0WcVi8j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B872FC2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777105653;
	bh=WhNAx1FE3f1yVfrjWiRz1Jay7HyzfuXvHhTN+UuIZsY=;
	h=To:Subject:From:Date:From;
	b=g0WcVi8jyo6WRe/k4OVfkkWStN2iDZ6MQyxTLjWO2ZCMQcVMC3LCC+DO8czxQGL2l
	 XUlqCDwfiQn7NICrxvfS4uZHDX9te1XgYSHHr9aTHhA2l5SfeK/M7u1CsXMMs3dDOT
	 IaTuVscGlhO4jNSIzHPZ5IcpIyeCTSjQE096OghQl8MUpL0u6vlqpm5VDdvMGvxtn5
	 N+pfIUBUsvensIYhiq+vPn6lapgHBjhIbYon5L/TnCS2ElenpHAqR3XjDfBE+9GHqi
	 cpnI80X9iDG5G7t7c7L7gGT9Fwb8Nm/KR0fnZhS+aY0sebvNI6SMvTy6nljy/HUZ+E
	 dDJFgTIhdwCkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA47FFF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 08:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177710565368.16393.6308215696173653681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e4235d5e152e90ad5804d31006995ddfe1420f9bec336dc395e5924705d29f
Date: Sat, 25 Apr 2026 08:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777105653
