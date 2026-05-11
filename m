Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D3B919E839
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778470834; cv=none; b=oaKWECyqJbRpwUhH1uaJu7d6MyCPmErV8c1ucttvI4du24A71gDmDz3fb2iG0syjA3i60i8Xeg/Y2PJu9S8+sMGTYMeJi3FI2cdNu1Yd7xL02/hH1NoUfMhnk4LdIDPjE8Hxi0E8E7AwgEeDTvfRQs9vtYbSoqETSb7CGvgzXfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778470834; c=relaxed/simple;
	bh=cdVdr6WVnJlAB6SpdDHlNQHjgJTnB09ZdvsxkCCqago=;
	h=To:Subject:From:Message-Id:Date; b=cpIBUJW6az7bSw73/L3cIHzJGxj7XTtN1fLuDSriqCU/P75DSCWmtoSlcAz7fNux3fw3TH7E+C27OyIvNe45iDoc8NOGDjwWTAt7zCLSYWKQDkbQ/70CCGxdkS+vVY9cA3n6ayE5Gt8C5lpbaW6pDmrk7w1B12u9/OjzuEhlcBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gF/zmwKy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gF/zmwKy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2620C2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778470833;
	bh=cdVdr6WVnJlAB6SpdDHlNQHjgJTnB09ZdvsxkCCqago=;
	h=To:Subject:From:Date:From;
	b=gF/zmwKyvX31Nh8kE+xFVCeJBwEMSIEtUfRqwvAFRcdlIbVJo+R/b+mX/WZWuOp1C
	 cAe3AzGPtIQAEDSNCSozxOKS5BTi0tDvu4W3NcQhsJCE1n0i3Yh5tld855VzjSxOJg
	 UtqwDfP//KAdqOGpb/lAGxbaBu5P1IRiCT2FGc5X2XfuNRXz6hrnP/EOUxA2xs7bn6
	 YNSm4OSM+6GEJ1gXtZnZN13NEFVLjFbuPzx1HhqxqeebXi6X3iTbDW4+koxkxALU4r
	 6aK3I0zo8koMBl8dvULNZ5ABtrUHLXN9P9PPAaAH9yoiRw2D70eCFbayFgaKGO3ZeK
	 5XIB8NLgcirhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B006ACD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847083371.13821.15904705258761757528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f77111e34a50d62536fddec347281088d0a6ab15b635d2d27e4d1d1141e6edfd
Date: Mon, 11 May 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778470833
