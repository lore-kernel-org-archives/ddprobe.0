Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAF333EC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776662254; cv=none; b=kPylRJRVxwmH6wOvxpzEMyxwFzuD8x2n9l2EX99bk9iKqFIAe7j3LtoPLILjnHTCPJnHdNY08j99taIjisW/ejQVFgI7ajdbWF5Q2+hSwGzEfgYr5X9MmDjqmWS+zlOx96baaQhMbAmiyIeDCWsZRdbgLYuY5gweREVTt6Ie1xI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776662254; c=relaxed/simple;
	bh=VcVgpk75LfuLn5HyVtb5KEx8IY87Stg7ceP8gxaWGHc=;
	h=To:Subject:From:Message-Id:Date; b=Y9pq21NQ7/Un3d+UrCJzuagdqIc64rc/nrAGCAVrC6OXTavXceF+Ci65fFUPbmP0JdHKCpJ6U1kMPH9FiMfZCFme4HEx1A74DSRobw9Apdwa94MQXmZINoxIJeibWg3Z3QOQRyC62bavhKALCSQAj++dCnGRa13JX6cqoXPxbLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ2pLPut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ2pLPut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE539C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776662253;
	bh=VcVgpk75LfuLn5HyVtb5KEx8IY87Stg7ceP8gxaWGHc=;
	h=To:Subject:From:Date:From;
	b=EQ2pLPutiRREM5YKrd4WwJyzw112dfLrRqm242QccmOf7bOndcaCzIB8wL9mlfPHp
	 IbkdBZ8kkH6ef2lkY0/TMMG0JVGdYBJx4X1109JKkIEBN4EvkWQpaoPKCyoCqZJbmD
	 tdYz7vQedBsuvrBgKl8Zv5tRtc0Z98wo2Js99BMRhXHGK9QGn5rghTRtzSoqtrv/HO
	 eYek1J5dyTyTMD3cqcdIKxZzMou4mscR30L8ImtX/FP/egApJ9HHbYvyfAveifOrG8
	 B0bW6FKCRIpOK1pV5Ft/UIIIsJv43dF5KtTyqMcY5aVDscyGgivUnNqwvqBf6Kvtg2
	 cYFshY/ICvcow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC69FEA71BC
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177666225368.19181.1733123991638055537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a1e82af00cc5eb5f339bf9de5057d21f4b1f6c098037337b8cce19815cda46
Date: Mon, 20 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776662253
