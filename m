Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E12E21D3EE
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754650194; cv=none; b=bKEETCP4du709ck8bb8Xt0SRGuJu8+IqajcgUOSzlhwTXS6ZqNjz/vjRiirFy7b8FULzbl1eeGFTC8+cbWjkRYraGiYTBWb7oC2qVDmLv67tXkVOutJeWnEQZmdngoAYfpnnir9kF/f4qnGThN3xbEm12JAy4+okstjMgy7j6ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754650194; c=relaxed/simple;
	bh=vZidS6Ih2OgTL00xh1V4wbjyoOTbl3jIcn97sQ8ZRps=;
	h=To:Subject:From:Message-Id:Date; b=CXigu3ivVPGznuLjKkjv+1frMKM7uwXdkQNnj39D9Krf5X7HcTluPajuF2Iq+4c5Tiz59XAEcfge5uZcsk4krMR2KhiyX17U/YctYEgIjYs0Dl57sa7VnKAU5JpxvI4Q2YeC/pCZDDKDa3LqZ6b/GIHMkbzYoV1Va/+Htpgnhgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klkFByIU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klkFByIU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18ADC4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754650193;
	bh=vZidS6Ih2OgTL00xh1V4wbjyoOTbl3jIcn97sQ8ZRps=;
	h=To:Subject:From:Date:From;
	b=klkFByIU+dOVfUNSq174xkkPJ8KzMV6A/AzWO0TVc6sOfKUEwZWObC4g0QqV4+82A
	 J3bwPMglm//HHXEVqD4T6vOWe58xtKJPFF6x4FR0xKUQB4jjVmxm1+OUdUweCT6a7T
	 N2M2b+Dxd6WtgbkXqqB1I1KhRRy/OXl7pg8ip+JmEbygUDI7Z3C5m7z94v5OJngCmv
	 0loM9bKlRzsI3RLCZ4mZLgFK3jILJ/NRQ3WXG1wh/16SM9RaxbmKD3WfxWp+dZZjBk
	 WfSsRE7WCTNtCVpprlUIloIRlT7kGKAEIM7lPGIT/ppP0M1B9FVMmER6jQImJ7x0tE
	 EiqFmepL0a0zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB5FC87FD2
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175465019357.14780.12125363000544739085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e411c64b7cdf89f232766040ccaddfba6b6a3cf017da64efb10ee282a44badc
Date: Fri, 08 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754650193
