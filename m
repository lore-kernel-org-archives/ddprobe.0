Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DB22F8EB1
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780632274; cv=none; b=ToOP9pOXgIyAsWIdfnvl6Yf/czECgUTSDQPb0Go+usDO7EtvNnucQGEEJj+Bv6leUtnVIedE1uYT8Ekt214de4POykuMJ6aXsGgz2am+dm5YhxIuI2Cj6im8L7pvGRWnXJmRZHXJGwaIq/tIXmhnAeYvrh1ezrBEgEGNbx7uzHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780632274; c=relaxed/simple;
	bh=28Gm0TcgumiNW32j3MR/TNUDLHg7+lDqdA+Vh5oDbJY=;
	h=To:Subject:From:Message-Id:Date; b=DiTFViOWjxMOyQQON4K9S0MEu9um4j7baTYVoJOaqQqjrp5iiQ5gHAFT1EAsOMHBSqyoNOenUZJg4sMn4bM8GBqZUUgcJxukvXy8mmd2X9KhjIKmJc8iNPEc9C0fyTwFuU38AO1NRsaZL15OVJG08FaahpJPpOORAlq3s3xheDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hu/2nJJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hu/2nJJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB987C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780632273;
	bh=28Gm0TcgumiNW32j3MR/TNUDLHg7+lDqdA+Vh5oDbJY=;
	h=To:Subject:From:Date:From;
	b=hu/2nJJP9ggj9aVzhWTG6BNyi1WFBGXQX/MdXB4CgSzlICfIasl3mOizbmFtCG+Tz
	 37zc4BH9Zx6n4oSUUsG/alBlH4iY9BxrSLXYBQLLHTQOU40aYHyDHbK9Zs2PKM4Mry
	 a0ssWfl1I0kIkkt80TVDVoiBvt+BoUCO64Z70kQlRaS8LNUwfBTEWmSUMTi1w+xmKt
	 WyLXhUk0GjHQ0lnjcq3+H6nLtRmS1/ezO1bInhehJaF6wmj15m0KXy5a7UHG8xN8WB
	 +9zUN1kb+GKlo19yf3n5mAEKGB9n0sACH072Trua9n2xpd0kq6CG5tK5k95e3qT6bF
	 4F9gpXObpbZOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1774CD6E74
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178063227371.25674.5912803865146310249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f2942f41052cb5a9f020980ab9689ca947319d8f98d6bc484864db12236678
Date: Fri, 05 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780632273
