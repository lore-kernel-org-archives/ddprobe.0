Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E95627732
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773374094; cv=none; b=upmI5t9hAkU3qnyG1KvoJJQCY1SzbnnO4CAmmm8Xn+IpJt5bmTCzf6d6RQ1EaV4R54VCiYFlqudXqqj9B2dakAZKaY6yUs+QifQHJtpInpnDy/cm7ds+wsNnVNofYpz7Jci7hmruwQ9Be1VVYvKLjdd+oqzAb0ShXyCOd83Jh4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773374094; c=relaxed/simple;
	bh=smedzGDRZUshD59LCXXRqm5gReizBEsWZzDnXzPh95E=;
	h=To:Subject:From:Message-Id:Date; b=JJivnS4UA0A5LJhJLsPfYnbb6jIAslvayXyN1mQ1Gu4vE951+7S/R2B1Q+3yYhtTReDRrY6FLZA7Q0IO9l0hkfGz9PG1/QkLPsl1eXXuNYisbP1ePCRMhjNYyWBa/19hOJ7oQBlzl8V6gay6LvCTJjvA9jy23dYnw7jV2AaXHy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNekOgYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNekOgYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A114EC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773374093;
	bh=smedzGDRZUshD59LCXXRqm5gReizBEsWZzDnXzPh95E=;
	h=To:Subject:From:Date:From;
	b=dNekOgYibScI3ypAngKm/Z0QF2jB5y3+o8MW+BBAwHr5r4wUA0hWlhAAq8bfsHS02
	 2B6H0s8588kc0g26picMVIJyy8mVxbSdluEGhz5TxiLZzlniR/AaNcenpjl3MtWQvk
	 Ev4QYwPxUdLVpQzSda/8s5XLz6wD7MVgN5D8EzeZLe6XA42uamcbma5+cxM9dQ0bxy
	 x6E+EOBbvCIuhk/UB8eo4b26vz3+gwbkMFmLMMxC/Rbn23i3DEaCNDZNh6PfkyCa4j
	 P2WIMivZTAY1VI+un7DFTKqYZYIrSAaMHDaBKeNlzcQqGkRx13z1ABdgvZ+N+v8SUt
	 nXIDBg7rcIzZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEBF106FD6F
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177337409357.11940.6971113012105919584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56a73c6054b1c9187ce56b7efb1d10d73a18fb8a787d46f131d04986eb589630
Date: Fri, 13 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773374093
