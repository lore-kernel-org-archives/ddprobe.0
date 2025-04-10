Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4061414D29B
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744313394; cv=none; b=koCO+ona6qzLdKgceZUvkj707SQkUzQYeqiKUt9CQ5P4p6iu9BmbssmsXRHim9lqhQeyNGoHG00+9RTUdIewNK93YQALzr5veWRobX+tn+rJPe97LLZfMXd+BTW5okKHaXGaJodm0n02NytXISFIaELCmOUwv2ifb/MeieCR60s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744313394; c=relaxed/simple;
	bh=kNMskETRXKcKRnWaMJpcTCPI17W3NxLZtYEnR86lQkw=;
	h=To:Subject:From:Message-Id:Date; b=Mz+bJ4SIua36Sj697jXPYE+2EXRXJ8xO8FVF9vHBqRlyti2zTrOpWpy7yHUOp5YrN7xLYNcgyWUOxGo1WbbWZa6iUu7UJIRlHV2FKRamL/GGySDXR31QugYfPb7/1V5dO6gEFWjKAn5JN9VdZWBqKHNq1XZ9pWfg1JZlJ00V9aM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4czINl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4czINl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BB9C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744313393;
	bh=kNMskETRXKcKRnWaMJpcTCPI17W3NxLZtYEnR86lQkw=;
	h=To:Subject:From:Date:From;
	b=D4czINl+jFmdG7uzdeuyUV+i6Q/3kDj71ZVhBEl6C9HvHxD4FnzZ32GZv38NTc46p
	 mOTZXXDY2k5IGr0zO4zSyBxYCQdyXp2G0TjOSYnO1GtiSMDDEB8qNyfzxi2dgPWxPi
	 yq6VBAD3IbKV0DQtOZFsXCkx8TlBR7RHnYOIeOob/zs1DiXLiGSfkrEVN7ZMy12xk0
	 IM3dyZrhcdQ1QdJAOriR0HEPkonFR3VdFoZ32DscCHgW23FE4OixjRsVQL7u3nXDEH
	 zICTl1n2OH5CxPoonUVOHOBsdDogM38crn74J/Uu+vkFubqPs2i5b67mV0x8RQVn6H
	 ioBLI8XiYdnCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E48C369A2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174431339360.27478.18043474086750863252.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfffcd50d1eef67a809f4a1e66f10d8fd01e26069c14665bf66cb9dd554e340a
Date: Thu, 10 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744313393
