Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E9F17BA5
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751864394; cv=none; b=UIBVZbSmxvBHqffAMsM6YqqDh6X9vR2M5nrC0lD7Cb6RiSqIdogBaAnceLPS44hkvEwJ20L1ArygpDzQ46kWQ+NE9lecspqFf7jYRHKZNXcpSJS60U23KnxosDTnzDXWjZwfN0oiaIUrADN5JmjyNpl4xTyJX8gFykiEnwdfieI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751864394; c=relaxed/simple;
	bh=WEE1cd6kohrygeUDRUPIpq68PjQusSPbbjZAssqc/I8=;
	h=To:Subject:From:Message-Id:Date; b=C932ZMhP6ESQfGpshQUC8TVCS4eIVfXFj0e1G8T7MxFYP5xabJGscJ/cuS445eD7g8SFPRHKsIU4uvGbwqHfFOTDMKLy15sINqCXTo/kH4RF3x/++3q8dxBhCFnAFF+hN9+9QWU58EplMLMW4tVmGhKZ9hzAdayQg3610kxv+1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cq10kBlH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cq10kBlH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7105C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751864393;
	bh=WEE1cd6kohrygeUDRUPIpq68PjQusSPbbjZAssqc/I8=;
	h=To:Subject:From:Date:From;
	b=Cq10kBlHwdne1uBialeI/ED80Quw7AdtcAijRHzbFBZyPxRV2iDhSt3Dzm91hgYcE
	 8HtDleTI5x3KAqnmEfQI7LqQv5S/gF/+/baJM4ygnRLXM5L38bTcF6Q4o3o9XWs7/z
	 keOe4oHlTXwZgyeK/e5Sj+0nyF3xUcCFpb8mvcuCzL+3KKrsliqsy2mg8BsFbpz4BH
	 65WW28KdMO0H0jjRI5NCknppx5yzpeOgyozB1k4jojuBksrGNSZvPUtk2+VPkFX4BQ
	 pCKRLtogfW1M4OygEz+kt+yVIajR8cgXV2NckoW+iNYpC3TGB2mFVjLg8CkjgnLLEk
	 PWOwGgamCk+vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED7EC8303C
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175186439357.23723.8278060103460172914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e544fdc23f4cbbbc8ef517b6d693658ea6a7d62364a860cce91bb83d29659bb3
Date: Mon, 07 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751864393
