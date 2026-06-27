Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B76D33030F
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782572914; cv=none; b=gVvVrcHuYE5bdTuuVf6/nt9FHFRGf0zXwFAJ6ggVB8o+hQ0OGH/DIpOkqLb3LNDrlDLyW5oUp04oQciWrRRpcNg93id791B5eptFg+HvblAGoIlW0iCnNTTpCNE+itJ1Kb3yqdWyV5VMhtcM6Va2f65qF+bqaubPQoo3OloG/1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782572914; c=relaxed/simple;
	bh=DkkprF7KchO6OHdB4I3fGN4Tq69SVXhI1gJvonXVsFY=;
	h=To:Subject:From:Message-Id:Date; b=n2qY1IucL94YbbZ6fKc4zaYeSp5JqKpbhMGpDueaxPToGzKopALpz+B7HvMgefbAgEU8zx/6KdPNUU+f3bhwKK8sfgUCW2Wm9mU5kUvBorNDvT/mHmDn2wWS76/8gDeplO9v/aZRaBcQe0OYKGlAZjlC6y+mqDRoXLEQbQxY6+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZxKrl/v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZxKrl/v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E40B4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782572913;
	bh=DkkprF7KchO6OHdB4I3fGN4Tq69SVXhI1gJvonXVsFY=;
	h=To:Subject:From:Date:From;
	b=BZxKrl/vPaj7qgFZTYE5rlABkJ3WmPHDqSVCAsHlI16994Cb4COKD0jZ/aoMCi9tk
	 I9lcbTWmppGO1XSA+ex4Im9/mox1KJyprM0OrWzydIDFjzYFSzea923oflBupEhGVv
	 YEP/qZ/aHq2nM/bCBDP1sCpaOzpoeniWO76PsmoUclqwAcrhQZ3xjEa2YtkFGGTjKS
	 dVD7Zpz5MqJsB2+XJm+61l1vZonVGHSiI+NHhN9TYVl9wgDcu68Urn2SNXVXJ67OG/
	 m3tUgtNqF/rZ7IcoynFAXSoN4XzEFgCsB/R/V6K0i2fI+j6MivufhJT8hKwqgqRkwa
	 VOPMr8wVsd2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF7ABC43327
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257291376.7664.17931541357129127982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac0a3fe902d166fbf873e21d297d1e82c5c768667a80f6835e1e0be7e26bcebf
Date: Sat, 27 Jun 2026 15:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782572913
