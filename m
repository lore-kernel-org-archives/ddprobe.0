Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B2F17555
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777680454; cv=none; b=Q3Uon2RuIVwBUW4LjW3NtsZ85nuN/wN55ssc4sEUZTIIGmjSAZkT2meusC4+QIy4e8bNOcphUwjo4Inv2a+WGUslXnW5tcoItkfOw0Fy6x2yrOHyGs42TKUsItMklE/fWbvWEzvt7Hgo9/GQ/VWhdW7bHal5BNUuPt41AKbLCjo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777680454; c=relaxed/simple;
	bh=/bSccGNzZNQMX++idK1aF3gO7/1FSi72R1wicrU3ZAo=;
	h=To:Subject:From:Message-Id:Date; b=fkUbLcWSyHkw89FdJ1HjlX4jkl2/vOTO4+Ll0Aynsw4m4e3QFWXbW+Pwk4qwMXY6I2GZRy5TNF136PEu91heydkj5oFQ8dHa2jw4BXn5a230XL5YgxdqZkjXrpzFufDW6yWNyH8waWgZZ1pl0C+sukMsPRJLU5TS9wvp0tfcvLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nep1HqmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nep1HqmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C08FFC2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777680453;
	bh=/bSccGNzZNQMX++idK1aF3gO7/1FSi72R1wicrU3ZAo=;
	h=To:Subject:From:Date:From;
	b=nep1HqmRudwIvmlxK2o/4gvpdYZQ5mhNQM3K87jjX9M/R/aVZQ+qMAiuHgVamT9Mr
	 pN40zWAmfbYkOIQ5PS5gwLokXB/xNavx9WwDzmePqIbBmn5LZYvZJZYu1bq+3WCXlM
	 c3tpY1GWAZ4k9B4DR1tWxRYlyPsXoO4IuQ33kF0hO9BdpgFsKE3aDRA9bDOtmCmyKj
	 IEVjSOJzisRf0hDiuj3MOf3c1y9TvHchjlpciUWDcBB3hAyZOXt7RLenDODa/1Ve0j
	 jPnpszkWNXnBWPFDx/sVC4d98j7EztTuNNFRmIBoP1DPT0XuaHDOakFNL4B1tV1vmm
	 ljC1EDN6+1LZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC741CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 00:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768045368.3669.1717197484142520464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ffb3cd16ff16f23fd9da2534e7d36faad4c6245fd5c6ec5e648d8b532bfdd61
Date: Sat, 02 May 2026 00:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777680453
