Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2295314F98
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736438754; cv=none; b=phn10gHvQ8gHSawBJkhlqacDQLwrB5WLjevu8g+iuxhY5pBdUCUKx/yZEeVc4LAEYQ04dPCDnMtLCNv5VAjwzo8j8formDHIVHXTOQihWAbEDEr/AHrBUPdE7PtGcXYsyt7iu5yOAQnjMLli0sqlNu79Rfe/M12jpCKTBgN3uzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736438754; c=relaxed/simple;
	bh=T2zUUlySCi0LaOwy41Se0d3iZ+KhGcsicFw5oI2In74=;
	h=To:Subject:From:Message-Id:Date; b=HofGE1u02kZlUHt++ucez8YjaV11eXJ5Ro2CXec4JQ8IhbJaxkzHqnCEOxLCcghsQEgN9md1cISYs8tBEUIMJy4c2E4w0lyb4uwf8zbmBD8DqTAvsdoPi/Ojo+f69cfK+5oZzUiLkKmzOKbMyYiVwf6epoEHJZXlSQiL7cthIlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEz+lYS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEz+lYS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8397C4CED3
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736438753;
	bh=T2zUUlySCi0LaOwy41Se0d3iZ+KhGcsicFw5oI2In74=;
	h=To:Subject:From:Date:From;
	b=SEz+lYS1tyDPw8oMy7m9Xz9WJAmXHbYRU6MtizDMQ10pwwZ2M+/ZtZ//A2oM1vdUz
	 m0+lUV0t8PV/21agFHkeeWEmKy2OLUABq/GULXXKr6mZXge0E08EO/ptzEQdwRohAC
	 Y6bT/GTRJie+yYkct16UeOi4w2a1Vaf05HXriWhqqqp8fwuFeFVT7LOl+tZrquUH/t
	 4b9JIfxLqHNz+hABMBc5uuMydd9L54tPVhMaGB5c6JJzZKHdTbeRyujMBk6/gzo+Wh
	 KLjNDAaGsV5OGj/2njtyd/RF4BFBeissZdYyJxQZZmQlBUWP189Tpg6itllQSlFNVz
	 5+3Ybrf15MdDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98518E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173643875358.7593.9699019095447469784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ae6c39be7f84466c3bc2b9d689e168625d3b990264481c941b00466cc669615
Date: Thu, 09 Jan 2025 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736438753
