Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336704BC020
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778089054; cv=none; b=H/t42611RohrBwlcD90zqfLrZKbajSZBQKZ5xP+jHvCL5esUFbOeQpadQE8rREvFYpPZd0sW5xxaLvNQJR3BR5MQ6cwprMJ1PwrEAdqSIQRN1+H+/tV/evMXvRuL4OBPHRN3aY0+EmNzAE9acz10ztT90faU5DkfHyOXVjtKt3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778089054; c=relaxed/simple;
	bh=sXnWLqjNAZj0OJXDv9pxgmbvganAx2iP6h9m9Tbdgyg=;
	h=To:Subject:From:Message-Id:Date; b=UpsnLr/E4tHfDPoYNjtap7xzdtxD44Y9xoVH4lnBBCSnk3nIcgy8Z5i22qVB2uyoxwaUTSktqpvWEgxwC2CfPzjP7crnh9nw84oqor/EmnyObXic+7ugHZ0z1n67RLbuemdkwmSHhRwWNLFCvn3rA+vGl4SiEj7Uq10lJUpDam4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uarl6C7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uarl6C7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9BEC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778089053;
	bh=sXnWLqjNAZj0OJXDv9pxgmbvganAx2iP6h9m9Tbdgyg=;
	h=To:Subject:From:Date:From;
	b=uarl6C7mr/icXOcRam2+VB2Mid9lB3MBGXGuOseGHhNZBIhB8iHxfPdtDdDIAoEBR
	 nh/5nJfGyKLoZWwWj63QEXDh1rCRQMWqIGKGRI4UzEou/JE1x1xfCpf5c7XHMVgjuR
	 w5Vz2DCojcJDOJvNJKMH0hMTeFe7Nvb3LlOxt2xPBC80BFz5mhfLQ7j0ylholcJbGY
	 ZW6k4jTgrL3SSbzO7FjgMFI0F6XmJSNMV8+FGhisFHkCG/QpY6Fx1W/MP5DjMcq28C
	 yUsy/WqzlWlEOjaVCMLDpr9yhF7O4GB2jFrTPmGK0rLwzgDNbcrZKq68MLlzmTAhvC
	 2sc9J51eR1KBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0110CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 17:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808905368.31340.17990297578821496867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98187b6f65db0539e28e762e3288edc35b65e30ba54d7c6600b91bdbbd957f11
Date: Wed, 06 May 2026 17:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778089053
