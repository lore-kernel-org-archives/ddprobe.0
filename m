Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AB80230BF2
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747061994; cv=none; b=tn+DQruEXBKFD+gA++8hww6emQ/Q5ENG33JDQqiLx5hWE7IzQkiYImSAbGN/LMZgyCN7ktY+6Zuw/Zs0rUhIJY+knMaHqG18U9N1ENUfI3ZTb0W0V9ynKEE2ILZ+BUjU1+QuDds+N9Aa0S8dzlB0bxhPYSckMxdYscna7F39SQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747061994; c=relaxed/simple;
	bh=pAIRHw04Xp5/cXEkcTiQVUGeD+zUeVbjQHd/qE/dszU=;
	h=To:Subject:From:Message-Id:Date; b=oemcKlQ5bWwHD5xrpqha1d6qPZCmm6DSRDW6Xc2Br3LgGTUIYXcNJVKdEB+AFMd55XDqKknrbrhvBTmcABKtGUtQ1BP1UPGA448dJ6KrF4TAuA1M0yvMnSnI2qOmLlY2iilwFj0PfJW6xZ81i2EVbGLm14etTTdHfazTOidYqS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=toiozpIm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="toiozpIm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CFBC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747061993;
	bh=pAIRHw04Xp5/cXEkcTiQVUGeD+zUeVbjQHd/qE/dszU=;
	h=To:Subject:From:Date:From;
	b=toiozpImtnt5wZ2XQ282DdnxFlCFG1ys2yS+Yc2i7XYINZ85HAlZzPSHSCy47eRSm
	 y3/SsSyuLQ2jGx1EonhosGHlz1ZwzVImoPpuKFT0t8/6+x5yY/y4d1LVvvuzBwa6jQ
	 U4awYlFMLQCWzbGZ//VK3YoetDH6orhbmBP7cgOQ4LFdpNyZljMMcM05LvrB7OxaGZ
	 jlPDBilaRwE3ZLsOYXTP9VT3Ypmaj2SslQrN1fzvYDgozD1Av8loS+XEiRnH9frWIZ
	 aTV1XJTDQlz/Us05S2q/rpfRdYZMm/LQ+WfFRIg4nD/n/JyuLROyzh5e1XxYXoMYYB
	 qaEtBX5fkfnww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3BDC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706199357.8476.17222510901787248136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53025fd78805dd9b9038d6a7a62b10f4675c2b82c7963f022ec604620fbc077a
Date: Mon, 12 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747061993
