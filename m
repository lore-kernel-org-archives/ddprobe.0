Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9B458AA9
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 23:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705706897; cv=none; b=jTRQ3MsoXemyk2a1oHcCe6N/gaAWywQ4BJk6ZMNqwUZIlMngUbFEXO0+GBPG1t3gXQrSxqP1qNJ5bTIOS/+643arRZf2sMPV3b4hc/FPtiR1NEn7IYRroQ/UkuJalFhI4rFuzY37snI3UQc8FXZAGDoD9EioEg3B7mWrenhz7BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705706897; c=relaxed/simple;
	bh=9gmJicYOn0vbfroIS1VKRLuerTSjt7KlA8iaSZOfI8A=;
	h=To:Subject:From:Message-Id:Date; b=O9M3pmHcx9sVFpPWup8p+tuQBfiXdWoRKUWzxeBSQM2PcoFvLV1L0OjYoZTbzvjGurpyFBSdJSQhsw1sGaxOgG9RvpjJhxLlxfFeCZLA5bUNu/Cp5oC1Z7e+12Vj9tn/jhTmnfxZ9n1Z406Cl/p7A4fIXhVtkk70lTMfctwakcY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XO885FV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XO885FV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD6EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 23:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705706896;
	bh=9gmJicYOn0vbfroIS1VKRLuerTSjt7KlA8iaSZOfI8A=;
	h=To:Subject:From:Date:From;
	b=XO885FV7tAKtBDEBAcYsuejLfm0WkbQSSi4RjzH6kO6dE7YTc+vmmbaHzCSpzdoAt
	 hHVkCvTuAR36ETTOr1SixWyXaZ6oDwl+HyS3wK1n0lu8RX1rzQITfJPrDHI4LoKHAY
	 jGyqr1OvUpkbCgkV2oZbXrY7G6MgqjLE8e05SyyozVtJlp47Yva/ATx7u3QzqAI0kh
	 JqVF8kpM0EIfHQd6eo4NtClW8dO8yva6noVxRtA+zQC6Eoe8bYzXYrgcmRIE7aUgAT
	 UuCytbos2gwUEL4IH7YA92msAH7MszD2aiAW/fOZg5+ErT7AHNMgB6v8UyXKrp9lev
	 HqVacLpcdx8rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AA45C4725D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 23:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170570689636.31397.10955279063080084717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 573102a87b8709bb895f4b2d69676be65575ff795fb369fa3c66f0c5ef18f904
Date: Fri, 19 Jan 2024 23:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705706896
