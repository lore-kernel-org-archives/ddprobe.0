Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A5E3FFD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788071434; cv=none; b=UIPgc/9d6EZNZvLxSiT7qIicucjlNgyTY0niHnzH2Qt/mha/irddY/SqYsosMP7P+CExXZB2UKF7N1+UJ080cESxUWI7xv6mnYIOuaNvbArH/9Gc0yIde/PaSWkPXctyo04knDSOZ0PGAXZ3X0MpP9J1Je1szlLyCCdQd1Ib3lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788071434; c=relaxed/simple;
	bh=WA71CnyRBKsilvd4pQhi3h/v2oO7I+QFvjEoXfAxeUo=;
	h=To:Subject:From:Message-Id:Date; b=WQRWRfo0QazhM97pjrjR7W6pPHUq7DXlhI5Nf50Jzg3MVNCXtbRBkHQjpAv0o/HjZO/FegJtmg8GaEXUNOT3B+J369ct4mXJOtBpqFLkkf9eExTbOrUvrDrbFiVwDnV1bZ/89/ar8lhnjNBo2NO7ZMzEj/6XzzGUMkhEVkFJfLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYq0OYer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYq0OYer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB068C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788071433;
	bh=WA71CnyRBKsilvd4pQhi3h/v2oO7I+QFvjEoXfAxeUo=;
	h=To:Subject:From:Date:From;
	b=CYq0OYerLChIVBkPJG1g+i1xnrS9YbihfZDFPvZI80RXLzemf8aKatSf0OLWT6LqN
	 hxONGZAiJRqtv9QBrMBey5agTwp5aF4TdnaYod2cz8Z4cvJpmYktDy1x7u2FqcoQBy
	 Ae0mvFDac0BDUnqpONX9yBpNYxRWqZSynEZEI8jj0+XC/fKdRZFlyYK3pdA7JFwySy
	 wRrbXQQOjThG3JtdChhJ/iSii/iHAXa3y6/UeUL1ckLtRYieymbvxQ7Fik6G09ABRE
	 DZINzrmgvjvZA2f1gwE70vBKlx0bP1PlO+Wkw+H/pB2mOSPpeeIBBSeBpC7O7Ubtwc
	 /KEu6L2LUGQbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09ACC61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807143368.22815.15406176758840159931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2144961caeda9ac3eb7bb925fe88359a74feb65f14682aa96e7125f73ad5c258
Date: Sun, 30 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788071433
