Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DAB927472
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749518994; cv=none; b=ulDedWIgauY/UdeLNfXR74rmjqZ6AaJ5AmXt6uUHW6aVDUPEgq9IaDYeYOW6r0UPMKqz1iAx7mB6r/804ihyjA01RCfW9GqAStFB7VHjHcIpeuqgqZhFnRwHzNblEPFdT/FQUdQavPobUbENT3WAfBOOICct5lj6ippL1rXpI5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749518994; c=relaxed/simple;
	bh=c7dWFVKAZdJRej8SC5OOsXqpVC+jeShVrHaYnco9e5U=;
	h=To:Subject:From:Message-Id:Date; b=JGE7qfyLOkjBRuNET4WxOMS+Kb6F7wKx4+fn6SfyyFpQeEA/U8us/btbR8JPX3UhLSmKeSk22D0GOJQOkE0Gn30gjdj7Z5mS16ZYhYXHHPAhJjSt7d8DRTdgxy+lpVqOUrrGUjgKFFo/HzybbVLUSCyIQE1NmjOTwwEwzjiAVSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwiX32B6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwiX32B6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8485C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749518993;
	bh=c7dWFVKAZdJRej8SC5OOsXqpVC+jeShVrHaYnco9e5U=;
	h=To:Subject:From:Date:From;
	b=hwiX32B6Q3tVzxE3FkZaGkr+seDmqi5lXMwy3Udmts8Slm5I9HcWgObaDDyTEggSb
	 c5hI2AiIcRwe4wUfgIgcwS7lld90B9HSCBRmqlqvAZrM19PicIfzzQSND7B4+kpSep
	 XjA5JFYVmuOUTzCS25SOzdsPzq/8gupxwGDm367HMBObaJJhS022LROncbwJAEeg8r
	 vs9Fu5RR6yD7P2mHYpNo/hHCfAFUTr0SlOChkchZkOZ1OF0y+H3C38Jc8t108OPpwf
	 HEVB971zmfdqAV1gK9K4rb8zdiKVGpCBTyWOuhDENqtVGrDZxG80Vd7p4DNin3TAuF
	 uUKxRS1+tjt3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0026C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174951899361.8523.5875400190101309083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef4a15b8bc9bbe0e383c55c92bfc8d09f342536d905ac1a1b212531bbf051e73
Date: Tue, 10 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749518993
