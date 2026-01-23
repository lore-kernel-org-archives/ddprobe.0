Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07230367F4B
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769165034; cv=none; b=R/kSXUNWgALFWj9MkilVk3vOBmpu50W4xJnvzrZLLwctnCN2AongVgVy+1UCR/ZeNVd2pWoqot1aDmGBVTOAPT6ImcW9+V6UfLPLdtgc2ABYk+S8AxAywRuFDOBJhoO43wsZsmRfR0Oj+NZllsM0pQer63z9vxTsCi1TG1L5yT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769165034; c=relaxed/simple;
	bh=0x30r+BGnQwmiTz9bv6h4mAF8SF7geex9KWZ4CW2ZL8=;
	h=To:Subject:From:Message-Id:Date; b=OAkQI5F8Zei39FdfKE/7DceqNAN0VYVy6eDA/txsPV4KqUclZT6/cmju1RG5eGxukjDjcknKbMjQe3rIqR94XHsW46cNx/TfGS8OmRguIljnAzdDcB+yxw6O9oDkXztQsTvvyJQNARsDrDPXJw5G07duFasEioYk4CJcr7p9I/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lADCLQsJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lADCLQsJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFA3C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769165033;
	bh=0x30r+BGnQwmiTz9bv6h4mAF8SF7geex9KWZ4CW2ZL8=;
	h=To:Subject:From:Date:From;
	b=lADCLQsJeKabHjwTYAz9FyafqDYWemotuaxHGsuPe+nq0NYhXMy5mSXa2NpaceaAx
	 8cUCiV1s8s26ej4uzxaTae5e8//c09hMhvgIel48XN0xK6Sgx+JK6Ti9AxGGBlB9u7
	 whzZdqq7iu/bcisQwbVPw9WxbQJ52A/lv72xQVI03+K8aAEXgAyqhA7fV6V86a909w
	 hA+m6PAvSYQzXwnUJiSLKDysctBQACMoANhzLY4VM+JoEe9r2gC+rOqYC6GUUnq9JS
	 mDNwxo/yksHpPdi4wqnWuX8kElhJbQyViSBEItfKrRjUZA9eTYYy4Jd7xdO7jarS+e
	 Pu+0TuiGdAE2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047DD72371
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176916503358.9605.8161856137104279164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5b8eb359426179ddfd1eb344d7629b34d9c447331a0b61c8be3b1d115a2d1bf
Date: Fri, 23 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769165033
