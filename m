Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4970231E824
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783244314; cv=none; b=UVG84WfiOK64sj1fXLobT49qhWt9CVmTxE7WO/8sPzz/pun8pOgtgFEa+jJtVqAqcB7qL//+N0HveSEOV+cPSt5IERYKhhxTPA97TdHxW7X56Joge7EU+KtJ7fudrg24BqhRGMpysJigSX9snWFgpVP0fEDk90H8hE34JIJAc9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783244314; c=relaxed/simple;
	bh=DTLU/f5PkbRvf09FGTEiN9peRBRW+bPgXibcAyKI/f4=;
	h=To:Subject:From:Message-Id:Date; b=lo0e/xW7XqeIMhKxgc3kv6uo+I0BJ/UxUyfneGGr7HXHFu7xxq68A85LXo9zy4PGt3pydUBnViz1qH2xpQTm+Nc/1W8SryRVh8FoX8p6XLh0kgN6t50U2k5iuEwy0DX6lPKHawiqn9hAtEhGd1asxaJNnISuHyt5JdSZukcqbps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XwQrtCtE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XwQrtCtE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1E09C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783244313;
	bh=DTLU/f5PkbRvf09FGTEiN9peRBRW+bPgXibcAyKI/f4=;
	h=To:Subject:From:Date:From;
	b=XwQrtCtE0wJ/EW3J+qPv5NskVQWfIvdmQtVBP9BV+cMDY4tyfsS3bAgssixz/oyBQ
	 MeNuwP7unwwt/Peda/dyZ5CznfG8z8k7BYZHcrjMYbmH5BrqPdU8xC18FCEkPpz624
	 Uv2FVyZkuAVopI9J2n4HsaT50AUh4hMRqzh0TYM0f7BBTeQl8mvujozly3EhdH3ATa
	 j9HBvNg4ROsTr9tpeZ+KOpzQPskoRAqzGLPi6lio2J33dW09BbkJJZ8rQ1BQ4w85xY
	 s9gvL9SNYhQWxMJ1XZdZ0RNg2ddOecXhqKfs5OpHunBZGYuxQOX44/IADdW/JtPQNu
	 W0ac4FYyOlMkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EA3C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 09:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324431368.4680.9430458211716017627.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e056a6dc6b7e628257bd92066f271c84b83e7394b3f35e01b2923fc2a3da3535
Date: Sun, 05 Jul 2026 09:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783244313
