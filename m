Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A076379C55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780509274; cv=none; b=RiO7iadvnsdfT0FaG3kB1bz8Jw9CCqFR4c0pGwOv57QKOnTS2Ex5/EbjRuvEHD6SkF4XuOegTO24IcDLgRXjBVqA8a54Csk5s0IiWMqoY7fPR6GbNI7X5L7cu5o+xEN5fN+Brg9F3Ma5h5DKxJJopfbaVYIp5Het+XLJXCqw9jo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780509274; c=relaxed/simple;
	bh=Cl1iMTNred2GrNnZis/xQJhLpEPspxKxvi+c3bKUhTs=;
	h=To:Subject:From:Message-Id:Date; b=jnHmTOcpVDke+RM3Oi1SSO9723wNoCOXyDIIUFac1IGcY3bG+LcZZznjNfxwsaqa2ub9miTIj3uvjq29/FVgX3Fb7gebviXxEkOHss0dj07HT3snVJW5YTMYbCzgNGIgrkRv3Qxec2wyzi1nNt1TnRHfmI1tvrnWGM5QOZCV3Pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHSgAaYc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHSgAaYc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8383C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780509273;
	bh=Cl1iMTNred2GrNnZis/xQJhLpEPspxKxvi+c3bKUhTs=;
	h=To:Subject:From:Date:From;
	b=IHSgAaYcVGg85X/CG0ejCblGLPpSUyekh2gr8V5Lo/a9WcuxOMWX6xMndhC8iACgV
	 YEB0TVnFRAdwr/U0CgiRmlmnWZno7zOlI9jflw5l96ZE/Qk22PO9AZQfG3bjiZoD6W
	 /YFzkJP4DWRGNX0al+CXXCfqJuJyvnQdmVbVqI89Y/B0Cx50kjO3qPPS1zrjPsm5UL
	 zKrmtXIHBqnbeSYVf7gj+B8PvOMdQQeNYI9QWSCrAVl1AR26+Sedsz0x4CQv4sxHbE
	 z9p+iJFKSF6CkhJP08Idz7Y6CGmV71/2dLsX3rUdFcwZvz9u7lMisi/1lKOI2qD9ix
	 QXl8Kt+bZ6irA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB248CD6E69
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 17:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178050927369.29937.7902709099469620231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e546b93f7719f11d2bff6fe2ccd937ad6641f855b4227afb2b23739271ea12d
Date: Wed, 03 Jun 2026 17:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780509273
