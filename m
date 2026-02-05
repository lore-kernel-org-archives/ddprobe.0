Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A3C51A23B1
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770256434; cv=none; b=HopponT9xwRae+eZmwIH/sfmxB5rGxDxy+cRAFahy/JA7TpIdZj52xvESyqzKzYvL5Hh5bRIJuKoqO28joNAaa7egWojGntu8qAx/l/rhO+Xd9nIdjMoPxpvCMWQyCwVDFxlGnlUb11E4eqWcPTzqMC7YBx/Hg0e2w87i0FcHFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770256434; c=relaxed/simple;
	bh=KG1RSKR+Ecpljx0m/nKmD7v8fBosq7S9hohtYv+4wKY=;
	h=To:Subject:From:Message-Id:Date; b=jOzZGL5xW3pGrhmoEz3yVa0eOWsNybx4feqTnS8hlp7baqo4B22YvH10y6nyy1opafwucDf+uIjS4Dd05VuiPvUdmY24iyWFPIiiaT9D2egOx9SCbwDi0h5y24pqrKIhLb6STIo7yjGw0gxuVuncyCEZz0SdPNiM4/9/4hssWQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r52D/5dR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r52D/5dR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFD6AC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770256433;
	bh=KG1RSKR+Ecpljx0m/nKmD7v8fBosq7S9hohtYv+4wKY=;
	h=To:Subject:From:Date:From;
	b=r52D/5dRHk0490IJb8Hiw0fxGazpeL3nb0/Z9aEzBIeqN9OV5hYsBak7GZvNBeJWA
	 mayeEFEixn9MkxK+U5DcudVUBpmQgT58+pkSIp4VFDa9f0Uy8O8NGUxvM7JM54hYT5
	 iWpoZeQHq9hs1JgXgiWWPB+iBNesJ+faDYcHKJNFCWH7Fm6J06sNz8eujNLAfbO9OL
	 jvYksAqlUSL02tsqeID0ftOccLtzGv4yaT7IzD2jsTdALFbpBt5L+fCowglLRpSB9n
	 pDTP7Oz5fgl2fvvHKXapAjLOl/LTKBxF7AJ34L86Kvz+Li6OcA+0ksIMhuZ1FNjusR
	 /aztFaMK1m7rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B5CFEA7953
	for <ddprobe@lists.linux.dev>; Thu,  5 Feb 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177025643359.3192.4235817440970640751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af6e52779c07b2b21460f7ddb174507d08d721837176b84a2d688582236363c
Date: Thu, 05 Feb 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770256433
