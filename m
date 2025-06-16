Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AD714D29B
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750106394; cv=none; b=usi2WQr0Raw8oMkcEvAQIxiCcVsLrHXwt37O43jXN6iZAo47qUSBOjCvNPwoVh6Ln4CzFbaEr/burLuGipfNp7gwKq4ApXSYuZCmZy1fdWISZtSiHR5VD5lwRzA6/PD1QAz5VEeCwmYS+EaC1GyQ15fdZkaDXzjdfZtUKzj2IBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750106394; c=relaxed/simple;
	bh=N/gfK/PWxEQFdbnvLthMLRGWr/1TI3r/IE8GUAjRCKQ=;
	h=To:Subject:From:Message-Id:Date; b=bQmU/ZtnLJF4iWvTDLCosnUV/x4ExBVevdSQAvIsDfdzA8n1IefeUyN8FzVzLkOmFxsjhQMWoNK3lYZTbmi4Ic/RVNF9jiGtU/Axb7gLNpd8vcy9HSDZt6pxAvHCkbjVvz3qo7fNQwrAKYRc2iKixr/oLMq0cPqk7DfnNtc5AvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRd1kBtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRd1kBtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67C8C4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750106393;
	bh=N/gfK/PWxEQFdbnvLthMLRGWr/1TI3r/IE8GUAjRCKQ=;
	h=To:Subject:From:Date:From;
	b=lRd1kBtQiPU+8ZOwNUaqXxLB66xXQGiif1f+0pzmalgefvKIJj9cAIt8xmzFKt6l+
	 UgtId4U+YuPWWRAVYFgoEEuHCoF3g/5CyaX8NtzIwsO4a2mltyAVPNYDPaLRGGKDU4
	 WBpF3FSHAB5KJMTwNbZDFJBMTpR62MoUVzhTviWUjsOpjtjBWVW8vsEB1R3TAp1vIt
	 QK000C0D3a0C9n79jX6erWMeTkgMYqq8+A0D5JM9UWypKlv3BxXW0GPXNwj0ilxtoI
	 zVtHxTm/TwgEJVunvDtmEhBpnQyd54dy02kEM0gXdq6kr+JdEblL+bWY1q/TinVsHb
	 k98o9SqHsabew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA8DC71159
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175010639358.8838.1729861344918149517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54a2ee8df0c2eb629fd42d932f1570ca294fbac87d5a5e32ef98c41f17555e6c
Date: Mon, 16 Jun 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750106393
