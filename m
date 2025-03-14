Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C081FF7CA
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741958934; cv=none; b=jGidxxnxkntizxEhn+Sq2zrgIgqEoZkKsGtnuReh3ggBYTuqQA1PyDrDmJRjld2DZ+DeiwzBv7HRv10W9TMwwYKGMHHABas4GcI1yoR4h2niW1PTRwZVAgKddtHsPt0RSgYUGGMDQIopjblaeeO1Zol2OdGxdm7uWnztOFxHnlU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741958934; c=relaxed/simple;
	bh=JAitJpvt57xHZ/iYUEja61fN4/8SuQ14cfRAIpCFbic=;
	h=To:Subject:From:Message-Id:Date; b=jF7TXal2A5kSBqeSKpIoE1SgzgeFBKHjL2LmSq5E1QYFy46uFzwCH4ZtxpMsRimVdxZyohGsRtwUFLRXp2ieoeP7Ws3HhGiytsh2tcmpCH2b94kS+S0I2WemmMFoJdoAOgRIxwCZK8Lob5CP1K71T0qapCtCP+OL9JtM0lR6jFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aE+EwsCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aE+EwsCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2857C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741958933;
	bh=JAitJpvt57xHZ/iYUEja61fN4/8SuQ14cfRAIpCFbic=;
	h=To:Subject:From:Date:From;
	b=aE+EwsCgMV7e+88sMT2FprFicLvmHY2mk+PhZoPJGG+Y5CEAmhnC0dAlfnE6M4O9u
	 iEMJX4tF4k9OQhOZmUUUyIHNFMae5BZnamv5SClQTxyt5jt7orOzF78sAwc0SQG6Or
	 aR+bcaVbprJfKjvTLpjN105Nh6g4eFDbShtRHUe6LKEdM2YaMNL39WLO/uvu/7lFs9
	 MmIZTbgUX1Q+5bwSYqke998LITcG4A2ySv0Tsi9b2t5uW/NOG+ByFZ1nvmHfYLxRaw
	 qQg7IVV7lh0UFl/R7ner2F0ZmuZVYWbFaXJCspbJubCOYCzPk5+olm+dS7mrnWYWeZ
	 VS6RLOUCYehaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CAF1C282EC
	for <ddprobe@lists.linux.dev>; Fri, 14 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174195893362.2441.4725031589289664686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 594a6bcf1b625ac0b6322e546dff4920b1acdf73cf11fc7a79d3c0f21ebbb966
Date: Fri, 14 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741958933
