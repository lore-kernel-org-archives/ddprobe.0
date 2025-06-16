Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F47286D69
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750097394; cv=none; b=EVH6/i/Y6gcwBFLUXUyppgV3bwgcRLe16jE9mtDhvHR1QNUij2AV/aq6GM9BJTFbg0zptE9/coBUay6jAwk1fyEZA0dLlCoJBEKSj5/mr+DDeSeqDoRLX9vEROzj5H5vwmPtZVYpYuwwOxof6yJRtKGPWkDKuYo7OMi85cjajX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750097394; c=relaxed/simple;
	bh=wygkPMTfHoh4ZBkBQvlnfQJnJ4rm6HcVPl17EZ0v/D8=;
	h=To:Subject:From:Message-Id:Date; b=Fo4ZOjIzsWrxBd0S4XhCMwd0tROAYoXiKX2BtPmcMDyBgPfq0f4cVeB1mLDDpcr9avDRKZbRWmsMlloY6wPcgIPr0dhPPo5bAm+h4p9O2xwkYFbKQd9yOZ6XVt7/9k+8pjzb6cs22a4nmuOBw9EhcBWOGnPzUiXPQ06PgmV9Lg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i3HUJ+Vr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i3HUJ+Vr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1436C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750097393;
	bh=wygkPMTfHoh4ZBkBQvlnfQJnJ4rm6HcVPl17EZ0v/D8=;
	h=To:Subject:From:Date:From;
	b=i3HUJ+VrI6gMS8ldgFy3crmj39aeVXIx0dpzdiLAPEHfQPI6OglYWfacZPVAp7a/6
	 UH+/wYW1vBx4E+gc/EFYsYx7b3Sut5k0gWb/mtEkarji6pZW4LvjV5YtYZ9EuLm3Le
	 MXR7iucev71XR+0Z3fcD22ew6fEQsNoLpGoeFQ54Se4RPRSIOSEPQLeWepziy19ZkT
	 WitCGkW0HFpW8lU1ygqh6Ytg017kPX0daM8BlQG35yaV5XGvc5oaT2CkTGGPO7uxl1
	 VqrJ70bd7vWDE+HfRRHApW8u0atzFN9cXB0OAmt4gqZ8wHDtHzRscu9+hS/BKa2JxM
	 kvx9ym3oK/q0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF68C71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175009739361.10208.1480224868839033586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fd61f63256df9220584225430f0d3cc7dcc1ea759d6f4e8445850e7684826d
Date: Mon, 16 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750097393
