Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413AB395AED
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791496834; cv=none; b=I7NsXfyfsXCfoHSAjxsi0H8hSYe5WRCLWAoPTEHAWr/H/gkOqo/+rID+vgcV0uGAhKH1iav8PFyfJ+TIjMc8OIg2NIbi9fzUg4uhy4+V6ARIIoNW0NZK4VwtXDCygPmvEbu3KhWCwSL7H7TSwhHREeggnV40bpKLyCft23vJgr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791496834; c=relaxed/simple;
	bh=3q64q35s+Oyrtcs8IVTomrsbZg7oBn6GTlgRaJAMzYM=;
	h=To:Subject:From:Message-Id:Date; b=jlND6Xs5cfmgzb5ftKuXuITk9PfLZFASMBt4h7H5tDi49b4wOsy3nTXDBGbtXfegT3jkXLkb5B3TF8hVk48E7aCletQ3WdeNX41e8kfokfyXU70fxu3UcCQtiYc2Wb9DNgVbfNmKGp5jsaOBTWuMPPMswe6y7lx4p6ya/x8hkL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zr/Jghtt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zr/Jghtt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C240BC2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791496833;
	bh=3q64q35s+Oyrtcs8IVTomrsbZg7oBn6GTlgRaJAMzYM=;
	h=To:Subject:From:Date:From;
	b=Zr/JghttUVc5zbdJz9Z3yvPBJX17O8cDAJNapPaCckj+3gRd6tE1vyjF2RB8CWBuS
	 dfCdv+OBJkccWF7/umcheqO6vBvGzxwByNv2Qamc9ZS5pL5vFyWfmLmfqbceOOe5kk
	 gB4SJUId1lOGmWZrcqjlkHaOn/+DDRyJKAL/p4HYrrw1TempwGEQmHEifcEQ4utaux
	 a2IuyFXE4+s5xReGIO2xIqHUNrehtidZuleofgKQ+qEBh+oJwoyZLj/2sdmaQN4uF8
	 6scipy54sYLZlRb+GuJWOgrgiB+tRVJ5mICjzzGkMDauS780kbna/3u5qeL+nkt11H
	 NVWhc4Pxp49zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC3CBCA6015
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179149683369.2720.8310461645635448967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d5717aca964fdb1448ef392da62ea7f7ff80ce3dc5322b14e4821096a7a1f9f
Date: Thu, 08 Oct 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791496833
