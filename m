Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B88713AD03
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733672154; cv=none; b=SsLu3mE21DLNU8AokGIJgy9A08uidXzPQ/hRujFu7i9FOh8td3RR/5M7i/FkupmDcl++pp0YTDhHvmbtr5PJ9SNWnh4uatv8Ow6RBdpf57LIZyGXj+fvzO6UUrB4dXM+D1JYBcWnm7hfquMz1ezG8bT2x/UIS5zt7tyIQLh6T4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733672154; c=relaxed/simple;
	bh=xEvKnJcTNTCIMYCFte72nApw7VNY21xMX+GbSg8cXIM=;
	h=To:Subject:From:Message-Id:Date; b=LXAjymEjXLrReZG3ddhb4nf2BNrl/RievHjoVxvf7cSV952hEjQni/urTxEOfFRId9ITLQ3CQbhcdOcv77Wl4zG+UhynmDMvy5UGA9Z6+tGCQ6/yxHv6jFCIefHDh01XAr4uxzEJ7YDX8aqk7zrCTzDGOtdDSFbnuAUa7zOxQ8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fskTWL9F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fskTWL9F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12DEC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733672153;
	bh=xEvKnJcTNTCIMYCFte72nApw7VNY21xMX+GbSg8cXIM=;
	h=To:Subject:From:Date:From;
	b=fskTWL9FrM3ISnCnYaww0lWuhZXth79ALd58WUyutZoPiKYXUoq25r4sBSvI9WjLX
	 73wp99w7Wg1x1B1H5Tqp5SX9JgJXvT2kypJK9v3KsEcbv1OTjsTR8A2Pp1kHuIYUkS
	 wmBzkm/PjJcco54QTzMTajHTozeLMMJXR02cX9WS67LRk+lub8boYwtBc4VAKr/Mri
	 U4SXCnwH94DCb8ChNf06soKdqxkL8Ki20UyVcCM9pyInBQR9ciGt+uWpnhRG9BwVih
	 9d2YFEZzz/YbxK4OtDemoQPN69JV9h0dzZU4iutm6rZRHzpYvWalznq+hixJawj7fY
	 XHQpl+L24coBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96914E77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173367215359.20328.2421384462989689237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98d3abefaa21725ba67739a1058e93be110e41be44830c9fe3266ab6e44d5c25
Date: Sun, 08 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733672153
