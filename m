Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231B824DD15
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781459194; cv=none; b=PX1n6F8vIaeC9XSG6moVNGnH40a2RfjCNyl8kERu27S3UIC/qENacuJYXPwTiLwox1l4qsc+h4rdxaC3b0r87ccu0CUcSkOrM1elzNp9A+UZ/ecvdk4LbOSM3gO5WXCTxnakvtJl1rr2ILoXPRMJXGKxx6v1Wp7AjXNTe4bqMpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781459194; c=relaxed/simple;
	bh=MX3uZXYGgMvkpPazfiQ/645r3wHx+WLQhB92a1t6m0c=;
	h=To:Subject:From:Message-Id:Date; b=tDtpaBUx0hYlrZzrTLJHiaXJYD7iaIF0z39mQFXZN97rwdqWV5DBPbeSbFb395ruMV4dNBjnde/s2eMs9Ugxr5G5o6wBVyZkMfujei/cjwr9i/e18xSGamCSBJuGhqrhtSoI7sGUGa013RBVR7XRhtSmC1qfcxlbU89zuya41JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORGFdJH0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORGFdJH0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA989C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781459193;
	bh=MX3uZXYGgMvkpPazfiQ/645r3wHx+WLQhB92a1t6m0c=;
	h=To:Subject:From:Date:From;
	b=ORGFdJH0UflniRyTXQsoedOy97qOfPkZgEe0dr5xRK5WvLVC++EKOXGjLn0uXdx4y
	 lvLwuJlGrI9qiuiudVwSS5egQn4v0DIN6YexvMq5wo4zadkNsuMfxJZmWSY94RuSsf
	 tY32+Dd6owrM8Q6T0ncW2N812qrfOgbyNz4EAdPkjerihE5MVB7NlbGfq6jpJuZqn3
	 0+p1WJGGOYpZWGthin8NnWZa5XZpfkwm3gr8G4249XIYqf/8NiHBkfjPYThvKOtos/
	 moqe3nQeRH+Zl8ocSgt5r6284dotTi3f4IhjlKDrmyd1x46AXbf4djOTw5xQw7GXVx
	 lNOTOiL8VMq+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED0DCD98C5
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178145919369.27741.16454206859312310589.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99d1400ad660e648462c969ac4b3f4b52b5bc99469c150cec2ad67bebe062f54
Date: Sun, 14 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781459193
