Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F34CDF49
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753020594; cv=none; b=vEGBFvModbwzVNjEq+5BoVdX9Wu+zhirKv+QwVdcyV/Z68SDxR4QWNe9Dw7IfMe+D0fC+HjxIH5uLz26EzVUZikBNYm1W/+J/3hr8Y/cM1XqCBQc3O+7XmpHpc5d7FmpBQJTWpYBcg5dXQVkMU7yM/WB3GJOHcIwus2sklRwoQA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753020594; c=relaxed/simple;
	bh=ihK2UCDXAA3kGZ/rDLAgxHAnqxCmJaxDVeAf0zHHbPg=;
	h=To:Subject:From:Message-Id:Date; b=adf3x9fEb4FZamU7kZTvVWc/wxjRhD3r1yo1Aj1QwfVzUAXx33jUlhBCvxuc4chh+lZeGme2zUhYTy7d1STM1Q/AyEfbXsrydCL1tSF92Ag209NyZ8orZ+uMxpEaaTxNnWGP8IsaMqosNBmHC/DKZuvUuiWOQBwremiCeWRORjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHIyy1oM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHIyy1oM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB09DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753020593;
	bh=ihK2UCDXAA3kGZ/rDLAgxHAnqxCmJaxDVeAf0zHHbPg=;
	h=To:Subject:From:Date:From;
	b=uHIyy1oMJMns3mbqhlqVJlWXOFnmHF3tJzpwfMzmJaoJu6Vc5ws/UIWC6y0WqDAQ8
	 26xYBB0aTzzoP5cEityvV42WD980LJQJZJJFPuBik2wH2laHaGQht0/rFGIJHy/5+4
	 QUm+o6Q2DMF6XxLQX+j6LCveg50oJ/TnOaTD1YkrypRGA+0VNsJAF8+XURX0bwA0h2
	 CD8impPkqnX8/7vli2QlZPVIXAmyg/ckEAaRETs+a7GRVXEFDPuc91RhYgnGPD5qTk
	 +LqJiFy1MtOASdVtMXCpGT1byERhNL9+/Qk70Ttik6jo1LAR5q9Ax7UUp+8B+R8rvz
	 MU6gXV22Nwj2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96524C83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175302059358.30437.9410542546664330518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4a8b1b1951e8f4c73273fd641dbf27486ee03d296f55965d0c2815437c1faf
Date: Sun, 20 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753020593
