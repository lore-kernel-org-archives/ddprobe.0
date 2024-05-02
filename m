Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6B81E86E
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714684343; cv=none; b=GvOxMas+J2+kufnG7+Hd/QgrJ6+m9s7EY1SV6vrlW5giPTCo7uqFpkD+U7mwmhhhFl5Nvv+LIDcfYsZGiFhZIyoTq4oUKEq3YH58VLDtVDf7UClcHqPRlLg6ak8/22SETbNEBploqELYMFCpBGW7+/UDXB4pxnI6pAHkfLkeSQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714684343; c=relaxed/simple;
	bh=uwspWp7FIHeOp1PNzdts4zAiJyKrirKsheqaUcHRBAc=;
	h=To:Subject:From:Message-Id:Date; b=gqEYZkfHCBGtN1miiiqCEw3fG7t3GxsjfM8PNlk6uebmECJYphstwUDAEdJBEBh3sUH6bgizXlnQ8xbZSVqqP084z+8+BBX69teeKHB/I17MBmIfSwLk2F1INDDIndmU8rC1OLzgasw9nAat2C9IfyPKTylWQUb3ZIRG4OpME7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bP+1qZqJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bP+1qZqJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA3CFC113CC
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714684342;
	bh=uwspWp7FIHeOp1PNzdts4zAiJyKrirKsheqaUcHRBAc=;
	h=To:Subject:From:Date:From;
	b=bP+1qZqJ9eXsi+zMhtMExEeUyLuWYimPYYPUN+4llrogQJUjBw4v8tGyRytL4UnLm
	 2IkHENkH5Yts9xjkSYb5gjMy1OIR36V4KSKfuQHKF1jlExfXQCtDEL7mnqjvwQTafy
	 f5FI8yzXgYvKLQDkf6vrnpBKRXjTOWpDmiPKSx9TNCAoGReWyU291oBlL8btOLG7O7
	 bcvOrIXVOozmyHFyRYF6qDT5LURLkqRR7LTBm7EQkTzuFnb2Hm+npHH+Zx/bXtRwZc
	 mdeI/JTQnKc6DoUWUFe8NP2wolLGpoAndFQ168FWPv7djFJ6uPVWXlywjHGtnRutCU
	 rHbfzRPLmbe0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A48C4345F
	for <ddprobe@lists.linux.dev>; Thu,  2 May 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171468434277.16550.957660588665851841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e006e44591ddc5e45e6081f55535683a8a04c3cafdf9cdc5fc3ae49b79654df0
Date: Thu, 02 May 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714684342
