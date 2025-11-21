Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265E52D780C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763761314; cv=none; b=flqjEdQKD1CQJkQuEtCUN/CzEn9V4t+0xL9OrCab3elE0MSpzM3EOq4R3uJUFVtyzZfcXMGZ7y5RQ5zq4uJNp2Rz5PkG/KdsJq/xLgYsUuulakcQ635NDNZpvHMPLF9hHQs1H29ITNdUPtDruQx9GOq0a4KXuqpRRU/CrAND2xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763761314; c=relaxed/simple;
	bh=+uUhgRXkAfJDBi83vLhqGu/wL0H9npcBKRa9fGYG7w8=;
	h=To:Subject:From:Message-Id:Date; b=F0Hjp7/vXoExwxTzB5alyUBqIcH+JMg5oL0am6R471x291Ov82IFkh+Nid+Na4PmxVkjZ1DMagRaWvJGZBO8PmeMAf7Rskc/WYw2eZ7MTvHmLg9+z9Me7xLPdtcoPMAklbXrZ1Lw0GNeTrQ+tFelX7oP81UyDDNRsmgYJMRGAbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OA+JbEVO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OA+JbEVO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE7C113D0
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763761313;
	bh=+uUhgRXkAfJDBi83vLhqGu/wL0H9npcBKRa9fGYG7w8=;
	h=To:Subject:From:Date:From;
	b=OA+JbEVOy5rVya6iJ9LZ+rZvw9LXMLJX/nLiqSwOLIiXBFeYsmWoSmjzXn/NCxsYD
	 CkeSO4L3P2+rcaTBoa444WeELDKwDRR6YyfZNTs3JsWer4aiYjGeiNBZab5nC/GNnM
	 CknEKYqkbbMz+2OlQ2OxzTHwKOr7fxamiqSXQ7oqKZdHWHh1nKJEKqg9ih1pNm9YIc
	 VPH8WcLIwTv/PAsNABwiUt/JAswkLnfJsWBsObvtj8AtdJUIVM/d9J7SA+XsmMY6JU
	 3iJt/Sv/wdT1coZrYGFU9bF0S5TE6xwHliYXRZ4MLyhI43d0/ASafm1hqCmwSgrZpa
	 e4/y8hMrK7MGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925E6CFC50A
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 21:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176376131358.29950.9048041679580529163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5a5892e671be5a2989cb2d86b80144d7bfa8ab7a0a3840d8b2efe94a4d97cf8
Date: Fri, 21 Nov 2025 21:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763761313
