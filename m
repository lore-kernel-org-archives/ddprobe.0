Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71E92156F29
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 19:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715887943; cv=none; b=qhGjOhcUf/tC14aoB73S+mULqVCavmm0JI5fsMw0D+pAJUmxfeTrsHX8w0g/eV+pLMpXwRIa7i8wGJ5oWNqjSO5g94c2Zhi23S2BfR1Dz81UNUTc/s2Wo4tD4izWgeF5ymQOEc1GaY4izliRslF0aw7LlPfCSD2qoZopZIya4cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715887943; c=relaxed/simple;
	bh=Zw3iwQdzlNjkxP6/XIWfKVtGLjTpmjRTS5tFnkLeY0M=;
	h=To:Subject:From:Message-Id:Date; b=k/HHBAiJq9ydSjol4ZzpXX0kUk0jqEL5sK4AmrG9dMeHGESZgN0cvnAjlh4lL+cCWlsjxe0udQZEH27pMkBFkmWjHu/cmzZdrsKWWe5pUaSn3fdcV8aDjT/NufWEcWjr2LNnfAz+IChhGPmRRVwnmVhApPwXc+JIjkbeLCTrzgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jenjEd+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jenjEd+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3FEFC32782
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 19:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715887943;
	bh=Zw3iwQdzlNjkxP6/XIWfKVtGLjTpmjRTS5tFnkLeY0M=;
	h=To:Subject:From:Date:From;
	b=jenjEd+mWZVj2EZNgVouZBJvXqMZ/1hNAeQUDvlemd4BS0gtASYB8WzT4f21cb6xT
	 jCsUsOSw9U4BPyZG1ikfIzKiGA8C9FSPr0w6ut1rrzFVOqv6hck1x68IxutIE3outR
	 8rg3tlNfPgpmsXE09NjymhDUSoZYKTWiWgIuaCBE/V2Gw3ela20WZgXf1xwEWJ/4qC
	 qSVRmgrgvi3CA7Pp/tlzFdRwXqKPNBb88pAZChrs7AhBG6OhAtUBuwGsjY8FUSzuLX
	 py9IcKjYGHp2gy4vaBK4PojKcYuMOuMdF9C7XNlLruNLXYLU3GW+lxIZRmVPNMhk/4
	 4XeHyDOeZoriA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C697FC25B74
	for <ddprobe@lists.linux.dev>; Thu, 16 May 2024 19:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171588794278.15208.2232535028043536532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2571d5ce668b00dc1e2716ca70bc7d4eee3e1503bd9fd1463dfd77146d33e037
Date: Thu, 16 May 2024 19:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715887942
