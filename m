Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63148A31
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718596103; cv=none; b=lXM2yw3JXTMvTjhrCd//90/Uur6+S4mloka/gL3XW+ChEk3niKmx85H0k0HRX7oNzjVc3uMF0CN+2vroHyYkf9+WGe+yZi7tc5A4A4SG3y2KUFRJNu5bdV2TRhwTUot1R+qiW2AeWoQjf5OHefFViPfi0kem88eqh+yMTqKaXgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718596103; c=relaxed/simple;
	bh=03TEvyKt7LI4mRDO/ykd7L1Ait0PN5/rM0GoXl2iAH4=;
	h=To:Subject:From:Message-Id:Date; b=oNva0atLy48bgHvhvaTIsW5a7nQlk69eBfZ1qZGiWI4CbqYiQt79+h0Dac381qoHpWPuUv7z2L1mufipFrUwd828eNUI1rJk3BNNoo+AYquDkaTkDL+4FwJRdvzzSnsVt+9r/AqOdR1Z/jZWqXLaxpy1m4U2N3jzLHoCmK+Ru7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FDWiZbQu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FDWiZbQu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D80DCC3277B
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718596102;
	bh=03TEvyKt7LI4mRDO/ykd7L1Ait0PN5/rM0GoXl2iAH4=;
	h=To:Subject:From:Date:From;
	b=FDWiZbQu3wR9KaEkJ0SWqom/IbPnJWcztRWbBEQ4k30hIR0UaVRMmcfGqcAfvpQmt
	 6tEVsnIR7vh4k9lM9LaeQxo8mNPoqaOw34NOCHh8gM2kLLhKDTlognKXFyiU8PGlnZ
	 4676Q9sNUKzYlqVNODAc3qPwMDsdH9Y5wiS5dgiPH9uk1IgbOdH6yKf/yVvFdpiwvy
	 K57Buhzkp8dVP7vXz57/shu90O6cf7XWAUHlKE87LQhq2PtiW/3MwAidsWSeCf8tsN
	 YIlJm0ulXIfE5RagfFn3MUDDFRTqVE4fd7hzbABcSf4h/18LPa6Aix7Ca/pqgynlCr
	 UMDi58XQA7TcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE78EC27C77
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 03:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171859610276.23099.1295917165900956457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af583476ab42ab04997c4aa168ae61fd3568989ee37443fab0680c105748c66f
Date: Mon, 17 Jun 2024 03:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718596102
