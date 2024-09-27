Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A7AB381B1
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727417154; cv=none; b=YddMyuxSgins+sNCNaZ1RGvH+lEJoXZsI2OhQphiAk4+OwNnVdxHzZpQKJ+Xr3xZUpx8bF+QvxT7dCPzoitlXIoBGA9N61GabLtIfetFFhrnsl7NdWx8EmxP/L/5Aiq/s/MkcPwH7PFfniFdMGBSSjrTOf/y67vlfedwULdiLdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727417154; c=relaxed/simple;
	bh=BPd+nGd9EXtL5AW+VLyGNi+SjN+6zdPaOpLe3aTsy6E=;
	h=To:Subject:From:Message-Id:Date; b=T2PrxwWIn3/iyT5ZxNjCGAbyo6TN9PV4Oryi8UQ8J5B375Pmw3LUwpfIJgWXh2Jx06gw0DNLU3U9/gt53I5QM+2QhhNBqt2SJmakOJy1xgqLFRJ97NmrMeDEZg2POOwQOerGcWCTpNwSgWcGf+ctSHJ/1nCW3MPoAmQzgedK5lM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nhLdmXHY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nhLdmXHY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A54DCC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727417153;
	bh=BPd+nGd9EXtL5AW+VLyGNi+SjN+6zdPaOpLe3aTsy6E=;
	h=To:Subject:From:Date:From;
	b=nhLdmXHYWhUjod74NPWvJi3GP/HGHchQXWJIeDJnhpLBntWnSUZIzw9kXaKNjEZUw
	 25QANVFWEhooljEbMkzV13/iy8Z6shvjs7CvNhcZJlrJxdvIHe4RneT6QrbFlCkvfk
	 GQZz9CfP21qtuCdrDIWPNcKtYmSa7pBd4rP8Q0qw/pqgdDxSxZ7jvBruANPx5Gw/hc
	 o7GW9vg6EcBB1aEdE2V9HaDlcoVtEWhciGlBevjBGc8k2ErHw3p9buyg89saszq18D
	 cE86nHE1DvYWHape/WSaDVNr598RkDtClUjaFbC3tIfCwz5BcolT+jb6GOpH7Z5SW9
	 UmhTM/2Ri/oTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C22CEBF76
	for <ddprobe@lists.linux.dev>; Fri, 27 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172741715359.10845.9310329377728418245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a02d20b9ad780ad52cc331a18f5d8c963f6bd44df1f2d30354c6c02e855bc8f
Date: Fri, 27 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727417153
