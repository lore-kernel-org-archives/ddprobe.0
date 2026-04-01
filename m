Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214D2406297
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775047534; cv=none; b=qEcrsREg5U9qxho34jihpvNcJERx5Uiy5syv9rs0oSd5c6Ki/OLoTsZFTBemY55Zceq65SzIAEolbiGi2S7fYh6qaZ2ErM0RoXQ51pjgDsRyh75T2bvQoWWiLypy8VyC/CYzYuAGB4xyVoGXfFmJNC1Bfa/knJY+KZkvG5M/KSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775047534; c=relaxed/simple;
	bh=zhpSdepV2FgTHXMB8u7CafI1mXPuJp5PEkBgPNZN9Bo=;
	h=To:Subject:From:Message-Id:Date; b=nF4OscpRQmzXNk/9s1apFKW/h2zrXPWxkhacAUtnSaxI2/zoUFhrgf9YLJifPFOdlq/EBAzgic8RkfWRwiA3okynP7SRAixujocEXDHsSKjvc40flc0LzuDyF2ph3/PXerw+KltaoIIX79qUpFwz528enRlq/iFeBsInvhOXQNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxjQHTK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxjQHTK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD8D1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775047533;
	bh=zhpSdepV2FgTHXMB8u7CafI1mXPuJp5PEkBgPNZN9Bo=;
	h=To:Subject:From:Date:From;
	b=bxjQHTK/wvCQEjXjhc942pm5zaVFizR6KbvjHFUtqgiuH39uMYihXHjShO4mlCVSQ
	 X5tphht521+O3e56lm2BVcweIY6CATedgmG+GrAMukYdGUe/AacrKvlQQ2ZpaZqEzD
	 Pkv084J5Hj3IKNWfPw4rc1Vupc9+GaX3a0xWDk03/NvFSIwxOOqXrmedrpOKFP8wyF
	 dRcVJulc7DemupHCkqiOylAKnka85U36AJZ4PS2Ym2TDQQiOGpyDjtrUmAymQScW7X
	 gPtePuOSLnV1mUHzqm32BDy57RGbKaIVPmq5gK/Hu5epipZElz+84aORt5pCmhlnr9
	 zvwdLW+4xIKFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE5D3517C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 12:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177504753369.8699.2013249465127173580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe02d90bf9c223c42481902d3d68854b359fe1fbea037e69fd08c0179c7421a3
Date: Wed, 01 Apr 2026 12:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775047533
