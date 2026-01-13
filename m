Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 157F44315A
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768263234; cv=none; b=KUGqnt1ON7MelHzgHUeao8OxhGIE9QporWX6mUauCpySuW2N/UeA38rfAA8hVQKrxSCV+I86fhy5bH4VOmtgQxiCMB18xD7wFaU25hkJa1KSinhEwNyguCjsiauW+g0K+p8VCmpx7LIkuneurPCgiForHLzVtFRu5paRPDVIVvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768263234; c=relaxed/simple;
	bh=/J8H0B3ukRUW/A9aYh78c+YcRX+77NOS6siefhpS0+k=;
	h=To:Subject:From:Message-Id:Date; b=ajldNc2TrAtdbSYUGXUY0TTp7ZbjQMhN4lFIoNr0guII8p8NCwI3YFEprUn/NRqu3B3pI6ZGX05mCErIrY4K7k2FbW0XHwtXmtqghGO32Kl4ELN6N0Wd4613/RR7Wy64nu9Mo0w4lNkcer3zOkIfWiFu3L3tLbpZKkJ+pMcW5J4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpdnY2je; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpdnY2je"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7734C19421
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768263233;
	bh=/J8H0B3ukRUW/A9aYh78c+YcRX+77NOS6siefhpS0+k=;
	h=To:Subject:From:Date:From;
	b=dpdnY2jevS09XliRDwJv0H3TnxnDJDfTJKSWDoUt7uVaXyjBp6T480GpzIwtMFsC1
	 upejgIY6c/ZVHwy9OlOpPFXQjLt6PHNypm/fF3xxtk/NROpQ94oYSg/RI/I5L9ABoX
	 ckwhj3UTpfD+sR4CjI/Wvgm8hwJ2F9BtiBkcDWn+1vYlaoyE/opF0vN6NRZJSgtIdV
	 KM/lDqt3m9QoKi3Fz/oW2Rx8yRgVztHqx/pETqeKMx56QO99cdGr/7TxUCsJqmWdCz
	 UCnfOzALa4UNE7xwSE5jhBdPsZPHtkEpLn5ET3BAKMzAitF+BlWAN5PPUPIRz+zBWs
	 Z6X6XbCaGV2gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A57CF45D4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176826323358.9873.9184483118963923352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf160a0fb07bee299e7ff21a1928dcd7060ddb2775969801f0a49b0ae68bb4f
Date: Tue, 13 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768263233
