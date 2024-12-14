Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B46F11712
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734166554; cv=none; b=B8QBdfCUoe81pTCrnBHoiIZAFFq76cOhNIJ8JoiGYu9IUTWouybdXLBlTLwRK2qxtZfFBbt4SDq5goOOa4nCr7dni0z5F1qGdr0vfl7pRJzyZ3A1xR+lCZoSZx9Qp7v4NRBxHDA2GN75sEbUVNzRp4frjBCfOxpdWV0s1RSr8f8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734166554; c=relaxed/simple;
	bh=dwcwmTu57omLzQmAKGU+c2AxOdaEb5sbdhqIPFiXb1Q=;
	h=To:Subject:From:Message-Id:Date; b=Y0dTl+CasoE7NipR5pNBe/UyOsQK4nrncXq/t1HCVw0jgukOaf+X5jZAHcR6D2W+zaI9u0o9llNqjxhxD8dJ3xYdZXppFzNQA4VrNRcYtRV3fNxjIUAM6kASVOKUH+SsPUM+9jTdUTdGAKI/r2Lwow39krMhJBKNiHGYreZS4dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMB3M+eJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMB3M+eJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9945C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734166553;
	bh=dwcwmTu57omLzQmAKGU+c2AxOdaEb5sbdhqIPFiXb1Q=;
	h=To:Subject:From:Date:From;
	b=mMB3M+eJvHZlP/pfImqrwhRgD5pP1PZiNsUEysCS1q4vSRIQvQvHdfON4/DsJS2gg
	 jxoLyrxruWMJMnSW2Dtry8jXv+lbrAy0DDrDXJYZgMJ6kTBiEy+DKmLtbqoXICFJnk
	 FT3nqcmS5+3tPcnS5U2Nss9mwPlknxU7sbvvl1hI8nYL0q+4+cGXPJDkdGJlNdeGCz
	 Ay5ckhhuLCN1YotxOiQ+SS93DM0hbvI65OjMgnDIVyPFAWPvNsn/Cxby8kiVZMnODC
	 IWfD3kTn95c6B8oi3et2GbvSM+QDn3gNOqldtHtConuao62vDAofewTgMlcNhhbYML
	 YmhEldb3y2FQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98356E7716A
	for <ddprobe@lists.linux.dev>; Sat, 14 Dec 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173416655358.6419.5031024312429252320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 039b74f61671927468dcb8a96abc8cdfe7d60ed50118f9e28874d79af58f0858
Date: Sat, 14 Dec 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734166553
