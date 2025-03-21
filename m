Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FC611D54CF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742585994; cv=none; b=vEE8di+P0UMTBajwvMDL5b7N3bwdvooUfamODh7w0cz8CyGrVXgvNYgDp43h9fgKyOgETXvsKBnBIpov+H7OSNlzGrKLcd1qQoaINdtU3le+bkbawALZ4gxYyykPJJybw2aLO2t4+tITOQs302QRIyr0LwtRbpzxz5fPCBuTOCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742585994; c=relaxed/simple;
	bh=chKoeX6Fu43A7hPzkE5+Kc3Lc/lh3FG6y8onOySyNrI=;
	h=To:Subject:From:Message-Id:Date; b=B/MTffRJyXqTTHY66fFcBP69PEN7cITLEAHhsC47daGV8uBY8rIHguYl+TWtKfefrs19ZHlHTRRo7KxUYV812Xm+3bHoqK1wixN+iFa4jrXVPzdL16UDKiXrxduQ7F4wtbpwukuvV0LMK9ZrBhIKyDfufReqKi7rPrCcft7GDYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SDmGVT+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SDmGVT+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D489FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742585993;
	bh=chKoeX6Fu43A7hPzkE5+Kc3Lc/lh3FG6y8onOySyNrI=;
	h=To:Subject:From:Date:From;
	b=SDmGVT+2h+12Ua5ATVSCbYZO2ehVFnVbPKnIf5AQUIZXCEIBOOzz5w24IHarQ8Rdu
	 YL2RZVz17C1xUldcDhsxniDKJOXn353Tr7Gg67ml7CItGfIkl6IbxtpVrYNMFRdYH5
	 1CPzlpn0h2mrqtL0mJ7rpbcMDcKYUStihH28w46bYu5NU2S8EsmkgEco4LNw2mq488
	 xBxXyjqLDfdOtXQhFnxWsZbBhETswq/bTDyngEE450khuccnjOsjtyjs/PoKXAbTFq
	 tdko9wONSYwFUhLUj9DoonCjfhS77tv87VrB87w/f0F2dDxu9f1eJgeBnPTXM3ruFa
	 Rb1yaOgSfhqPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1D93C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 19:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174258599373.31195.5517777641235176237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 243d12d3a79a6b5f5c0fbd500eddb2b4fdcbf225e01acbd400561c3615b21339
Date: Fri, 21 Mar 2025 19:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742585993
