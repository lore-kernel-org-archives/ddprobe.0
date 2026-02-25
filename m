Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76D02366839
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:54:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772060094; cv=none; b=XHy9bQBgWCBy48Yfwq4dXDcdCPO0Re9TP3MX6S427Tx0DemzNP61PGxs2S2C5oJcjpiY2wDdJwQrN/quhbSRFWE8gA80b0gu1o+GSZK+N30eMj5JQajdOs+JKm4WE35Pa67WVhhOnaInMwIHXRFmued7k9xhnVxGfdyZxuNTKfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772060094; c=relaxed/simple;
	bh=xcp3Ho+m5C8CgAZjhYrAinPlRMZBTe7kUFPmSxitG4I=;
	h=To:Subject:From:Message-Id:Date; b=VHoRKBCgtJymrCM5Kq13OWSkQB7pPhkhe4qxZjnxQFbZkPYUczOkAOkCkI9FhoUUKt3n5aDYZaVqGXiqTTTpIo+kX1gANSLPlyojI+dCwDH+QSqaw9cxsKRs5TnjWcMS4HKeLBYE7L79cSAIsxkwoMJkdeWABgWrgvohRIp42/Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W2KMm33G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W2KMm33G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03C2DC116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:54:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772060094;
	bh=xcp3Ho+m5C8CgAZjhYrAinPlRMZBTe7kUFPmSxitG4I=;
	h=To:Subject:From:Date:From;
	b=W2KMm33GuU4+/Qpe6tPzZwrTMhQgkM5Mcl6opZORcC2NyHjiFmAEYYTpv+Dv65D9T
	 zTXXJo9lWd4QbbNhQI6dQ5FI174RX+tDSIfb9n1r59YYW4lLnJ4f6bvx+dCIKi+qwo
	 MPhWHDDOuGOp3YSERhEAYbp1gbRzcoIYrgsTshSpBox8h23FvN2sUAbmhnxvS0GZxJ
	 oL4BoRu+g0WU4ESfvibloTACSPubZxaX1L+QOC/WksbwvBiHeK+EBQjxv/oxhoZ6Iw
	 fO7rYpHxbHz0KBbL5I9sLoNBXCixj+E73HrdnjL2GX9Sml2QyrNFcVVL1sprcTv/bj
	 AWrOFoKhdN7bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1D3FD45F1
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177206009374.11851.17541760519510630762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20162cea0fe5f58f73af3ba55a02d9d44198861fb77add4243d3a833ba57c38c
Date: Wed, 25 Feb 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772060093
