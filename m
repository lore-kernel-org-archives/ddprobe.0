Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3774224A07C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779080434; cv=none; b=MAtbNXfxNQMboLFyQUESEP/XFSgDX0L3qWGXGCVGGhqkEkeVeCFyQe15iJ15gK8wUc4Mt/Td/z+D8jQhhnQmtSx8sWwNJUC9zXwAr0t2iasBaxCqHoTUg80GKfZ5wXRKo+3XVASQ2fOoOG5C1U2tYh8Th/d+4wmUAqyXdGhNGDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779080434; c=relaxed/simple;
	bh=CUNVXlTx/tVx0K/P2wRORmHK/4CpD0TKGxTYQDmpB8M=;
	h=To:Subject:From:Message-Id:Date; b=S0EGT0GVrPYkSOotbtpQjGfBMnjaqY6byM+mnDlVW3JDYqxX3PiAh9HjihIdfvcBjchiBnx6Sr2LhD3nRkIa8dB/wUwzK6sCANQrKGBErY9Dv11t0tpoqi4HSwBol8XvVf5CrM6aOG/fYOvzjTcXk/FwpsJG/w7XTfZg6OMlWfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HIbIh0OQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HIbIh0OQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA782C2BCB7
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779080433;
	bh=CUNVXlTx/tVx0K/P2wRORmHK/4CpD0TKGxTYQDmpB8M=;
	h=To:Subject:From:Date:From;
	b=HIbIh0OQ8U9eCYKwp0eyQ2+hxOV3EkQqn9+FuGKr/GTOXQBoOo2+Js2P+mt+yRrXC
	 6pJB/DFJ0gfLmP/BnMphv5L/KLoqMB1oxYIsFWqFhf/wXZvCQSbVk0AF5vNxo0Bgnl
	 n3aOqRoO+xQCkNiF0Da76BsiWAX4dj39dBeHXYuZcure91cE8viTHU7FzXV/cM0Au0
	 MhdAif1Znt30xsnbULL4DBo7qqKdpJf4QyyXGF6lRrtBglBDWCz2MCu++XTxPSb+rV
	 UBqCor5X2Zeuhca1zUQT+VJMELwNri50bIYeCMAFcigf0hd5IHF06rHp23K2mZ2Tzt
	 /Qo5tljl2x/zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7E5CD343F
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177908043369.26755.13608154626561029866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91ba68f08eccf27fc050520c9c4cc8aee5c0ca63e13078b28ccb23f7c8aad20c
Date: Mon, 18 May 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779080433
