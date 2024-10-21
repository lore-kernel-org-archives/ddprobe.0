Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21ABE7462
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729472154; cv=none; b=rSKSI7YtZHF2pI7gO7zkZbf41nfBsfLj9AK/P3SxjAII6jZjhp2nywzubguzV711cMrZxIPcrxCoZ96id8peLRJKyALxvdeXFTN5FduguByCoNqk8L/Edy60v0LJk539HTPfxrYsdL/V+0sIAjV/VSl6Pt5PfbvY8YM0UbIYlYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729472154; c=relaxed/simple;
	bh=PYBcRH3Icw4Ul7l/AlZ6LEmLN/WkQdSSLj/vvrzSjzY=;
	h=To:Subject:From:Message-Id:Date; b=i0g4GQYzwpeGKLPpdrIczF6WRU8c/Omt/TpcpftBraGNR1ViRnavnARgqdt9zwlHkLgWjBJ6E1Df0B3YtcVWJge4SjQvdkAGhkYMDe0yWBEtzjCJyx39dUwASbGXkkeozONGFOid4mYgW1DTaVrrrShPrOIxc4ydVkpk9STocFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JsWPanQD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JsWPanQD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A77C4CEC6
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729472153;
	bh=PYBcRH3Icw4Ul7l/AlZ6LEmLN/WkQdSSLj/vvrzSjzY=;
	h=To:Subject:From:Date:From;
	b=JsWPanQDDw6Q7yVkYI5lI+TZYO1Tq9vUsmt96yHRTNMzNi4yLP8ZqHk7zWGDFMrXX
	 MQ6KWZSerSt2/Gbdif/f2xpOaRawUfqHDBjn4YQAqFVpieHlmwNbXSPAAJkDPUhMhz
	 rAtA29KJZukfzZ4KeVdW2QTxN0MYJ4uglGaOxdfpfuXCFKA8ktBdFlhLq0BguPeqsK
	 /+TokvZ+za1/brHVneraeU+j0HJP6yrIZNO2xkUEGpe1QClX0KReZetChJHmnCbBTg
	 sMDo9yVb8nX2cG4rOJsVvV/NBhleSnaDl0ATtmBUzwR6WnbT8BscPus3TuOuZzucD8
	 tL1Yihco+92hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF96D3C935
	for <ddprobe@lists.linux.dev>; Mon, 21 Oct 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172947215362.17600.6191313650387190058.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16146c39ccdeefed312afda18481e167a80125b471df89afbaae9d542d5e7b08
Date: Mon, 21 Oct 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729472153
