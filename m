Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 418781C2AA
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:04:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771373094; cv=none; b=PEBCfkVNqrY6QFPJ3JqARcDvKAuCVo+oJ3kTTbuGGr7aYabV4nTCNMJZ1pfk+mGlN3Vovj7+cxl+KWReD3UElneyR7FR/8aUKvBCB6xOHL6ex0YIwaiqElKV9dPgNRbmcZ0RpnPIxEMx7PoV9hGpjdezSfKb4DwYrLtvm6Rh9OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771373094; c=relaxed/simple;
	bh=IoXuy1C3EGMAQVG7Vg3zEkyEtiTlbIl2rsLEIg8llyY=;
	h=To:Subject:From:Message-Id:Date; b=kZLL36GdLMMeirutbHS4QVLZ5MteYSQEvpQTr8FkiUqwViSGQqfYnxAnQHrZT8E59tf4855dROfKDMprAuLkUsmV4v0sUcXPDGvWQv0+tMg9ExnSWi19Nqg0j47SF1KP+BFtJ71JJZdu48TmREecxi4kXpxjZZIh7oFT8XLjKEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K9GlSoBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K9GlSoBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C2BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771373093;
	bh=IoXuy1C3EGMAQVG7Vg3zEkyEtiTlbIl2rsLEIg8llyY=;
	h=To:Subject:From:Date:From;
	b=K9GlSoBGJrby82pdZr7nPqeoCybLOMBfnBZpKPcvd0OJWcpOUDq0gTjJWOdWdjUYn
	 PmHLAybAmOJBq6z8O5XCZK4YQqdFyGAjpMAfh6rOEYONov+E1xq7ePxbrJmpkXEhDU
	 76SZ9P006JT/kVvLGiS14bQtPe3QADPCpua72WG8xj2+yKAd8kZ9/Kny9yaWa1H0wZ
	 Or9dQDCQX0DPUaMBdKsxUCZM287Bw9POdPnYipfAGJpsAl67H/YI8R8Lov2Q3004lt
	 sJ2fEbErasznRLoOMvM71cRhN1SW09b2Qw5EUdopPfwg8Qz7v9QIo3AqIdVGb7sJQM
	 lrlHnTCE8uNZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBF12E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177137309364.27048.12254995065151060746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5fd37b46e3f8ce73c3fdd3ff941740f224ced77f32f8094243b2f6dc4531a59
Date: Wed, 18 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771373093
