Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1275482EB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766426633; cv=none; b=SpgFNCU69iSyH52FVU8kYjRIwTjPTaSkeYnS168GllqkWe1rQ0xyvLpsz+d77s2dH3Nx63Z3Ds9wFU+JrmwfkD44FJyOxnl2O47TC4R2YiXtOg+x0GQ1mVLODGXf3tG1xu0B8P1TRmMZD2n9/L+bnC0saEoUbrLDllqD33klGRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766426633; c=relaxed/simple;
	bh=QSKNjsXd5kypn+N7KYrkFrjjtoZNcM47BGwU6HWK17I=;
	h=To:Subject:From:Message-Id:Date; b=sEiAWDfKBua0CNPvUBikEycx9gKR83+Gg2XdYRgeCSTWeUHTq5v0bG/FnxhgivRBoV01osIsnWcuTaEmyN5AA1CYKv9AXI+ZWrzs1heTWnBJnqMNdTrEAe7WJ8g17qDQLqs/FAX1CltphA/wdJVaWY/29cXk0d7VUdgNA1thtTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWHjwYRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWHjwYRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F8C6C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766426633;
	bh=QSKNjsXd5kypn+N7KYrkFrjjtoZNcM47BGwU6HWK17I=;
	h=To:Subject:From:Date:From;
	b=mWHjwYRBUisN6/VEF9tGUFEQ/tpwlfK7zHNIh1v6/IrUTeT+AF9JYnQngL2aQeTXQ
	 I9zjp1uEnT2FdsSYJWSdMA9qMWF2ToGPVzWz7X0051cHpiPMiYrWCvQ3QrjvWnIZ1n
	 iBs/DEcc3qE/WzSgSpxI+Tffdjhrey7QVG8CjstdzPOPab8giPnLd+RE0rCiT4guRC
	 q9uDplVLVErC7RdMu+q5a9QwjnYwVPrEW1m3GZ//7X0RQkKGERmiBEbzV23dECXkhQ
	 Mvuerj8fMEzRSt3G8LtQi2Z38z1AY5Pjgx/iSLDa4nEZm1Vu8CNy7qzWIVSHH97Ze6
	 4sFFLi/FYYvlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE62E67497
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176642663358.31936.7483731709745250302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6363983a0a4e3beb8f0b32b1cfe8ada9abc74af5b3944e7c12dbb7987c6ecfdf
Date: Mon, 22 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766426633
