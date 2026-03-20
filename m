Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F132D1916
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773979494; cv=none; b=KwOo7pHiIZ1epLD7fcTQq7VkG6IsynRylnocqWPXV4rqUNvpF08cd7Gd7HgNdOezWw0SHrwAWwwyODxhgEmlskKBw5j7+67YuCWW06NJGrpsCxuLexPPDgRSICEWacxEIlhOwY5QR0R8nacK50t31I4aorGmmhiYupok7sV5jGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773979494; c=relaxed/simple;
	bh=VRJaZEMvFKVvomcjppmrWIzKpkl18SarPSv0W+ffYhY=;
	h=To:Subject:From:Message-Id:Date; b=S1LHwQeuVBk7j5AfHvIWI56lEhhpfYTOdtXl1kpF4B1Apb7UpZmj/WjS8MOgDNSCryPhCU/Rv9GunSc9zl52wl0tJEeB9YYl03N6bYYyrKu+gWkJoyRNjmw6MTgbCFyMftPYSECdFRPi5wKo7vQ4GlZ90xGRw5hMxFISKDf0Lg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyZF0LkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyZF0LkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDD2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773979493;
	bh=VRJaZEMvFKVvomcjppmrWIzKpkl18SarPSv0W+ffYhY=;
	h=To:Subject:From:Date:From;
	b=IyZF0LkFSyd2G5fE2XKdXN9gtklvx+pdkwBpKAOx6UY/hzSipFgpFCKXLZcWwigvD
	 TpfAvHuneiAMI29Mmgap8t24L/pUM5qF8A0SSoGXF0TguUFzwIp8bikGA985kKidvK
	 eKRUHMAHaCy0nVKuU9jjsMyGtfPtW6hvpLcMVGYQFoaOw/0budicP+2h7qlEdUWz8i
	 8OApw1ptbdIyPuRzZ/sEH0+hUmTIcpF/CkOV5txrnSryTsAB/Y51ukEayvydG6oXTI
	 NeOR7cCGCERuUK57/x7HRI+r0FswRkdk248ODVX+zo2KOGjMsjVYQK9+OegD2dUL9F
	 oaqXcrB0s8u6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F18CFB5EA9
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 04:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177397949357.2565.13767747972496203522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fdb8698e87ad37df3c8564013779d4b848e294d5a3e53ebc1a50d0811c0e0ae5
Date: Fri, 20 Mar 2026 04:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773979493
