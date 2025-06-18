Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1ADB1EF389
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750278593; cv=none; b=sIlRPGAzzl32OwYjlFz9jqBgPIFsOkhQaizMkXj6TdtH1hDgql7OgHOJ5Jw0MMR8/Kks9Vs1m3jGbNXdaxhzJIzhGhWasfNqtblv7hQ5Nm0E0HhJpZpB5NrjXjqZIyOBogldp24mc8iZ183nWfgw/NQsOPwnFbX+oZJ1xQiNZOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750278593; c=relaxed/simple;
	bh=eBzbFthqGlz7Cnqecg4ABz3LRzR0hVqR6c86IbNcvy4=;
	h=To:Subject:From:Message-Id:Date; b=H5KJvy21yzeAlBB6x5YVyTbyqIEI82rv9U/zWoRTw5BgGMCIKbsFMPUS6whhovgi6oheTd2NVA1jUYW4gKD4j52wmxyDYWDQQRR5jyd544NNl/NXAKGW65v5vQYhPZhlnEdqoDCGGzTCBKRgEaMiV7zWV6kkPtEUvHWlPg4ZeJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HM+Z1+8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HM+Z1+8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C30C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750278593;
	bh=eBzbFthqGlz7Cnqecg4ABz3LRzR0hVqR6c86IbNcvy4=;
	h=To:Subject:From:Date:From;
	b=HM+Z1+8W7tsa6vHi0Re529XpkcUWGwBtPhTtzouQW0RJXj1/SWE5yQ1lyY0+OgqxZ
	 F2GO2dWZ6YFVEKEBTkhaAWKMOjWdOvdhJdSCCO8UZBq+87YFwwH/2MzeC9djpPIyyx
	 uWtvGJRKe76z4Sfbk1cm+MnWESkEGOykKOWopux/ll0Mbh+Cw2mU8sphwhqr5fuCds
	 V9Ba2cYUFgd7CiSszhN5dBDat2mPAvgy7A6hahKtmwpeCE38ZlIZJUYgEZiCL8FT4e
	 VguKZzzfiQybRIFnqWkPc/SDxNXZU/ZgjVbCNbqSBDQ9pRzW2U20aeg0VjjIWdSY/3
	 4OHzpZ8RWaHlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924E2C71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175027859357.18754.6446503229358933127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b58ab291053d0e76d0b709296d7ec430b515945f65ff6a63b5849cb68bd0429
Date: Wed, 18 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750278593
