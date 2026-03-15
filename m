Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 110E51B4224
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773571494; cv=none; b=ujnH+i0hBusmyVCbvCOmTBzTgD4dKu3WNj5oWRAXb96zsYsDzROpUxUSmwuumD/KwUsXh3akpfwBZbKOAkaB3KHAZLzHfUMy9WfDaHV5Krv23Ttp3iX6jY36wpIrsOwcWjFGV6FRv65o1ZCSR6/CopZLdeRxtpWIEeTnoFwx2eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773571494; c=relaxed/simple;
	bh=VIL7IFPTZj/WUsb0EaIzDgl5nHmTUgCLQ8Z6soGgAFw=;
	h=To:Subject:From:Message-Id:Date; b=VyEUfqeg2JZ9/bLozF+sTm5IXbye6QZK2+07nxJWa1kBEH/x4UITLA4oycboXjLZBzpTJogfg3X99zOQp4DY6GukUSJ4WzS6zZvlJJAjHxpjFH4EdJCzCpxI+t/4fQfyGhhWgSVJHLBKGEP0aYQkpR8Q8pY1GpJwqvf2+wvLO7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgo2UsMn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgo2UsMn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC41C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773571493;
	bh=VIL7IFPTZj/WUsb0EaIzDgl5nHmTUgCLQ8Z6soGgAFw=;
	h=To:Subject:From:Date:From;
	b=fgo2UsMnuS4J+toKqL/NNoJYenI+4XNEXs0azb0aQVrr7RCD3sL4UaJDz3SaUQjfx
	 7PFR8Tf4FTAln06NuMJt9uAKh5HiqHQJy9hCsIroOEYit5RfY9XKCXQsiLcr+SfaR/
	 yhGlmo7aHQWyR9yX+XtR1nV5tJpLJD64dqigsDoLFbs28rOvAFRpf/xHsRcETp5M2D
	 CIVTkRJ3e4D0zdFU+nAl4ugO46ECGuDdiHb1Nkn3cT5ML7pwOZOXiKChdr5Temy0yv
	 gxnIsXiosar/loGVUKw+wQuP04Mmyv9Pt5EBb2KDAL7pGx4HdnSilZxwQdO1prt29z
	 /jGvZqzlecNbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F29FD58B17
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357149357.13420.5880900267861466332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 113b5f266d0ced567e90796de9058dea97ba1f7adc85f5b0f27afd63754ac9ca
Date: Sun, 15 Mar 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773571493
