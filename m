Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 078F9A48
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752427194; cv=none; b=BhI9YExTywhdK20RSpTF62T2c1LmuLZaeuJrsdUCs/3ufqLlXbdw0Rgxm2e1dFQlknT/LkQfSRwUK4daaavPKr7yNWilKT99kqxrHJ86RgsbQF5r/1cFuYUtAxVoTFsD3u55NetYIutuBMoPiSmrH9i/gIvJJyRG1r3SJPREfMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752427194; c=relaxed/simple;
	bh=5jqe6uloO85PDdnNR6yppOjnt2DFn0wK08YT4JvPklU=;
	h=To:Subject:From:Message-Id:Date; b=V1aul3zCXd7FswF9g6LNUfVfMLBWmu5Ca8pyn0Wz7u7HOlGM1eCsg1Fo8tYLmDHNCoXfuFNlDrNdf0U3yrr/B70FxuvqwmnzgmsTDWPy5QRo2qJiKdWlUdDCiiQEKdYex3l/pmimWJW67Aq5dsoYtEyoAFx1rKBqB/0gS0u5EhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uvbMLgWD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uvbMLgWD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A080FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752427193;
	bh=5jqe6uloO85PDdnNR6yppOjnt2DFn0wK08YT4JvPklU=;
	h=To:Subject:From:Date:From;
	b=uvbMLgWDW7lvueX3mVa5cS2aEfJxUEEc74UdHMNvvgeOZ8GSPX2zgKwVwT4pqQYOQ
	 v7H0wPVFMCqkwTCmsvO1ARUO8XL8frMmGY5VJiBgzPYNkB0QsQJJ/B3Khi0eBxSPQ2
	 lfZI23USFu1hQEov9QOHLI5YRC/sW7ykEAxi4YZYQLiO3vyHYcQtaspcacViym1ugh
	 2lLly5Mw53aWTje0U5dp+pj+yQALlym17DbcFuZyTeNCZ2H74KNJlay/NEoY7yjBq+
	 eXGQpwR/maw30XSApcax8wZYwbfmp02bVHbqjZ+si8H5oDYHlK5QWsqJe8Qu+GNP0C
	 swnk+5CgOngVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA0C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242719357.22384.8538735590658138594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7cfa444d5c8b364aea9811b1dc2b65c24fd9dcf6d33ff174c723bfd32f19859
Date: Sun, 13 Jul 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752427193
