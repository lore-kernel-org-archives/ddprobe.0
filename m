Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C86A63D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720671443; cv=none; b=BqYpe2buVPzLJM/wpppkueNX5cg9Sc6xqBJ/NK9EUU9qcbaC5g5S/OHOX/fx8Q9tTjOzom/etbd01CuIEToPngPf4bdLNpk8hcQftzt4hJar8hRosM7gxTqPy0C7XatvGg5vrxHl6rLAWDetEMd08ccrvp+P/d8RPcTUqmBNQV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720671443; c=relaxed/simple;
	bh=7xJJSLv1h0DcIZck91IOgU2gzkpzZLOxIe2XEmcFHLI=;
	h=To:Subject:From:Message-Id:Date; b=HoBbh+nJ9NCPFTaj4DpWeuETrAcLfOLa20csK1FjAU7+eGBwa59OpzrBxEjUhfbpgkrX+rKuPcKJM/y1WR20jwDiGcUW9++6I3rsNpS8NTaN0uQ7EVXYVTGhTfDFvwHLXSuTdcFI5LnM5Tq3j8o7yDxBC58HAwbOR+vMiYeqAFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AeW4AF5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AeW4AF5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF343C116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720671442;
	bh=7xJJSLv1h0DcIZck91IOgU2gzkpzZLOxIe2XEmcFHLI=;
	h=To:Subject:From:Date:From;
	b=AeW4AF5OHq3hccYc1woAUHn+G/BrTzaXIkZmLNh1vvVPRTvGUy6t291sPn23f6AsO
	 OQbsLY6cgxuqLM3FywOs75u+7jqjUh2FydTWJRqWPwtZhfM6UduW6V62UmkEg148uY
	 8RjiYRHegtBY1FTKK7Pe+dL+1TiBNGdfzW5lx2pJTfeWrBxj1x39cRmwC557H8iHCb
	 XXik/muhY1eNYJEaDqraCJ79QMxlktWJ2sHF58wjj4VPnVAgAIzkNyrmtkC1bVIPVz
	 MgIuBAPEOp6QT94hVAOd4ET1j4twNNBGOvfmEWBvVbSLUZzS8FxthL7EQ8V8h5ploH
	 V1nrXcAfuYAnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78AFC3271E
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 04:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172067144279.21300.7723178828579475418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8eb3e32e3d660685fec16ffc1abce3c959f886c166eaad42c0750f9f8679b84
Date: Thu, 11 Jul 2024 04:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720671442
