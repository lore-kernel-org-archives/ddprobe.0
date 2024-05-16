Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BCA1429E
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 17:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715878943; cv=none; b=fAg9fGl7bRbv597POEx7gzBuu+In11zPop4pqaMFz7AIJy4NVXT0f/lnLmF7upL8b4gZx6rJzHYDrxFryhT/sQenFFfmwkfhL7JkuhXrZV8zmx8fHBo8o4yBWR7w9g+p8OKWAYyL8beyyJHiFN9IK8L7Qvc16vIno0byvi+05xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715878943; c=relaxed/simple;
	bh=1QY1lqL45TkHdk0l1w22YCUfhi4V2+FW8Ig/UjYLSmA=;
	h=To:Subject:From:Message-Id:Date; b=MuJDobe8jVLcSX4/3+dWilNg5kv1o5qd0+AYb3d4rUoR1tl9k0vHRsBbMgxbCTQniJOOcCeIO9O1nWE6iHZHbpHn2mNkA3Yeer442/2DhvkZiOvZTh3loy6GZ9O3P251q8+FTqJoPw8d6SobD0yVa4cr0Ze8r5v45y7U1iDxl7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MoRApm+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MoRApm+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D98F1C32786
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 17:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715878942;
	bh=1QY1lqL45TkHdk0l1w22YCUfhi4V2+FW8Ig/UjYLSmA=;
	h=To:Subject:From:Date:From;
	b=MoRApm+US7maclDGp9Eb+AbE0F4I0vwRTqhD8a44ddwkp7mSI+IRBTskzAOFy9bP0
	 tCkArbnc5coDHAgDfMtfkemuxwkbg4E7WJR293XRfx4D/+UE/+OIGK6rFrk9EWhwd8
	 nllmekvil2monyKXn2KZWidBbenjtkShrGyjzWaRozGGAjrqdKWM7JmL8daGcLZlKq
	 92BlrdUeqkU0lKzM3IMdtN4+ADQfB2B5bslPw9ZAdIyuQf1FpBdZ/fQIslCQ5Ze5ky
	 dZfUMYbHYWnu4KZOsLqBVj8rmNxY3NZM4mfDi4o/xRSTdv17F2DwesCU0wlR85hPAz
	 8j/NorrfThwUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C597CC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 17:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171587894279.24818.16261819028970201382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c878e515ae854cbf1243d6efb0267b065b994fcd1af4ea213df16cc93613eb
Date: Thu, 16 May 2024 17:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715878942
