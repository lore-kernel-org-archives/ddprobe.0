Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2721C22D4DD
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750349394; cv=none; b=Qy39toi3Ympt0evtTyTH6axip90EZtCIxQyxPx3qfMmwXYm7ftKWOuJ3SV2u3wXB0sI5myd2tBZQ6Sfigq69A7bRM7pQS9kAQsYZAqHKKYyfVAg3lOQpDzPnFt+gj/FYgHAntLSwefG4excc8goJlQuDHvtKJFD+XMj0G+TPb10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750349394; c=relaxed/simple;
	bh=XN9Ygn3qJ7vvm+qCwVZzq/bwJSEJoHlOdcan+V3d7pc=;
	h=To:Subject:From:Message-Id:Date; b=sK+ObY14VGU7oawhPNmNAIi7bNnBWHE/dxSvfc9V12qerqUA6mduTxSoR01otgA07NDwR7BSQMIhRDZp9SYhWBJ2owPbXGGpRah8ouKWYjie43smSqHwdVqGx2Hd49XXEXITQCqsXpwYSTCnhmMtWMKesLqExEKfcFHyWRcjJB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+ViMoRP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+ViMoRP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC5D9C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750349393;
	bh=XN9Ygn3qJ7vvm+qCwVZzq/bwJSEJoHlOdcan+V3d7pc=;
	h=To:Subject:From:Date:From;
	b=m+ViMoRPRazNvGvax6LKSUF13xM/EQhEz6V341yeIQho4ni98eQpNaLz0RFVF9DdY
	 WPcZMgRz2NO9NRT18bHvC+JbIwO9xaXhRy3at5TuNHYuDGwiwzu08ZaJ+MLhJ4i/In
	 12+O+aWyMGIwc5TErKY3nAfiEOFw5lODUFwv1D1g7/Zejo7AcA4ZQxlCU3h4TrOTb2
	 cZ/SY6EIDDrxEDdIcdvwJLhLDjG/QaTt98ReA8h7ps0g9F8GLcI16siWxiEjP49YYD
	 BS6y8rOlDMtKUQRUmMyZTZoIklnUs2wvCrbeApfw6Co3VQfAwnJp4g/JMnzaXhfpzb
	 DfCdbOq1/5Tvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E92C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175034939361.18233.9474602092727580401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557a193fef8ad4fcf2831bd66aa9a6140836725146c1b3a54b7629f95510d28a
Date: Thu, 19 Jun 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750349393
