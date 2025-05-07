Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3C11B87D5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746639594; cv=none; b=WsIiB3PIDTujrS27zR0W8zSMNJs83LI0mKNd7GhhsJBTAILHBGwFSDBb2Uy3iFgLS290xnDSTrAuaItqRMt+NBjWDeI0t17udvBn9XUqGk4urU4Setvjl/UbarUnUMtwOZZbJHcNnbvPa+m0qvw8OxZxbaZyJZZDo+dMT89IqE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746639594; c=relaxed/simple;
	bh=U4lDQAPjWiKPMIZux3rSCuTb5q6rheb/Ixggpxf92qU=;
	h=To:Subject:From:Message-Id:Date; b=AXtkQ9JwnafHd/NZJCiOKkRtA1q1GWzU23eebr9LPKTPAiFG7ZV6dTqlHcVMJAl00QfBmqj8GmVO/2cXjB33NYbJyoKr/4d/qQy/oI+EM1GAe+rfHtio4hh30wmxIbgf/635P0VeF6vhiI8WosDqAGevg/j3IyILb6Lx+xztLHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9Vnitdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9Vnitdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0232C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746639593;
	bh=U4lDQAPjWiKPMIZux3rSCuTb5q6rheb/Ixggpxf92qU=;
	h=To:Subject:From:Date:From;
	b=P9VnitdnU8JMHT2HFzJevCPNTGik9urn/64nH3Cc0X/Az5XlzZH4+SiJr2y1s9rqC
	 sSpzXpcHPg8LlPlDkHvv5RmD/SlmOsoesu8LIS1ss/+4Kh+297RJ65V65yJ4A2Bfn4
	 s4eM4mJJZB0WMMXU257L6Im/Hp9HBoHAIKQaBZXA7GZf6WbBmJXPB9AzOH2NbFYTbP
	 EH6EOghx5v3j/ebd4puRrfO5qhz6qbYKan9sPcHb80wmfWPW5pid/aLpbeD+lN/IQS
	 3L73tsI2yZzle6at98Q148rF/16U50KzCTP5J7OLcGuwTaAmATaje7oaQxLVyEDoDb
	 PPaBwp0EyUJjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903A9C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663959358.15133.2799528306192623012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85f2fd4c8561c9aa828774db1f3b0d49a70297323982fa7d39c427d6872c6b7f
Date: Wed, 07 May 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746639593
