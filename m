Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79533748F
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715207543; cv=none; b=aiJGC0eKpdofaz30TZBauJZLoXPs9Cr4rdwHSsJ2MYy1Io25ewDyBBeScXNEZZSoKALPKjCZAtCd4qDr6zJVe2rxLAhIdyaVDD42Ps1v60+5OFOmO/B5OY7oGoiuG1nIMrs7/a0Vp6Cxy1GZ/ebmiDS1CDNNC6GiCs3wCoQPIRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715207543; c=relaxed/simple;
	bh=s91py0jFLG7F4yjLhIP92opVG+7kB+fIgYGhaOKGL+s=;
	h=To:Subject:From:Message-Id:Date; b=OiSzzlnIamcQDNurrcC6/iD0YKO3wUuaWGPUTtT3c2rSFIUOdIhrsAs5lFX6gHWa0C4lXn4zF1qq3ABBFqPPCTPc9K5rhXI97esmFHB9ToAem/P7wUpZ04E9HB0gFrcps3asocBhyZBvUOR+dahGiGiQ1QvKCMS/D/Q14BIyJrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kbKa6X8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kbKa6X8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5F3CC113CC
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715207542;
	bh=s91py0jFLG7F4yjLhIP92opVG+7kB+fIgYGhaOKGL+s=;
	h=To:Subject:From:Date:From;
	b=kbKa6X8GMUrIIJ9vEO85tP/V81VEyAqakPDE9CmmJSDzdeIAy6h/wB8OU/iyEAEGu
	 r3vOTDfxlSplY0yAF9ipSnx3/Rj9BCYPjvH7jUHQ+j03yAKgl6LiUDvhGATghNQUsg
	 77pAs7J8aZFZiYoE+dTogxdEvY6Rtzb8V6/mZrGQ5tfEn68f2oh7ES8BiqLvhPs5J+
	 DOenriZn+T6kgqGSOCMKK0mcmKZoNaYcVkuGXlz8lDPKdrVSK+ui5qAY+q/VYVJDmD
	 BJx8Kz6jV/jcmrWMo8lkXApOEGNPRuTfKlNpb3nmv5z0f3TyGvfZ97MxYV2tyUc8lW
	 X9qcwTk9954IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D19B1C04FFE
	for <ddprobe@lists.linux.dev>; Wed,  8 May 2024 22:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171520754282.20325.14850195040598201905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf120ced39f615aff9aad2ef0c54957fdf397c073ef1cf1c0229259a63fc8bab
Date: Wed, 08 May 2024 22:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715207542
