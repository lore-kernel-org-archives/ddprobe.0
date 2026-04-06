Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406D525776
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775462134; cv=none; b=aQAqjVHSzgGmxFwLtEf2Lu+1tzv74cXaPz75AkSip0FRyxWMhtkfuouuHwm/aJcZIbYavGR0JH1/Nu+3/T/BzjlKCfGEOI2RbWLSoM+MtRJ/TjB4uI+k/RRPqU3DmMw3Fd7HLE9yiSr0IqB3qu/NWcQRhcn5fYuf4CK8jMUZzFM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775462134; c=relaxed/simple;
	bh=lJJFlitMf7REI0NxcNVjwiGE4Q7fUd/pXTbQc9qk9f4=;
	h=To:Subject:From:Message-Id:Date; b=HbqbZboVPbMLNLWjOyiQN1J3AqMND7bpDSwHy5fyBAxBtUB1Vxe5J4y56vNbFj4mk1fgAmqFzeQK1eT8BD/Kt6w/+d7YSF27HauRIWuqKp8XlFv0qNXnCPr3KUG/JpGUoTY0U5tilE9HZRTF+MoL+wJR8F6d8S/HpXvVFW3Bjpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cWdFONrh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cWdFONrh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC512C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775462133;
	bh=lJJFlitMf7REI0NxcNVjwiGE4Q7fUd/pXTbQc9qk9f4=;
	h=To:Subject:From:Date:From;
	b=cWdFONrho768qBYjnIagSGg92+UjQM8XBqq5sUsDuxptems82diIeo5hICLp+DEbe
	 igiOHPYD0wtaCVSfQbw8+RpAq3dS7pHNRuZsj7E0TQDhherjXDDGDeXBBghZuYzsZB
	 yhIm1WuLOTDh1b2ELKP+g6M3SL8eoxMpdiZTtLhLyzSZyIprA5+CTwS9yBz5FwnmWV
	 XFwIe02fmAU+vrJGI3UsGGZHAa9DKQ92aP12o4yaSYiZDHr+WCWYm/lSNQSH0EHoK0
	 PNXRB3QYh7aQLsodpXFUlB5pqAi6GxWmYBgw6j4T3aDVR9ofljRxH5gdzxtvprgeV9
	 c6nwuPSDxzNxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B863EEF4EC2
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 07:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177546213374.10782.1522117035186339519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 902b85cef8fb2d27f69c67a866691547146fbefa337c4fef75e7f5a5eadce032
Date: Mon, 06 Apr 2026 07:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775462133
