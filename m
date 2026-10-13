Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E180400E15
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791855034; cv=none; b=SX3vd/B+BUo1S3/UGa7rT0WbUHbFaoIVHs7e+Aqt20yWPdLB6gKGFMY4aBVRmIW5x5R1iO3foc47vKpLgMkJ6ybKG/c6kgyfN0EF7DFfrLh6SG8afPa4CuNUjy8Cx+6D5H6BCbxMeQsexUeUw54z+BkyAWJ7DYPgEx5J/+gbg5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791855034; c=relaxed/simple;
	bh=3UkPMhloyMGduLq4R/VUc/jY3IlqzQ/4Z4sksnfuFtU=;
	h=To:Subject:From:Message-Id:Date; b=HtAfpggJV0FsdeAbVMupnUOKVWIgAa/Yai2C/fWj/yvGtunAlRWziIrLA6yYpWavxJwQQ8nf5/xepe0ARichOHzc0LxA4O3cirIk8dQcJWiO8EhL+EaggLiKr5Y5ZKiHzCWi6nCq7DOm8X0IlWGuagylqzmpdOZLVfGHtGMgggk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvGVy0my; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvGVy0my"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D28C4C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791855033;
	bh=3UkPMhloyMGduLq4R/VUc/jY3IlqzQ/4Z4sksnfuFtU=;
	h=To:Subject:From:Date:From;
	b=kvGVy0my9Q0JfksSrgNntyCNAhZ4fVQKfBbPiwLaIU4jvK5IE3WNiSiumakmzJG7b
	 u9ZyoP9FG/FGwVEcQcv20SQKoq2Cah4F5D4GFyUsX5Gqnx/bMBOJXBPLfDS6Ha9FeW
	 GaX10xookB96UtVHRfgLhhUUfzI2zCf09dMOBobboxJTmSuL/XiEFi4LoJ18VuJWpT
	 3yjjNtlCLbZTZhHv6k+4RW+cX8c+yy00ik6VvImBmfPcWHm7hKtJU6D7++mII+fGEH
	 LeRB5gptA8fYOXdvjXE8NsrddRAOucZuUCGWzNmBfYVXqA0+YqT13j7/Ws5ckbmmy4
	 ojsBD8nN3zDiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFCBECA9ED0
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 01:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185503368.5351.7895618779948863083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9e6f0ad4fdd88c795bf76a3d40aa94f8e492025b124785892dc03ffcd14d9d9
Date: Tue, 13 Oct 2026 01:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791855033
