Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0888E2BDC2B
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751581794; cv=none; b=uVHlzo/O8V65eXFcyqWQ8niElJhlk5T3PlzIyTcM9sRC8VU/J9AXEPNlD6W7x18HHVhhmSQD4XMprjMayItDiy71Frg2/JPD+zOMElCThq+gf/Gu0VJcGt64i9xrImB2x8xERMXRb8y9Kh88dMne4n94wsalZYMMfPwnmQMKN9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751581794; c=relaxed/simple;
	bh=BaBWvpY2+iCzh9IHhz5rLtGrpBbtRr5mELoWcbaIxh8=;
	h=To:Subject:From:Message-Id:Date; b=em8+a4UetV13khgkWgBd1lRNSulWtv4aUSPpoh6x6v1Kis4SAwr+hSTcJDgJcluXQ4bU3VjP8fEea8xfXV+6Bv1c69Hp7cPHZ7lUf81z/KGSpHHkrjtzq6p7oU2VhnEmVwku0Rg1CLrPmZ12pza7uSWBKzoXaR3MN2lfMHrP8Mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NSl9CqrX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NSl9CqrX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F249C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751581793;
	bh=BaBWvpY2+iCzh9IHhz5rLtGrpBbtRr5mELoWcbaIxh8=;
	h=To:Subject:From:Date:From;
	b=NSl9CqrXu9YgwqXH24J0Sch0yTUrZUBM5qFlefnb7KzBDH/divNe+mQBfszHKxoQC
	 UAvQoC1ePLAy59n2RF5ySS5JZfhqD3HEtGuT3HVTDDYpRjCx1jkLiASccftUALCNWZ
	 4gu3WL3ajDlvMynlXFLMJ9+sKjkzvhePZvjfboVkzzXT8kwVNad3Kc8TShBr9kFqmp
	 IaLTjSIfWS90dvez3HHt5WZ1lwWa/2DvLoG/JM/KhMk1tcvuZuaVVN8iCtzU3OkxDi
	 qufwIHJUozKuT7/FjvYALpe19mc4xkU6agaWK48fRcsSt7JNIQoEsmSDBzBQ4lSqQb
	 lKKjKEiu6bSGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CFC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175158179357.26295.11717508910048023072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5eaaa0207b88af4955498b96e65bc4cdaa2be28d553bbd6598e797653b51d12
Date: Thu, 03 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751581793
