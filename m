Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2188D2264CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777005454; cv=none; b=HXMYN9Wl6ESEL7JNKcCsIY5WXcawwFJI+HzSsI/bygZxrg7H39ebXPOdoCX26Kt0RG+X1KnWXDk0uAjY6P+7bAbFrtKKFaDXQNB7joLiXWLSupgqL8SqFweU3tPXy8YStA6YKLtxDvSybo1gm6+vkMX+MSbMIcnGkQ0WyxsjqrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777005454; c=relaxed/simple;
	bh=t3PbF/lXF/asunZJLL7/rkE9LKoU8vVxFju09T4Xmyw=;
	h=To:Subject:From:Message-Id:Date; b=I91RO0Lvmj0IZdcNROGOpZKaQqHiMEszehu52EIk6hsI061CbrL3RZv04ur6VWjPy3cak1wYgfTVCRc0aOsmbcksvuCCufdI4l0lXHtJJisuz6HjTWpvqLnPaV30hQHKNFR+YccbNdBCsDiF3NXegb0RXkLWypQZSLMUCf5rg2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXpjIbkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXpjIbkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE86C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777005453;
	bh=t3PbF/lXF/asunZJLL7/rkE9LKoU8vVxFju09T4Xmyw=;
	h=To:Subject:From:Date:From;
	b=sXpjIbkfKRM3Y/6HiBE4mNtdpofe6B9yg0ZV+2ycOzSDqLynGxNPjZHLJh9H+Lp0R
	 tnCC47fx2gd+qByptxd3m0Jn4lT+0POJk74fcoLxpopdyK77EMr/JCCX75wBEvC+Vq
	 WmXXbuOnABTrehffpD+0DIAG/oY2lpUQrKLj7uFBdC5Z60mjwO199u2atAA/F4+OCO
	 KoLm7A+OOGPLtAMkdVxESeyUkaEhqf3dL4HKAcrEPOnMiovf5i4M6YdS+TdTbKh+cc
	 Op4xh98JJ+FthmYrk+qdD/jqKD0LHyDAmQuVbiCH1sHftJljyeNXITHkIrWaQtmzqR
	 QYdVHgwucnpFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA51DFB44A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700545368.17001.15006589648447891828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcad62190268378014c968cad18ad103aa9f1bc7609b4cf0ab48afaab34fe6d7
Date: Fri, 24 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777005453
