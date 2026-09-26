Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E11A3939A2
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790449834; cv=none; b=d2QtPcioZp4qZAIG6BXALBUYs04NlTYGz0dGrFieKyiWmBvz641t1jmm2VW6nLeweMmlqRyqNk+1t6D5E+AxEwu8NxWUeeXJLttgw/DKoCI+4tW1e7n+rjIh5goBwisksEtifhN05us9z8Tlqar0GPmH3+d1CsViRXxS1lnyCvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790449834; c=relaxed/simple;
	bh=XNmbWMCq8cCoC8jz95VbrJoMgnScqpWbcp5t2Ha4Q5c=;
	h=To:Subject:From:Message-Id:Date; b=eFlqy2rEdGUaZW0R2KwPATsWyTk2xGK4of8OoATmvVQemPewMwIFDzFQHBmSEhTkqr7FWYzGomK0Z8OIHMStcD48P9wMPXmxBWBJ424kckeIXOLAXahW4Awb540RbJeVxgT3g/YhZ5wyNdvQk3/FZ4Ii4osK4US8brb4LCMw0tw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CNeT8BCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CNeT8BCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE758C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790449833;
	bh=XNmbWMCq8cCoC8jz95VbrJoMgnScqpWbcp5t2Ha4Q5c=;
	h=To:Subject:From:Date:From;
	b=CNeT8BCuWaFIeNCmgf608MkHC5BjrXEMaLuv1hLmOtEiH3S9xqN+4bbrTxFczhl7s
	 77x5pZFDmQaXjGd29oy3W3Dl0nYKCxtoKeg3E3Jd6qwzAR/AOd/Qu07JsFh3YZy9+7
	 AN2JvRUPIDtpTxO49h2A+vlBvwLq36tfE3ZKCQVKz0VxH/lxb9ii/m9in+fBCkQy3C
	 hHl7dVH+A5NGkHrkvoTiVIwsXxg/4Wsf9rRWL1NQQcdYIB6hnLdppAblAmRRtkjtt6
	 cofpYwe8q65YdvBFMppUL4Z7vPg3ENOWHl5vlNqclAvTtRJuvqW2v5yNvua3mxHpvx
	 z7Pkn94mPuTyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB6CBC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044983371.20874.18435855258476631207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb36afac2296aaeeef4ae178286d69d8255651a9684224e879e14a5e268aadda
Date: Sat, 26 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790449833
