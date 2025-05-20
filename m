Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39444256C7D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747784395; cv=none; b=ggxyqvbTcfS84wTVxvsekoiNAO6X7xfo9eNfbV8rV9s/NtTg+gvZA4xU2D4zG4BQft2r7eyLVJWUUKc3ZcjnHUBuJbDBZ910BqDCrPrkH6UMEem57DS+a3ViALyskZneZZVe+Fqy9OYy2FC2Ubqx8euEbCeo3xmNPX8Ig7E6EpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747784395; c=relaxed/simple;
	bh=tiCoLAU9IuO/bKVa5BPtZUTuLe5bmigQX1Uj0ylWQ80=;
	h=To:Subject:From:Message-Id:Date; b=APi6JcNeQN8toC1dNyXSBt49oVveCBVNcp0vfk3IsDPAtPIkRX0omMMa20HUdiO3DiLYBfDAzZSSAqPPScJfqaMwRlqVyMyESXgjjYO6OwT7EZ32MCKbSGkuuNGB+VkNiIyNkgS1NJtzoiC2Uqnmvu6Zc8rpXpocP5s5N57sZI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fzTPDJJ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fzTPDJJ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8104C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747784393;
	bh=tiCoLAU9IuO/bKVa5BPtZUTuLe5bmigQX1Uj0ylWQ80=;
	h=To:Subject:From:Date:From;
	b=fzTPDJJ/P8WlA5hLM9kWQJhKCIAaznNk2u4z3ID+OUVojBOd4Z3H4DVWxRm7t6eG/
	 yU/sNap8M0IiRPi2TdxO7E5jh0c4+QDl3dILs1sNdCb5E1GNBSzDzbZadNKTyjHxdW
	 TSboLCkIjvPIMeyRqx0oPCp6Atp550zpYZ9CUWYn0ra1Q4GPwic5N/mhcSg6ZFpX3t
	 ERziCJA8vZ+AdAqrxaGv7qrhfB+Bt2yTu3apX1E6n/qnXYNMeZMDNyx0lMW5Vlad9+
	 9qj9a1oEPm4X6ZaZiMop015AN+Xx9qiwiUIGQDpYkhoGZAFHxcpy8f+/TWtlb8ZO/m
	 DfR8/ZdV3kwRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ED0C54E65
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778439357.7166.9494750615841709080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c2e02272ae800bf5ca8a50bd74c85a5a463d8a60a5aaafb61d0de3bdc930cb
Date: Tue, 20 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747784393
