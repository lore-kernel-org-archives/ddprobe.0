Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5623D182D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786890034; cv=none; b=T+TEbwlPu78PRYizMkqIgPaV4rymlkgU4ble4CjD57tasa2HIJkSIxK8cJirtNm4XHOiAqdk7VsCnLPWjqmgANGFuaZXlP8gBmf/v1xXdCKpkUTfRBNVLSmfWC5jdcKUGmByptKAMRH4I654NPbPgR/Ttb+SLqbfEjRwUlywjm0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786890034; c=relaxed/simple;
	bh=/x7hzTiokekKHzThi5J+7A7UmvuDK1amc855VhKSQ3Y=;
	h=To:Subject:From:Message-Id:Date; b=aKiY7pIwIXVHSKExq/OEUuCjSL8DsOI43QHne4KZh50b1UIRo4BHMj3VqF5lwFfYBr4zgLWgEIq41aGUVrETyoy0Gg3J4U0ScEkqu9JbDmzFFsotHa4cLLfUuz8EOx3IB0STjvtexa6xeUjOcTO8WLkHeMqUG4Vwe9gb6j/4pE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpM6UWTH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpM6UWTH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7705C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786890033;
	bh=/x7hzTiokekKHzThi5J+7A7UmvuDK1amc855VhKSQ3Y=;
	h=To:Subject:From:Date:From;
	b=gpM6UWTHcasuyz7sBBRSQhITACcsImoJV6l6f8ymyQErh0Xe3bFSGktDV0gek4t2d
	 n+lS7/Pdb5cA6HF3f73f9MKsaNfAyPCV6cFax/SsQQW0ldnf7/IOhBWqVbjwBx+T2e
	 cktKo57YypiMHVzYay0elw0Gl1pACZU8uu69gbwS4ElFErF2LMShwV6r55F8Q+yrCz
	 H0ebuxcAhWbcllRM89hATGqbFVsb5HpGIpyNco2odj+qZUyQj7B2rL741EJjW4f/mA
	 Q4WG3EvipLR6uLNgmMNx4ZGP9WiqzhUET2QaUKb10+cwyCN33n1en9hjcZIBoDKFVJ
	 xiZKUVpWXrVXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC6A2C5B572
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178689003369.21393.5318735336227005251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3866eeb2ea315c03f475e809e4ca2c4fec75bc72129a206a6eb5365d197dde37
Date: Sun, 16 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786890033
