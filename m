Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219EF274B35
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757428794; cv=none; b=kiLSmO8sGhou5j45YHx2wMS/flpNu2W9DOGJWbPJgtJaaEDB1SaJjO9Flq9yIoEB2sU2cV71OF+uwznzU1R3PUTdy+3Hl/bYxLuazvsbfqQ98S5iyqNJn2U6ZZFAUdXVZ3FORxDJWgDP0Is4BlmQfzGlXiC9Zk0gq1TbPFMoLTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757428794; c=relaxed/simple;
	bh=OjH7EpVANFUZ4q9xR+BxpkUE4bv9UH5cT6s7febvKKI=;
	h=To:Subject:From:Message-Id:Date; b=kMxbDvcH9YQz6925nA0YnCAdYpPVQuPZoQjTkCAR3uyXjEY4wNBd+warYJ0nIee57BHVSD/0tm0P0SklI13LmnLQUBeEMT8Htnc9tpgv7UrM94dJPi8ZyAzvSdD01fjcZpIy6rKffn13Z7G7PuBEKMOQWuhMyBoCC7LIauruS4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvz/vlZS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvz/vlZS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F36C4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757428793;
	bh=OjH7EpVANFUZ4q9xR+BxpkUE4bv9UH5cT6s7febvKKI=;
	h=To:Subject:From:Date:From;
	b=lvz/vlZSkCGN50X+2K0QTy53pWxRwm/UPSeJUVqsgoV8w8Eqt0LNAk6pFz7MIWmdA
	 NaHNydWAmNxBuyJeTJkLbz+MikxoBPo5/MFKj9wh/yHlkOgyXMLrREK6ZJhy8V+fhn
	 9vO9lLIw9XUltKMfbEnKqOyTzzhyIweOjUBt0ADrgF2QoKFip6pgVPuwmkb/JZlnXV
	 f6TZxKIxnQBDdh+Su2I5M42ByOJSmn94UxQm5ZWDQTWDFiwi1r9oMLx52KylsBJCcJ
	 RpvZO6X5M5FXBdbhkQIX2tJSYTwssMXXZ2/ILlp+CBLeTScyBOHz4lM2WNXBsdIDe7
	 oz8xhrFESkSZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9258ECAC583
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175742879358.3447.14197216403161391667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f768fa55c3afad02976a98a51d10a8f444d33f35f8918a1968b291284bff3cf6
Date: Tue, 09 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757428793
