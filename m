Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B6F27816C
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782912514; cv=none; b=ccbjYpj/xysFhVbdbZaWk+I6D7oioedefMnlrtBFt8Q4iWBmNqcFC/v74F7ElAEPeI7Y0vKp13eh0oM0Hu4aCjZkFV8wfhE/fOE3XIo4FL75Ibt7sVjTso20rF2AHbWD9StIQ6f3vxarGX8rVMfOKX1wpTh0OVPA3b5ysy0ahMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782912514; c=relaxed/simple;
	bh=TSvL2DHJM31lpXquoWq6UGD7qJUIY7NnRFRaVxffj3c=;
	h=To:Subject:From:Message-Id:Date; b=Io35OnrGoNLRetmSZeMYK+5FqpAZ3p1FgLbm19Y3TgtNUYVHicTlbGAbuosXC2Bgk/X1dDQZKITkZt311JQXf1z6vlN1ZS+7xhZXg7mYM81nr4mJ3JT1n82E1o2dgzIfdzvR0/4H/hgBhj5+VV0vq/TR5goyG1+D5YcywXLYp9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pEIxziDd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pEIxziDd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B13C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782912513;
	bh=TSvL2DHJM31lpXquoWq6UGD7qJUIY7NnRFRaVxffj3c=;
	h=To:Subject:From:Date:From;
	b=pEIxziDdJOkoo/GgsyOfw5ts3FlE98SBNpguux95jP2IWPc9/wfIh+rztjThXbyjy
	 fd6VH1yuunE8B4GKuAicZlD5/rQJtqE/GGz+nCVbGq4udM1/03eAq8mSHt3EMD3pc0
	 e18SpB2X0PDdxY32LHSuoE1Gv2bq15tpK6yhF1kNy4mT8wQ0NXu3Fw1cEiTOyZaNKl
	 /gw1Aa4wVDVZBnMOXtPvyrVhD3sVL6uq4dB75KVfpJFO6Tchs1Zx1TJK/YkJ52CWe2
	 JBiFUEMS1/0HVmdVsRQPzpA2H/dE56sEwWD0BydYpKUAivdXS2tQ8aJ7PZ/EUBb2KE
	 RcicxB5CQ0x+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED92C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178291251370.15244.13045371870971975224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9e7ba2dff4c7300bb0c7c8badf1d0790854d7c49eae76d8be4825ca105c938
Date: Wed, 01 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782912513
