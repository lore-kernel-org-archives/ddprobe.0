Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2185B1A83FB
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753505394; cv=none; b=iTaR0qJrCKjAe1HwR2AO+y9IYWOhuBtcLoSQfcJQRy2cGsWqWHlcAb/SLJ8sgUDMV//LvAh9KGRG9CxXemXBd8/OWlEF4G3uNY1DhzFvxHA4A/onj6GEuOIZqaH0F0/SA1+PES06T8JPXCIus95Kc8V7c9Sh62mEjS1Vj8/PwQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753505394; c=relaxed/simple;
	bh=vIZ3jB/pUcvp7EicFw/ZTWHLdxuMlXY5mIpCKPvLA3Q=;
	h=To:Subject:From:Message-Id:Date; b=Iy20ClensfZSuCbd8seI6cu60+nkUbeC6ig/SC1CqVlVhTIRG32YrRKyq8WTakFD2S/5oZvDuJhzKh74KfQW0LVO9kGVTET8+25/r9vJSxBX20wIQIZRidzcFU9nihT2ZTHI6YEZULFJGGcSx9KYPAnSz5ZqflET3XJ8SDRKJVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bQrvj7+9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bQrvj7+9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FE8C4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753505393;
	bh=vIZ3jB/pUcvp7EicFw/ZTWHLdxuMlXY5mIpCKPvLA3Q=;
	h=To:Subject:From:Date:From;
	b=bQrvj7+9AT/+MN+R+po/16MJQ/Ie8fJlBZH4iehmVsJuFYVe0Ilo4l+suV+1BifQS
	 3DPkyNy4VSmTa8x8zTD+wEBXEj/6rFv6c1+0kb8xmhzqvwA8FaxSjZtUrAcjzPukxW
	 AT76Rcm/XPzAuK11xENyxE+KHXJAowroM1iwWaWYOUL8vslT50b+YSTt5yYwQaM1CP
	 o1dq2fxvxcB8daQfmF5Rte+B41Lo/KDkS8r1gC6hQSF3pVAlZlAEftRFT2g5B+5KJV
	 zRgIHvsAGuNO56jryolFELUDREMlllDTCK8KY1uC7dkuYdTA+351Yz02xQUYfTZ+sL
	 sE8saEKVnZoEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F403C87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175350539357.25261.18150426391302538214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab57771c8720a2ed0cec74bc9ff9d2a4e691c045187391e83da3ba100d33de3
Date: Sat, 26 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753505393
