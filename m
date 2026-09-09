Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC314086A
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788912634; cv=none; b=HUymSk2NSaMHiwFS6mXzdGXWKEtYpSwqmHBmRIdvWzsMDr4KHAJgtUfLSKa9s17bbV4aTwL7th6U0Ij31WPXAhF8T3M6crewhNnxo/R8aKwNjqnj5/ukan1JVioW2PUCHsXq33H7D+Z/KZgcRRjQQ7SpkjVox9vhfp6sxIvRm6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788912634; c=relaxed/simple;
	bh=aLnazS7VuQRQb2jMNd+MH7/beomRzV4CNAdFPPV0sOQ=;
	h=To:Subject:From:Message-Id:Date; b=raiZqj67zyZZWFokq5hiCC9lxmX7CZkXe7m0Gvy7ll/O1lDLD/jaMsOtIWBNV8f11QLPJmXV6c3sNRVeNhhC3yzEWMbmThJ1uH3yz5TnyEyMp/Akr0Eo/2aFM+m15c+r9y3CW9F25OUGXF6jHJb+hv2XiYup27FK+c4pfZgOp94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VIFxqDd2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VIFxqDd2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61AEC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788912633;
	bh=aLnazS7VuQRQb2jMNd+MH7/beomRzV4CNAdFPPV0sOQ=;
	h=To:Subject:From:Date:From;
	b=VIFxqDd2aBW1bZ0pUYOZGUWAJ/3yGgaWiS0TVdvJOM3vHmAUjAEFskoWxJ3XW/cWj
	 UOBX3s8+JN2KUx4YBnuKqhlD+w3CLhuBZS6l8gB+Wt23FCWw+Krw0yINiF8snfrM03
	 gQAf3i1LtRowADNCubzGibDU8zIjj0nPVj5b1Jg27yIWazvNXBtLnnmVNrOO86ldPV
	 RisZtCOPF/qW5B01TK+1PlwarPYwJAOEp3Cmnty+U2qP8ZHf/DsWFj4Oa/kpyVOlNZ
	 JhN1Y5Mi11oRS8OpwBpVGimOIrk6hKi7deEieLZ6VyxfxQJetuH7cwDdhH224SsvO6
	 s88obGqIUBucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFAE0C79FA1
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178891263370.2128.4296668166149221334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6834efdcc37e0120b049e5ff9f87f1dcec0f82c017ffbae022f45c8392bfd788
Date: Wed, 09 Sep 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788912633
