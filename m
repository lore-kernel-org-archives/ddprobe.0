Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70E526F08B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717703843; cv=none; b=FlIxA1OJLrqcx19Kd/6DuNML7T3sSyLgpaaB7WwzI2Gemb/4BiUnuyaS0urxVynIKomJbh6qloDX6W3Kr+TFXKXS0sy/VdxyDJALMTrsmlg7CQA7AU2eEXfjkk7KYgEhahrEDsJMsgQHKAOYV/C/V5wbIujA7mhBPsh67wiqnqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717703843; c=relaxed/simple;
	bh=/Yw2pFum2340s600P9aqBncVzzX+EPc0cd4h7JyhKBY=;
	h=To:Subject:From:Message-Id:Date; b=fPZtgoLst1lP8V7GKRjYPU26bbA4u85jzMfrDoCt7v97FHzLzKp6+K2JIxKbHM67Y7oy+1wYsytcKHNdnqp1VnD5J9qXuoYpOdzQyxKFHaG/9/nIWS22266tMpONqleddrL3zoCnMP5Alj/5+ZtArQNjQMYxlgaXFh4bPYASR4E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IoWFxxut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IoWFxxut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAB53C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717703843;
	bh=/Yw2pFum2340s600P9aqBncVzzX+EPc0cd4h7JyhKBY=;
	h=To:Subject:From:Date:From;
	b=IoWFxxutvqZ6w191tNqYUmOYvdo8w0Jmw+cqMjMuwiv/ogfJ30Pw4gW24zrxtj4WK
	 YpkXnoSC3ENcHqEI2Jl5LynC3R3qEN5ymy7DUUdt/735V7BgN/6CfyELr14iYBzXHZ
	 qWKRKkPwpj+WouLBDWUFyX8mIqJ5tF7uYEZVh8gUj+CScrSEKga0iBlIdS6TQQkg7v
	 lJs/EQhEGGGaJAMcEC9GeFB1KYUayObzHTEN89hZi8oAsYLuZSf+agGdFPEJAILgAd
	 WYj4223Z704xcRWCTv+XUPByz+LOkfdrJ4UJRBZVmEReLVySuqsjvQ7OSep4SNewKF
	 tE4LgtZ04iCsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4BA7C27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 19:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171770384279.2254.12639416529408207802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42962dbeaa98dc3999b8dd26b7c362973184ad081df058d6a4c5e8c7d6dc1366
Date: Thu, 06 Jun 2024 19:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717703842
