Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 446CB3010C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749526194; cv=none; b=V72Dl3ssRo2YHtQEl/elXOq6ih94vvPBy9eTYUb4KJxibNxuZTk6vyqhAd/qAyIDCDfXFm54eHhO68oWKIY4OUhJXuU/1uauEedZJEN7epopoJyI3swZDrYMMJbRnX74+KZPbFpNfsPEUXh40hNF+qShOggXo/XW37a3fQ7m/54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749526194; c=relaxed/simple;
	bh=NW30C/sJH6CShDFmnAQkE1HUFgY7W9xXm1yr8v11yn4=;
	h=To:Subject:From:Message-Id:Date; b=FB/JiL9fXDq39+PlFdp8tprbwDJIEK5INVk3g24vaCSn/jbjGy6fkxA7ubGqhjBQJAtzpnZezcgOCS2a8pHSUngAsknA5CtLDkc0O2Aob5bWKawLsdmUJ/F5B4VVCik5O9wDJfZkLPMv3j+tF1n6QrWNdCPEJKKQAuOlIo6nQbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR3qBtUt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR3qBtUt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBEC4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749526193;
	bh=NW30C/sJH6CShDFmnAQkE1HUFgY7W9xXm1yr8v11yn4=;
	h=To:Subject:From:Date:From;
	b=KR3qBtUtJ6LACJp7ZefX71PRzDpmOQRAVPLx8P9BxN8A6SZQJ1HJt/CTuGPaY+Xz3
	 rKkwjeJx37zjaG5uRDGdxHM+vIeGVeLjaDc3KDZLoxiVHgQUbJoUeoK3F15CGYWm7w
	 dxCkyRcVpx10ttK4KZe87viYuH53/pK6FPgFrsEBiju3etyFeLAZHGDUZkKbhNI24J
	 qLcfC899ynlTRV9e/57Z5qr5SffyN19QkeRoP5goqg3vojRP81GkDAG/5dDj6z7zc2
	 IU5IDoapY1ETDKZKNApQWLR6hFmBVhyjqGVSJ+ZgXrDX34KN8vAaYfoepHnaBmRIRt
	 Mnin33d7+PFbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913F2C5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174952619357.13926.465363524736303101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853e2ce5f523107e7b8d104a67439fbddaae92b4c98f3d9dcf52020a0d9b1ab9
Date: Tue, 10 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749526193
