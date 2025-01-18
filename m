Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E56EEA9
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737213354; cv=none; b=CF0NMfMxT4aYBclg6pig5GugpdrM7NCAskKuv7cY8dW/fjCV0f/qR3GABGNp2Q6IrbUlS9U4e7dRy1GoWzMABLmgY8PeBC8NMFjO+yK5IMZ2CAoC3q04w4CGfeU11z6vCxCEipWHXYLb4iRlv3PI0ddWLABKl1PkfDkl5r9Zcm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737213354; c=relaxed/simple;
	bh=02hQmLza6feMPGTwv6h6oK3UyvYoTS7jiiIbimGHw9Y=;
	h=To:Subject:From:Message-Id:Date; b=Cz9u0HELNPHP9b/R5FxUMP5zzSddYkGbbSwZ7WzKOIIb68r82ogZaZiDBdYS0ZGCDpOcX7DklH/6Z/KNIwwbbYt2KiV6xpQQ6vPXbRTRfRS/XehYhZDnkCulC/nKT6bxSpZv0KjlMiCIYm+Xl911RYQIU6+OpNL4gyPB6gBQGl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sj6nwRtk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sj6nwRtk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A739CC4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737213353;
	bh=02hQmLza6feMPGTwv6h6oK3UyvYoTS7jiiIbimGHw9Y=;
	h=To:Subject:From:Date:From;
	b=sj6nwRtkoFJc16k7HwhsCfw6/u60hseFS1ZHJtlyZniN6nt6aqM9H7L2XKOc2v8bI
	 EXTLxYS1eQiql85xtg77OEO7ZaNGGUOQeQUog/FGZiJJ5wEVfP9jT/3kRonLQMr1Wh
	 cUlllQEYuEaG9xJ00tHdDEwKpuOr6f3lTyHQ/Dm+n9rmCxIht7Wv1txA95oDbwRLee
	 gA1/uIFi8LdCS0EJiUULQDmq7ngJMec74Xic50/x+5qA4at5EoWGHRRpncL4P2vW2u
	 cMM1iDgLbFe+5ELuwiSTwxoUtZlEJdia6nkv+b7q5w5KbN6pvUFG+Vs+98VCjTomuE
	 l0EhK5kfgUJZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9350BC02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173721335357.31928.2485352118357828655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c43df9558feed64c01c05374349e5cb3f17baebf7485f1578924249ea58b7b1
Date: Sat, 18 Jan 2025 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737213353
