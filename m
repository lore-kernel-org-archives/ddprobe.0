Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233F9140E5F
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730611554; cv=none; b=IeILjfV7JCdKVTOnHuBk1dtdnv+yOGChLRn53KueqOtc6w8E1FwmQy7ixf/x2UYCQHfkHo9/txFnFkA+V2fQl+nSlhWdXPiSLyUDbRPHaoTw+sGopWItps4OF7yPktivldmfG8pp4PkIEwEP+pqTCS1fQoqgB7tICjtn2twzKQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730611554; c=relaxed/simple;
	bh=zx+haxS/sbC7yvJXQfjqMTOkAsoAWeLf3/9jEk4Pgew=;
	h=To:Subject:From:Message-Id:Date; b=AeHX2hijyowAkK3IP0+W2pdgNCJUR8Fo7BGI3kegUphbeoNyA0SVT0IvD305zw4/49UrYu39cIOY6YGE6+68i8jD2ZPrBRlmzckK3FJbzJJ3FGbLqg+1cS0cCl6eww7XxBTbFecCZM9waA3X2rq8SOlx/2UemiXVeaBWw23Un44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n+mKxCs/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n+mKxCs/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADF1CC4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730611553;
	bh=zx+haxS/sbC7yvJXQfjqMTOkAsoAWeLf3/9jEk4Pgew=;
	h=To:Subject:From:Date:From;
	b=n+mKxCs/rAUkHxhzZc96FHFVi9x73VtuNBuw7pB7kszfF0zuokqloxic805pPcUYT
	 T4YsXYyTXZakMI6wKJfESBwjkY19+bGHQwquOwQYcabPzSECIlVYaY2M0CsbA8Nxsc
	 fYh6nxVExS/Ed2nFUPn+5Gd+dtwoa7MgQ+KQ9FJoL/ONsgjHgSZr+lolWOzCqPEvLh
	 hRn7b9htRtBGVZOUWDojKbfisK9IcA9C5Z9WQaNkrKLmxm1oypBBmXcwg/KhR+xdPv
	 /oQCz47spZyERNHEI35SZm7CFjmKWTVQ0ewPTjhxd9J+S9b2Beack4OrJFfSDmJvHz
	 6ihhPrVYEwygQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EEAE67806
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173061155359.27982.14302324671227521047.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8744e64efe8b1d26721c9c17fe73d2a276d43af41397e518b65f97dc3fd719
Date: Sun, 03 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730611553
