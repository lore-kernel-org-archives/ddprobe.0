Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3811B1CF93
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727299554; cv=none; b=jmyLOJo0dpb0cXr7KXQuKjmuPqzvV6oMA2l1MEDzuSpNmjNY7m5ArkqhK1i5pg6cFDcxH5AFJd58Q8qslDgezjaqPOmszczVQ55NX94+gp6wM236yfe0MpK7O5iKE/Kai85SBCEPbbax8pDLbX1Uxa47M/LKr0c+xdH290sWwoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727299554; c=relaxed/simple;
	bh=BVFzYL4dPqaabD3MYBQR8QpUDNfCIx4hH6ySA76RASk=;
	h=To:Subject:From:Message-Id:Date; b=Vuiknm4JfdjZCoFVGpt6ILapLWQYyY81P+5YU4BX7qcq+Yb9rg0mu/A6Xr/fhVqgIsmrS4uGTMhe8/GDU7yE5vD8/VmRLaJ0e5U1N6FUIugf+Z74sz9fM5jLoEhGJO8VDuGPy8tZwSg/jrWcxjP84d8oJ0AnucZV774uLoitaK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0kHP1g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0kHP1g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07ACC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727299553;
	bh=BVFzYL4dPqaabD3MYBQR8QpUDNfCIx4hH6ySA76RASk=;
	h=To:Subject:From:Date:From;
	b=Z0kHP1g0XEpl/V9re3LMdaNIUp3g+VE5ocVN1R5ym+iGZI3IPNdalcG4kNtSFG1vH
	 O1hNfRlsj/g1DI4M+caORmU08rk61sjyuRuxLeOLJjgnENmoYYYgU0LkYAXiZOsZSs
	 RXNTVax0aFcgei8t6USUF+gYTw7I18WQZrPorWOxNi988AVAX/Ql93JgM1weZwResk
	 /SsFg9lQ+bmOA81S3nSgoBjPcGQYB01WmTn9/RQwtWVkA5EhpEvzYeKVUFlAIvV9vt
	 wai+V18QQ7sWz1zGY581ltJw3UUjwYuymRgh2R7a1cGkn2a98V/qtPy1xXPOlRBeGh
	 bKMEyxrmmYhaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A2BDCCF9F7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 21:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172729955360.16575.1097641579629180841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f09382e2610350045c96b62d228fac81f08891692f727fe13bece1dcce42e4f
Date: Wed, 25 Sep 2024 21:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727299553
