Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31063298987
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758871794; cv=none; b=M7sSbN1LcQ/sQUzLQFKTqnOgE5mM08urxQLB01rpZkW4cxy4UVX5Qz+9w5Z8SzGTULeNCzKUo1S6NjG+3Ou2yq6IF6Bm+uBy2cj/u3my/MDyAlPKE3B7z2R5828NlmDjl5kagcEb8bzdDxd8CYoakB6h4qHDl8/1v5jcltilk9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758871794; c=relaxed/simple;
	bh=l4prvimkWFJnSJsefF/jP8LuF+C0a+/bQ3CU58Phyv0=;
	h=To:Subject:From:Message-Id:Date; b=GnY607JSMqFaul4tWgMLW6L34nHPiZaWBqd0/JC5Ve+Okol1HtC7eYPallO5Kvg9ox/DXclS8N/P+W/kz5IjYIOGZ86MzL9aPzw6+BaD752vEfcAxODmAB1o3nigJFDR3h30QUwrEDFk9DDG9cMI1QhwBovNQ8hgRl6jUNjSo3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmzFOVPS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmzFOVPS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1F1CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758871793;
	bh=l4prvimkWFJnSJsefF/jP8LuF+C0a+/bQ3CU58Phyv0=;
	h=To:Subject:From:Date:From;
	b=HmzFOVPSYwKCeDTRY5pIMElwnZ/08yngR1o8+dr6nqPeDyZyJioI8RUgxecdhOU7b
	 5zH4bsLlkn0wzpl4jCYwYfVZbK+3y6vcKgVD38Ozi0vEyjGJZW5NkAdzOJRtWemV4v
	 /iMr33QPoP2MM6LBuFmeorsi1SjslAnJ5w+Hczy+kA++Jc75lwT2iTspN52FCK5W07
	 hycS03Did2/Pkwf5DcsF/ollvthOFVrfkF6r+8YNgqYfZfCeqR7hVdb7J2xNniXu0D
	 O0NJeXTErYA3QOyb1c6y+BxxN7vrgCM4uK7kqWiYjRYShmmM1cvsgRo9wGxXOsjnLl
	 +rHYKdw1hCKzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F280CAC5AC
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887179357.8819.17607587300154651368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce81367514fb8a3d54f08f15f84e4fc2e315218294f18433b347e7fd24058f4
Date: Fri, 26 Sep 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758871793
