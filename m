Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60DFC1F1534
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789266034; cv=none; b=DzVtL+zMVHkJnwzdrhzYpRVrgpv5XI73UqSu28DCvls/zClXcFZyQ0ad18T498ksQTycBB8q5HqKBzg2fmO40aNq/PM5w+eC2v8cI2UgXbqk4gEGh3XY92XvFqCQ2AvBkLXOMIu/Ck5p4ZHDEzYv/xPHYr0m7pky/XorYCzbbpE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789266034; c=relaxed/simple;
	bh=+iVMg9Kwwb4T6PS2toEhLyiLNkAXpTSjHzbRsoB9J5U=;
	h=To:Subject:From:Message-Id:Date; b=BXqPN4TfA9gCWaobyPnfeYXa/DBkcVo6XokpRt+Envz4LSMteqd08SZBFB4Tfc8DjGxJStA+9U+GwRbPNF7AYcIOiX/ASAYOW10vgw9qrFTFF4GIxa31CeBf6KFn2Oe2O0Tlgh+03uKMFNEB8twMv5lH5N0OrFZP71UKfX5I2e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ij0JN8rt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ij0JN8rt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34E9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789266033;
	bh=+iVMg9Kwwb4T6PS2toEhLyiLNkAXpTSjHzbRsoB9J5U=;
	h=To:Subject:From:Date:From;
	b=Ij0JN8rt/zE4X8GCqYd2eJl39LrJpcmtvngji5HX2h7nWmIA+f0XUDjOPubDFoPDa
	 VuyCmBtsBWfLXz2PZA8SJt7cdGVu3vkVnHvYj32DvxRp7Ffh5Cihqo6U/zB4WvvWtR
	 +t8tiV6P2ex7r9r2/pFQGru2U7hfCS83PFUIs7iL/wJXhJmLxKnrcZIeC4t7IO5DUL
	 RudPOqG25e/7NZMpXB4MH2TEixZgzxkLkQuthAxxl1xzWyq2Vimju+ZU6K9F2VYhOX
	 PNX9wvK4pfKmSeWbbhVbo9b6QMycpPuYJCwQn3LC3C3+3aVsR6LIj/WL2b93FRMjwE
	 vmyGqEg5F7ApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1B6C88E53
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926603368.12196.10645467468980958006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3109d924d5c29a5f28515ae122223b2eca5e0b2c101d38f49128031c31117068
Date: Sun, 13 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789266033
