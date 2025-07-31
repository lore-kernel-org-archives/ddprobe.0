Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CE9A1C5D5A
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753975795; cv=none; b=MEtI36NzVAhbku8LtmVAe0LtrTtO7iMwsvqrOl6KjxjuaRv7Q4wnGzqPaO5rcL0TURNHvixEwMSSE6NYxkjaoYAgjiDRCOlaHeu7sYygmJYv6nbZGKl+ju337Monfr2ysBFyhG0rCLJr2mwTkQsogYaMMi9XCnIm6RELabTCpfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753975795; c=relaxed/simple;
	bh=xQN5Aos9kzKCkBzLSpnPFJJhyqCFqAa0dfYXjDUzgYA=;
	h=To:Subject:From:Message-Id:Date; b=GJeBMgq0kXgXgGekTT9mgXyFEM8TyhZ9WO0T8FnAobz4ERokmrBQT0AhuoWtM588j85gD5o6HNuHbHsdhWWQEaP3G7+ULrsjdpI0XIkToOWXA7QTSPn5tOiRzz0EIXW4ni+lydrquMDNpK+yhwf3fs7jQ8QqYc6Bl/KmaJXAGU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tw9uIc9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tw9uIc9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5780C4CEEF
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753975793;
	bh=xQN5Aos9kzKCkBzLSpnPFJJhyqCFqAa0dfYXjDUzgYA=;
	h=To:Subject:From:Date:From;
	b=Tw9uIc9v9hIfAJP2QZiAQlPAkEeCQNKggvY+8kXts+4qqkf8ZCWRhA9/m21/XMpCX
	 fHq0FgM84YLDazDfZ3rdTYsbo/j1E1hhHhWHW5Ib4VkJ17BqczIsXGN7qFbmt//rix
	 N9YjMJlTh0a6JHPohOxR+uy34c4FCEua+nkoEcFB3VgkDTY2ALGlMthOeOH4hFVh69
	 N0gKCmEekMq53HE5xs5cvxmuS08DksN90CyPsDaYiRN81d3Jqx2XIZKbI/FqOhxMXU
	 h4wAfTuxLVPU9Mf2P9kIV8ylxnhA0HmPkbnfYKSwvxsxVw5JmEnpb3QpESOWYxWMHt
	 qtLVXRQ+PXT1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90571C87FCA
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175397579358.2816.1163528492812771710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2524e0559b995ca409f22d40160251b5b9c4f1d2d673770c55ae26a34e0b8be0
Date: Thu, 31 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753975793
