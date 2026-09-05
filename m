Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A67E52264DB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788648034; cv=none; b=BJtVHlqyfyQZfA7s2PpfF3Ziv9YBCwYVbPRf/IuO2QLng7dFD2aJTfKJhBg+hYnoK7usNuRHBV7+VttFOjYJ5tK0O6gsTDBcD3AjUt3d+11evqSG2l+XhpTIkTaQvW9UqLeazCqKb0ckmby85izip3aRphmz8QHj4mVNO+3t5bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788648034; c=relaxed/simple;
	bh=amj4Hg0rx0JBbZF4+BAb8KtY8Y0FOLpS8rmBOzcM1bk=;
	h=To:Subject:From:Message-Id:Date; b=YIQIlMuf09REk3qoSeZEnMALSZsf36NJMbob2v6ekvu3/NtLPYy0CBELwM4kAegYHF9H4J+fsCdcZ/bJdErauUSCAExOFx9KGGhWKkeexGqt+KDyj5s5NE0+5QxIqBWXyLuZ8qrMXx1td1KCz9MgSngprBOQ9SlBNfloDUMmagA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OMizQrjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OMizQrjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D396CC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788648033;
	bh=amj4Hg0rx0JBbZF4+BAb8KtY8Y0FOLpS8rmBOzcM1bk=;
	h=To:Subject:From:Date:From;
	b=OMizQrjVtJ1tw7LVMImW6WU80sezuvsGG/TMRhkiLID5KxqNOXWIFKVInfavGe7tN
	 NYZ8W7/ScFlOUqc2/Wm/Z8ffcI40C+S3TAd76OBcGuqMQs6hMSQ+W1A7OAfxEbPKbM
	 ZYm7/GowBmbZr+uYZ6Gl8e0JcttAW0cp90k35nxbaMm0bKZD6uBe3NBIYlevUkyESb
	 ANm0bREf1FzR9ZdfLtWn+hNmRv+OsJbApHxa0894aWy8xYwDoENiN1sDByGJWFzXAi
	 bAwVHoaOg4b4bm7F7UP3HPhb8ZxXD38iVdr1fQEK/8PcV3qtx1WoZBBd7VS3garK/J
	 KiOQ/uOt5a68A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B17DCC79F8B
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178864803369.9053.3401885298821984777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1aebcf65d6c213ea4a22bd595f7bef86ae3808b8751c0ff2affd822056abd60f
Date: Sat, 05 Sep 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788648033
