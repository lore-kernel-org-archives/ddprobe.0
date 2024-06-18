Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70EB013AD3D
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718695763; cv=none; b=njbLP1AwAWEIOh6ZtF6GpCWPk47jL3DkPxwxG+06qnm7gJs298ENwMjp57BdpvJPM6nCbaMI7TetgDaPXVVQxpRtsDwOnBKHpW2xCwIzE9t7eRTvt+4pVg67b6YzjUaz6F/injWLLNKG3VhRWY/PhagJXdVNAmDGWM+6yP2f7qY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718695763; c=relaxed/simple;
	bh=TUtb0sWKHE1AlL7wvVZ3jtqZxMAvngswrl3arriD6nE=;
	h=To:Subject:From:Message-Id:Date; b=CJN4Kt9cclj4GjQ0J4DB8pinv7DE1JzdEugNUjXhVrmO8YIXdKsZi2dCObAg5NplBk3kRagq44j53/2zl2xe/0aqbbmoXCJYxnQQtqGnoX4Vwy3R+tgXrRrCbNiAClLSbMPQ4WKG47N/x5JPKXC5sfQl+rOtCUhHhbhn1WbOyuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLHUTlKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLHUTlKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08ED9C4AF1C
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:29:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718695763;
	bh=TUtb0sWKHE1AlL7wvVZ3jtqZxMAvngswrl3arriD6nE=;
	h=To:Subject:From:Date:From;
	b=jLHUTlKZeCwYnFVlfGUTCxQga8JUVQiBsuvtEL4Kd42wrfi/UJPDrd/TE93cLACJA
	 V3IuW3Q3HbzoxUAvoQwTVMRtgHj0r7sgZy6y5uEhBpdYmpVTl4Vs3i9gQhMsblY92h
	 ib3k96+fx5xTTnTmRJ70IKnIRt4swBStgKIFj+IWqtcdaPQaDmR3JnIRX9uQhEQ0bp
	 vyz6Joc4UMfUI7Tk/pavBfkPrMyXKlxN+9ImdtIqVB34iT9xOQ8nDM0yio0srCgImA
	 8zr92UbyqgKShO3KMQk43SIRO3mSgQhoDX+moOWGGm0j0gU/0dcOHmG0BLl8mQ1GQO
	 GCNbkYa70W55Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0A02C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869576283.7327.14404766014671100855.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6996d7e9df7c83e1c0a9456ef819159f4b7b6b040d28b570926835a9cc3a4a5
Date: Tue, 18 Jun 2024 07:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718695762
