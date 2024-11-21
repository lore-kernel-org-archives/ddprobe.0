Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5C4230998
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732157154; cv=none; b=rOOL0ous63Ohy83xrR3YWtfQopEi3UxeKT5JGn5+TXsSn/PSHwTNluRgC7dnkhsntKFkHn71aw0vCo4ubM+qtSlG5HMloYF70vIfGvGYt4+O8He3s0vgEpTErtXDi1uIdy0p+BIIzWK3kmaVMOYVmUUwajaNKzpCsHUdtrNMcNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732157154; c=relaxed/simple;
	bh=nKbyhI36n7b9aBssLM4rqzvksKMQk2iUpU/BdxZAvHg=;
	h=To:Subject:From:Message-Id:Date; b=PbI6Rl8xJoUSI70TLDPH8LNvRr5FloQmvWTz5Rin0w8XI8DoQD7pGU1ylQAcPnp7vObtM/mI3rdS8y6RgLz58Q4RCOBHC5wztfxI5QWnY0yi8A8h0tkX/SRY8sWvOVQ8VlT3cFHGYHaBM8sZ3k/NXgOz+Hr8/q1ycIu9w12ijGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZkJVPJvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZkJVPJvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0B6FC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732157153;
	bh=nKbyhI36n7b9aBssLM4rqzvksKMQk2iUpU/BdxZAvHg=;
	h=To:Subject:From:Date:From;
	b=ZkJVPJvVteOn7mCP//LOSIdLdK9MRiS546lyZ0RTRQ9NtaMr4yiMDBu9ph3PbR5wX
	 Yc8/sd5es352GnpIGYcqCAeKPs0iMYTcDl1E7oWOguqaPjcVFahyCo3MRjH67CdtrA
	 ttam0HjhT7tYuwx0FzdWDxuvAR/sbC94ELsGB3gBccuqfKcQ8FXYhbzPLoMTBJug26
	 bmij2MAZ+E0yk9eS/d4W1OD3JYwEgau7Z8xZmzAZ64VNvf6MSBA+iNQ8G8McEKO4ZQ
	 qzz3lx/a3k/aBHaCOVak7MIyTsZmD6KGn85bqRroMSWa+icqrZaYAfTSaNxHko4ZHR
	 iNsC/oFTdJhqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987FAD75BA2
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173215715360.7251.16238071881282128613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3c86566ab0ba3c3f83404ff9f7740ca0a22a6f14d7a575b3f6edba09897f88e
Date: Thu, 21 Nov 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732157153
