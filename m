Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 371AA234CE8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736855754; cv=none; b=CSdn7lcLaJ+h9UFXCpHEt7pSx5XZoM0u6/uVDUDiDmhByphWPQ4hoZod6PV0WDrDhrWtlSTi4VusU7GB2cZZLyfOYiCM4+ZWwOZtMY640AKPkhTC9nUBmH5Fafp4SqRXTKQ5uTbyGr8mvdRY9X1rz9j1ekfQH4HfLQcXjwJ/Zak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736855754; c=relaxed/simple;
	bh=c4Yh0wv7KPeq4DZR9tIlcxcYd3ILlQjCkRLVM6UMiHE=;
	h=To:Subject:From:Message-Id:Date; b=FJhbWQ8WZPQlntW+I/Nqwqea8/76ROyqeCN2tVyGGY1Fp+eBq6lTbOjJNXZvAt296WZAQIeLy0OW3yLlXx80V/JwZAIlpOVWYeSJE8+UzxZOh+BkYWRHj6l+enzBiKJjp4BI0f/1Rl9HEAEPjyhijI2ClKTNWo8rfR87MllBlGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qu/5EFm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qu/5EFm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA7E3C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736855753;
	bh=c4Yh0wv7KPeq4DZR9tIlcxcYd3ILlQjCkRLVM6UMiHE=;
	h=To:Subject:From:Date:From;
	b=qu/5EFm+NGQlkq6irUoNtBuRQvUonm/oPB69ZZNacMbKdr7ly1UMSo8tuzARtIHFS
	 RbIlhBy/tIzta/vBpuieHZv4PdnLabRUPHGC6ZWgqO4/djMsIWHTnbpRnjWYec5D7j
	 Nrgmg1nbYJRPyxc9wkiInIYT5eO+a2q5evMwnm0EVr4mA+imGvaU1IYLZ2UNdmI4K6
	 GFmxtgR41KG4rObTaRppODLo6fZ73gvr/T8rt7hiXyQQHGCxfw6vcT73Z17XoNBgMm
	 vUHa0r40uRzUBK67BI2Fj50nLh+fuUZAs2fflpAWqdG1UNZfsK7EeeCcohRIWWoZRj
	 vW3lNkkZK45aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC4BE77188
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173685575362.12472.344456363929632506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d8a849c1c6abf5d61bb9dbf8fd904277d929940f889f4b9aa35f82a28969df1
Date: Tue, 14 Jan 2025 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736855753
