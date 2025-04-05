Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344517E0E4
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743829194; cv=none; b=mNVbKmNlF4mE33s343GjcXulwH4kgNcI0jT40ebD1SMVuFQkD7NWmfWKT4WHgm/1mCx3q8wGeuN1NVR2s5b+jcQs7EvDQqAQKruW3GugOVvPUWEPGXFQBiU7/gwUdIw6NvSIIySMQRuD26t7qfPweRIhJbXLJS+YV2niO+fp2Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743829194; c=relaxed/simple;
	bh=2zTdHkbFeiNdv7btGqVAHoB4vpdNEj/if6W5g1ZfFcM=;
	h=To:Subject:From:Message-Id:Date; b=TUNRi9v/qkZcb00BkrM1BJDmYHLMIr4IbZm1K5E0QU6o4+A/f9YLNGZRtN12OFycDLA1B+li8Ecgk4h+WHglNSy1TXqJCE1Ou0d1Mfir/BwtfQAsMpAUNMazPizaIIxYBfCdzvw9FoCJxtSBK6M8PVTTGgx0gPfc9DsAIMg3/e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mde4Y7pp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mde4Y7pp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7370C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743829193;
	bh=2zTdHkbFeiNdv7btGqVAHoB4vpdNEj/if6W5g1ZfFcM=;
	h=To:Subject:From:Date:From;
	b=mde4Y7ppnZbp5yghiVgzg5k7oaRHMkbIss8jxnKIRTTRme+dNdcg6TiatIM3Y3odd
	 WsUbLDHb90UkezxxW0w2vEz2/LJ55amAQMftum3Ocn6QALTC3I9+4iomi9piYi2+n1
	 2nE296oi/dxugE1c3sP0ys06fN9Yjux/KFQgDGM8f+GgzUMF3jox0PQnIruhUt9UDN
	 ByH93GfWcmA7OumDERIe1VAi1ck9WOatiPvOV5Gx1z4Q/lxqe2JUVDQhyp1Vi+PwvR
	 N+rvy8olq19CusPloHLdWwP+4UKfe580dFjb7GVGdSe8bmYJOHblTFOZNmgEhSM8k+
	 KJhN2jt2mUsow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98529C36010
	for <ddprobe@lists.linux.dev>; Sat,  5 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174382919359.29081.6242565102825302004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71fd1d88d6fbabc80c071dc570451d1a967f8de89e933fd7429129015d202353
Date: Sat, 05 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743829193
