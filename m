Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028AC54654
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772775294; cv=none; b=oxHx7xKjWvkLgafZZuNkoO9+UgEmEwy6dMAOYTuOmXCm0lBlwyxUa6D0DE9O8kNJQwZ+qelIje4FFUZeOM6UjHEcuxFGLcp0CeUDosX2P6w1dY+vTGwlIb5U/LDAZRAt/S7K6OCUx3pipOlv2i1HMudaDJawpGSGdte7zviJSCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772775294; c=relaxed/simple;
	bh=l+dLSNWjsv+YW4cEo1zLpM5vXZEf0sB84I9WwKStwo0=;
	h=To:Subject:From:Message-Id:Date; b=Ju1RRDHvaCVExYxPUVprn0b1utGcgsFp1+oaox3jfdV7nB6d4BXlmYB4ez9YTjHR40Ji1cUenZvKIntEEoQLYaQ+5gw8zB6zvkI9giuuGL6tIp6e7fdnxdwkkfOkyZopofjKiEkmVfJyuDoV4R7wJuwJEIPlVillQw6/COIrBDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c6QW8inT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c6QW8inT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44FFC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772775293;
	bh=l+dLSNWjsv+YW4cEo1zLpM5vXZEf0sB84I9WwKStwo0=;
	h=To:Subject:From:Date:From;
	b=c6QW8inTBL4DOVTxeVC40MOVcj0nIGrpgiubh6EZtHXGrI2z8YNH6zT4xCafKmrTZ
	 nB1q/irL1VuB2Hn8WZbpwa63ihpwb1/xt2P8LTKFff899PkkE5kjWnmOIc0g9+XzWq
	 ZrS7dpM4IUH50gmdLzuWz85AXDBJZTEKKLcv12r+ZvSz3EDGu3zvIs8evFOjLWPz9U
	 KbcE0V9Dt9D8+E9C0lR3hcgrKbmKA9WWKLvKjt9XoRgZCJVkqtLw/t32Oa08MhhpF7
	 GieTNSALQDTosBh1BnPG3g/WH6PN897TJh5X15MtPqd68zcqn/zVJe/xjzvJ+dKWnO
	 RgNvvEfyNdwpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A46F513F4
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277529358.18684.17731739823531430332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3457984c5513ee3439edbcc0e3759f4203622d150a94785b5e6b61d027e2ab3
Date: Fri, 06 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772775293
