Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A27B3769FA
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779278434; cv=none; b=Vhi74KvNlSn7A9n5MAqGb3bIGtI3vusHwQi7D17l3gYNrfMW/Jyhv+t29vntNaxGcuOP3frILA2sxNBKJr43MdZDwYYGyko71jIdmVjI2tRZEFPHWVem85vzT514gHcTjQNIEEqJnC54xxa4Nbp6+/DdSj1CHfku9OzquvhqIng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779278434; c=relaxed/simple;
	bh=/qjgD/drESzSgkr0AC6kIMXIC7xGFytGLHZLF3Yjxus=;
	h=To:Subject:From:Message-Id:Date; b=Cfu8SerIt4zJo9PkrMbUp6cHmqGcR14D8N9MnpODMW8usN0e2GNhPhu8g12OqA+wtUUIv/inVPR8oEV9xHJTQzhfI1biny1GigcrQXS2vwYRhmuLIoSWbeg8ZEzrW9mb+3cMZ/saQpf4ZUn6B0aj2cQwlH2OlivouqgjNBvjSSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r1qQW7C2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r1qQW7C2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB623C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779278433;
	bh=/qjgD/drESzSgkr0AC6kIMXIC7xGFytGLHZLF3Yjxus=;
	h=To:Subject:From:Date:From;
	b=r1qQW7C2Oxh4XnOt9GOyBxPs1uwd/3l1P4SGsyGsFhSgC8y+qOZ2dDhuwQ08s7/cQ
	 3F62Ep2C9PrF1I5HUMGN6utLI1nsdRVjMuPOH9TqLp6WOgVzfixtOQQqdEmSAAIVzm
	 bEkQsMm9lLzPY6rzWIIwfZlZkaCdfnnXYtw8n9EcedMmx/X0EhZAEVCQKO9MSgIwSx
	 et2x5GHiz/4qdsF3sc4KYio0b+PeRVptZweHsMZB42/wln9E1ipPhPehSe2Pb5GcwW
	 9vJAgT5KSSolzjA0iCXqqgrr+fj9u0xkHJ6FEx5YqtM7kDRiKyAy9abSjMg3YuhNaw
	 FaTnOZx3u22kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFB6CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927843371.21095.16327268433080810436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c6f6282483b895661a8783225bd10745b6a2f33d26024c44366bd1f20b25a0a
Date: Wed, 20 May 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779278433
