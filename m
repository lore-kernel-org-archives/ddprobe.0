Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F82A2BD04
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717566983; cv=none; b=OT8VnMYyxcJahukNPk3p5O4KwqHE0Sr8OjxtnzwvpRMJyX5VhrmD70aFrcCkvfXtkJ6hSzeqn7Xc6wV2LNALhyr8fXT41MkXTk5xuDDRi4zBYSpBBpJ0Trj9GGbdoqtqk5nAO/5ZwWfWlzlHHLplo5fltxRIC97EN19hbStLcUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717566983; c=relaxed/simple;
	bh=JNe5RWN94bCPewPR/9w+SUmAGtAuFd1UDcg19URGOOY=;
	h=To:Subject:From:Message-Id:Date; b=kNu6zLFbxpb6YKdamMfDvKhGomcERpY0fLoSzDVicpXxcmCSn+i9TsafAkSF+Nt8479AKOXfvgyn5VgNzpdOcT3c6rumEuZzokRe0D+016O2ESC8CPew6sfryM0G4SXICtmNmhHoWGb31m2DzqpvgUtbMQmK3h5zELPcp0WJoJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHyKsA2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHyKsA2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D110AC32781
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717566982;
	bh=JNe5RWN94bCPewPR/9w+SUmAGtAuFd1UDcg19URGOOY=;
	h=To:Subject:From:Date:From;
	b=KHyKsA2XTU26oENFgFxU/UbUXqE2E8zzDmhpz87mvKxFGtuBPjQXDc0gECd9Ocr62
	 j/xrC6uQzBZSWKbALGxzCbEvmYZzmIi2j+0LnEmy0Ltv6HnKAsucS5BGAIVTEtJcDa
	 ov61kALLN2+CwgJke5WewmMjmYgz1a5snhK5TNt9ikyf1nD8qlSL3AeBHrTgWKVEiE
	 A9xtuF/s6YDXJqONtGx2C1irg7AXmUyctrPLHUB926LmL2wvgTXAca2Y+6CoTEKlqU
	 iaujW+ewk0EfkV53hfaDLM1PyjfpG0U3NOc5fmznN2dAzGOCnABSEUf6Frdzcm/ic1
	 h6buyoEFhCcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD5BC25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 05:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171756698277.4147.15853802461987290539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02d8d91ae6d7f591a51b3837627322e0fdaac7e012d67cdbd161d62ad224e911
Date: Wed, 05 Jun 2024 05:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717566982
