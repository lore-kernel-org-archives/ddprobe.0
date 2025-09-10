Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235401D88A6
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757513394; cv=none; b=VNDSHd55hZWFLsKW3tTjOHolmE/Nm/FvsjdS6rA5rAa/eCZe++AUazovGKbDR/iawYPzavXKjgUBCt36bfpXlQWWi1tQWUamgThM4fgViXhfxY1YbcRmgh9A/030MsydWdi8/fzHKmGAqo05lTQGXz+5ui7x4FMw2unJLW+DqJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757513394; c=relaxed/simple;
	bh=BQrIHtNl8J6+2t19qz2WVR+diwLKywCp8ZkYIrh2DJc=;
	h=To:Subject:From:Message-Id:Date; b=shygWS4AzryQOmjC6UKseTWDpDJMR8wTioIIvkWvS6XFZ9/g63K10xS2nKwlkgr8b8BDCz8v6kVwCGXI8wuOJqgyvfr3+fKclQun2xkchQAqfL/LtgFQtuQGwYTETGfE1WPDk0fidNCsONAL+NgjGihW/MG0F4GGo2NKggGRKCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=etmc+2h4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="etmc+2h4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A03BFC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757513393;
	bh=BQrIHtNl8J6+2t19qz2WVR+diwLKywCp8ZkYIrh2DJc=;
	h=To:Subject:From:Date:From;
	b=etmc+2h41t12aCZrpvoHoB8ejXdJbF3kbgB39LfV0X4rEz4UvWZ0ex60m/qONQfX9
	 Yaqb9eOQThPnjuEfx2rWJvJPhSucUkQbJQt26r0q2DfHUeZ1uNjydl1sG3UkDP1Qos
	 tnSWHtjdwSKsvgJLYmRcmTni8yRvOuKX8PyaAZKZcGc+D9UBW5Xx7T6b6IkywJoRC0
	 jnPOwnR+FZd5A+R/5ciQFFO2Qordf3kpnc4ueg+uqbnhZUdLE5A2Y9RKavmWHgDvEg
	 qfdxPFr7knKpSgB41OQkYQxPJmZz/oIO2n0pi/VlJnkJ3vvdCz1Qk8RqvZ4CmjKb6y
	 /A9l/wlUD0R0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90965CA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175751339358.15457.15800256856126836378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c60c4d4cdcf55a4f282c77ac4bc52ef1b33ae19e8d1824d7e8d10fada475ba8
Date: Wed, 10 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757513393
