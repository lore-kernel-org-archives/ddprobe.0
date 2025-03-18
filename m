Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5336120CCE7
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742311194; cv=none; b=QC9NhqMUB1z04WaWr3SHBAZhomn3zgo7BA81zhISPMPBM5cgSfpoA9qiGid9EQtz7JGyybFODoRRtVY8bfuh/MrhK7E/uIVmTOcms4iwvzwTF3LAKfgJwemeiitgWoiQ1HFx8dCgFaSkj0d/fptNpE+O6Fg7Qar2PV2on/YxLWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742311194; c=relaxed/simple;
	bh=XHq6caPDuCK51K8wKYDWIifi4RREtowutcFSY+aZc3o=;
	h=To:Subject:From:Message-Id:Date; b=nAecH6L46cF+l/ozNwtIJ+I9dwK3vJlmcEK360eg7ecfXP4YiNZsMIr47JGEaLEVg5IJY8tFMiuMTbYNpf4nkdBYtepv9Ai981imVk8tZcc9wLAoh04Av1HMbnY2c1Wq6M3fxFXWlzN6+kZkdABrx4uNDfFmG3KWz2qdU09PDHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/gS1iCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/gS1iCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1575C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742311193;
	bh=XHq6caPDuCK51K8wKYDWIifi4RREtowutcFSY+aZc3o=;
	h=To:Subject:From:Date:From;
	b=Q/gS1iCh4Rgv6HpxnsG3Ko+j/NYJKTc/XOgshtbraOXac8E1oEPpaIGek7TQ2axXr
	 rLnFkUs44U1A/XrrZcM+/joKinMOPEdj23PTg3WT47Yh8C4hLfALd1xUy2OoODgZwK
	 GSJeuCK15BwM91YMnshVazwq5T6KHD+1JBZqzxpzui95tjbxQx5swisKQlw7bLj/lv
	 aJEjqMzh9jQnsZEQGFNfDqMbKSQ4aei0F7F9+8ZDW/zP1lizigPTY48eHDYReV9sRU
	 LXxtY1/yTAfMhLFWzuDyn458EYYCdHNl2roUaJTSt/J1haRDFgorSdDqXJZK12RgXd
	 usq98ZyG52zFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97076C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174231119359.21786.4396878898674844886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81856725a7da21f63dad26611d8acff36b0396997f6b305fd60f653f1dcf9e91
Date: Tue, 18 Mar 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742311193
