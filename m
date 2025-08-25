Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2939F4400
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756107594; cv=none; b=uQu6wZLFDrVCx6gkVOAvFcmXowqzqV5uc0xtPfwaEhCmLSG2TmzEZKnw/5fDmiJNKD7PNmha0hEeeOLpuSDdtgakOzMXdwQ+xN4uoCAsHNyWbuR+JZ4jFVWn6Nlw3Ad9fU82ymf6FFiiWFkHholl+/7g0cFSV7O4r4tNLlmXkTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756107594; c=relaxed/simple;
	bh=RsmaWfi8wv1uQytoSL1E1kycZdG+nQ6WyKG5jaAKJr0=;
	h=To:Subject:From:Message-Id:Date; b=lL1fUoVzVyTpIeIo5G65LrFGc38D1S/YVu566bHApcueZkCX+TRBVT1wS1oTYb/bAGdfKraPdRr+W5MtlBa0tcR2Plo6odOy11SvPqPs47vCy0aT0uyrKwCWVUG6DvQWBj23Lc1jwvPGt0m3LDU4XmuVkaiSOMrPEJ1Cqi8/+5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pHvcNkDQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pHvcNkDQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C332C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756107593;
	bh=RsmaWfi8wv1uQytoSL1E1kycZdG+nQ6WyKG5jaAKJr0=;
	h=To:Subject:From:Date:From;
	b=pHvcNkDQspBnpdnXA71l01cZZKbe3TDtly5hmgrWDsq5ujMMrvsaNw+TmgQ80fmqA
	 njRyyq55u5DukzMd72oUVHu66I2z2JkeYN+DdbHDU6RcAwOdAD4f0ZCZEZKBeQs4aW
	 B4KtljnCNCvsw8OA/mJvBVw21UmsJ2BEG9pofYe5SQG+WtMFb7rDP4/NwONwyTsRtP
	 HI3+ATXgZRdW0SEglpIxgUYAP6bKHayf8SM5yjVjvcboDk0b1pdsi9WRxwqiotm/VX
	 /DFU28CYhRt+cEFUs647TkMYkvr3BsBPOzYCqcNxB+LhzaRwF7UrU0/r1cJQxACryr
	 KpYIlwYMBA19w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF44CA0EED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175610759357.15779.125530496643733518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5116385b47febfda2007ba824a9fa3b5a6143602028a596453d5ce39423e948
Date: Mon, 25 Aug 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756107593
