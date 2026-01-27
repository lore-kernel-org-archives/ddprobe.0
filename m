Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F94A32693C
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769538234; cv=none; b=FEMR+Z+Ky5V9bXQSdr9sAs0+q18bDdTsK6m3LsfAHZ6sSSsjqjlb8l5acEAEocesML5Y30K67KDeNdj3I8YEEUvZRItUCF43qiBnAGNEmetKtjNRVBjg9cVd4VoNew4zV8/B667w1ddzOiuV1fa53/LA6e/0GHv8UJku6Dpr2YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769538234; c=relaxed/simple;
	bh=4P7h4220rk9GYO9sfJt8rJo8G6F4wq5lVKyds+k1aKY=;
	h=To:Subject:From:Message-Id:Date; b=DYr5X0bOuBLxoHOk78beIP40Lpj3kudKUfDSGeW13kDmCBJQ2kIs1oji4FwnN9jE2SbdvoVzHFVoaOGYrxVcO9I8pVLcwFumuAGu4A77IBH0vzZ9oS4sLDIG9CBhxjRHG7XTLvCxHaG2d5vcPynX7k2VjaR07tmUxZocWtTTJkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hjac/Q2B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hjac/Q2B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4345C116D0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769538233;
	bh=4P7h4220rk9GYO9sfJt8rJo8G6F4wq5lVKyds+k1aKY=;
	h=To:Subject:From:Date:From;
	b=Hjac/Q2BcFc+e3aKZBfdI7pnH8mjcDZQaN2oQMkg72Il/WbEJsrMGRRpgGhB90F95
	 zlmZTJi00cHQ9btgf4GH7mqKkIKmX7/tQge7RZDLMkk5BuV1m1bVCKVMClLdqNk1i9
	 lH2KhM8KH5J00rZn31crqb8XMzotdzQlYNrhg4OwNQKqT4e4Ns0gMpVvN35Sv2gq3N
	 TW546pHDWAhKAEhEiFR9jrsZZRObj0TLO0+DYhB11k7XwF/pX3XSvxipcktrVcpvx5
	 B2rlJTL7GQSePr0MPIkflYAyTXOIOCVAjULNp2kZLcTzrqUNCNGJw4vnbSijIAqqSo
	 qxuXO67nN6x6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186CD2FED4
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176953823358.30155.2446115666380237165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c67ea80bbcba7a7c183fbcb0b33f17809eb3e7173ead78f11353b10223446bb
Date: Tue, 27 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769538233
