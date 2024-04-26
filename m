Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67953620
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 00:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714090343; cv=none; b=fVbhvnoUoCUQetXy2HX2FQLVlq3h+rOTEQUgouizJrlCxTt2ThIYCbaTDcyPVROTDc6fTbvI0bCD0wB3uS7Ub7babjle7s7TLDTWzFc6YP49fkH6lfL9yGUtOsTIKOQSFlf7kILs5xoT4ZA6fp3Karu34OgEWClWw27NBWMluEM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714090343; c=relaxed/simple;
	bh=STUHhF2eUhbwzNvnsQRSFg8HJxtDhOr/TeqvM+bHj18=;
	h=To:Subject:From:Message-Id:Date; b=p51oAODYvEIDVeeo6Utzve285KgKKd1V95tW7C0pl+8sjSTc/ksl4opRMiqvcs6nsmQpBv5S47oQS3Y9Q0VutdMiz8BtdzQxtnzGoMD0kjTR6zIRRlZWa1LbY9iqm3gveyhh4LTZoSKMXAK39XAEEB7Wy7T32xz3+GOb1yjzzd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ltf2JtQ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ltf2JtQ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB631C113CC
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 00:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714090343;
	bh=STUHhF2eUhbwzNvnsQRSFg8HJxtDhOr/TeqvM+bHj18=;
	h=To:Subject:From:Date:From;
	b=ltf2JtQ+bic8FzoIXhVicFkQWGmT5PNNf+PkSbM1WtpPxp4eXqC7Sm16hPslWbvL4
	 juC6FxX2o8ZNhVlIicAsGW81SZV05bHd6LRLHzxa/5H7GzX1FdGckeExOp1LoE7FFd
	 YYv8OHk2QVWumSD1DFjg5T1INBkFzORcUc5JfHAFMzwvKUKl7t1QdjGczxd4cKBeTA
	 mxDGzlTV0ulmpJiC6nT82J3LNUoW0NRK9X8Z/rwthIBSBvoF+2qA3estT6+z4Y0sEG
	 mAmsDwMW5grqS4jvQEByVbWosfYPn26RFhN6Lk+CEiLEm9qqBVJ0ck07V1b9SeHmyw
	 wYKSDVBBDCAag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D37F8C4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 00:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171409034280.8410.9320124015352612656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5584f3f15fd6abacf5edc6ba8a4bac75317e712c43f4ff1043225d18e9e81222
Date: Fri, 26 Apr 2024 00:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714090342
