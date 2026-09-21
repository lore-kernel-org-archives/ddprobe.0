Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5547546C833
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790034634; cv=none; b=Ycxy6Aq/cbEG5iW9CrWqpijbNptts9dmX47sYGquKrfPaUPqW2AS9ZtRJl6/x0f9Xvgqm7jjuUgBH7e+8R2yhEJLiSRhWffFiSLRMiBnGf3r5POS9wC5nOtnBYF5vedxOk8ogdfGd1dN1qP5XMQmvbOMTMOyW6lUs77eklYuVF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790034634; c=relaxed/simple;
	bh=FJaON4lv74q9WwngQBgcXoyABGPhhL7Icw3NCgCXrKM=;
	h=To:Subject:From:Message-Id:Date; b=r9hzdwv7SJqmHBaQ+fpXyhZ989wOgMK/3UaXoKHVW9d01m+bTLIZf8HYm3m5Rsx8yA6hV0uhgZMUqddJxZSWWRD85gdNUG5ICLHg9jax8jM7R0ktCglaNIuxz0ewVBmY+gBATlDjmAwN99J8T1n3AyUfvRq6OEY/B9dvjqCombg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AaRZfVVg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AaRZfVVg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BA8C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790034633;
	bh=FJaON4lv74q9WwngQBgcXoyABGPhhL7Icw3NCgCXrKM=;
	h=To:Subject:From:Date:From;
	b=AaRZfVVgYHEgKtgrc7k1eVF++otomUUm6B5XbnNdUXOxrx84q4j7rHtwfKh9LOWr2
	 gKq7+P6F5U0CdmRvKlwkIU7kXfDvL9NXUtlfcgKNKc64Z3nWCo7RDy66hJuAUHYzhF
	 mnBw+149aVAz5AzNkkklGpE+cAoqAZaVCfTdEHoTu5+y9W1CevSWJaJiG0m1L2/1Fc
	 kCESLLzWbQqOOhWSYkwbyG88abr73p64Tfs2zZp/WNxTHP4rxG4j7VqYYiX6JTe/+n
	 FT1nyxQRUFbaO3B70ebuQxErxCQWDuU+VyUPbBAMICpU+KwK4s8N2PYjEVGqkMa4AG
	 FWtm2bBtbOqIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B03FBC982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003463368.24365.1850950708430009268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b54bfb65a05673a0ee93ecb3201a7083ce77483c8a40609d0a1e1972a81b78
Date: Mon, 21 Sep 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790034633
