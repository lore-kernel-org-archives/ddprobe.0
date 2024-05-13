Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7179873502
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 13:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715605343; cv=none; b=YR7fND7DA7vqVDsjm5xuutqJDM2J+yyogiD+YFQIRUT0uDYE0+E25wD/NrF+Bm6GG8NXvAeIWSiKHpnW3kOymYbDeDtLQcBLRj5qjSNUXM9fq92DUGMoAJv4oeHQIbpI+IQXzKStB6BbuELqAgDpMyJ4etWveg8QMaMH2hB7RJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715605343; c=relaxed/simple;
	bh=riPgdD53IigYwpfO6E5gcQFLUfkT08YY0xRphKHgxbk=;
	h=To:Subject:From:Message-Id:Date; b=TvyK2A54PXlkFAwodIcd333psJb6KLiCjxKs8o5iAXO4kPLuos+vmku43WPSwJooa5gxkIFUoXJeebSWPjP0MsVhwpukUeYlF4BEW/TaGXgW/RSXyUABce69F5/bD4MGHTfjLHZKf8JT9y42oNlBT2+sNiSxsn+4QVchXVYoqO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lHY5ghFj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lHY5ghFj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F41EFC32782
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 13:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715605343;
	bh=riPgdD53IigYwpfO6E5gcQFLUfkT08YY0xRphKHgxbk=;
	h=To:Subject:From:Date:From;
	b=lHY5ghFjeKREwW605KgR2ecuQQ73X71t7uNF0+xM/uxhivoCFmHIb3BvT4JONaEkM
	 ught2fW1cmVVWP0KUsjC2hACjr/+EC0/7GQ1s8Kcr90N+IZYCSfaUciIljeatBQ19b
	 91w69aIPqJfeRrUV7CVc6WXHPDvmsHYyA95BRIEkyrfIhtuKTwdXYEAIUu+5//h4hK
	 ASwquWqt8y+q+bVWZqCPly5BDWRLpyTpZ/a5bdA8q1HPtx8kv7sUBnPAyCnYxZkcxS
	 wec21dkpq/5PFdzAe9JLwmwU/aGQn9Vy9PbaGRVefHRV1Ucx/z+JnxTcACXn315CJ0
	 CGH+oZDM+zGKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9F8FC25B10
	for <ddprobe@lists.linux.dev>; Mon, 13 May 2024 13:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171560534285.28235.14791515917268662350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b57a907f884a47bb170f38d6c762e8072d792cce4db612bc63007e382b60dc6b
Date: Mon, 13 May 2024 13:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715605342
