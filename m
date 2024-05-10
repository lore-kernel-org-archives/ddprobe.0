Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497F91429A
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715359343; cv=none; b=KjuM9frtHdydBU0d6XPQLPNbv6h+KJir0W+RZpYztKi7BQocQbqSi5HwPMMzT725oaOg/pgdW0DNXM0uwSwi6v/NUv/YvDZ+OITv595qQEBFrwWemAQiGsSAiCfK9QKYLxqkNsG7e551QA37nqn2GLgLbNSy0kvtXxehWGIGKGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715359343; c=relaxed/simple;
	bh=fjVY/Q3lhdXUEKcbtvX2Dn/HNO8Awno/yNw/fMTPzEE=;
	h=To:Subject:From:Message-Id:Date; b=O1iD2VTPhy9rAyNNnrE5Y8ANI8uiy7gCobI4XhvvKgmMIkN1KiAkuKifF2owqHRPzO1DIloENNlOZZjVPAxKcvZZsMVXTMiwCjA9D0+rVaWvuUI4VOQRscVSd/tnNRi1kqNtmzdYabvKzs8tQSb7G3aqrITj+UIfMqLTjZsmFtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pVQUkBdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pVQUkBdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8EA0C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715359342;
	bh=fjVY/Q3lhdXUEKcbtvX2Dn/HNO8Awno/yNw/fMTPzEE=;
	h=To:Subject:From:Date:From;
	b=pVQUkBdrkuk6YT9u2yaAG7on1g5l6MKkzmlQqxjo2rQCUYXJWOtcr9nEl3/scDUY0
	 GXDIKBJdTXhWljkY1xiHxWNFORMk6tgAUCbe2A6jp0cinXZsyIIQ4ubAIZdHcJhOFe
	 VKF77z+PFr18nXm2s3Ur5y3JVlEBdBw9SyGsd9grsfGUOO6wTIgyioUhTZY7yk9bed
	 pKPLVOxffWmjyFY5VPz0n9glr7f5ymaAf40UR3A8Oy/CipAg0yyWmdeDrJ2UUxlAeB
	 L8wgeOJkyCqlzXReoHCTQ+sVuacWhZI9jaoCPAwJJIKUh7hwCoOn10Tg1EP8aFcW7s
	 haWtHmwt3JOZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4796C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 16:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171535934279.25015.8425343972888800404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d7c5d41992cfdf6da6501a86e71808381a2468fcd032a74b2349dc294afe2b8
Date: Fri, 10 May 2024 16:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715359342
