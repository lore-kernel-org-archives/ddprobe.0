Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F6E1D5CD1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782526714; cv=none; b=cVcUreKDucviBY3RWrIwdN0uP3lfptx0DOw/qzfivwCLs+5bMS1BRgzyx7xUQ6oUWgERVJXax6ChzgsrTLGbDWH2chF5sdeZ5YlE7VueN3AfXAeCN2ggXmGOTXkfj4hZp2iwBtT1CuOEhsIpIA088vIxpcRDwAu6L8a8wqE/huQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782526714; c=relaxed/simple;
	bh=n+dY+Z2EkezF/bOcgj3Vgoz4LNSUH+XgTf5AXv0ZAWY=;
	h=To:Subject:From:Message-Id:Date; b=JVWGXpj9gURawTkHTN8OvHux3g0mHblCXcmykbDyZn3M0GdsT+8NamFbscK7CbVmN2Z96qwA6VcciM5BH8cwCxZgfQOEr6kk5n+6ZvNwP8EHLnu0G7t/lVi047dhNz0R9wAhkw3uLpxWsQPXI+3/3zrBXo9BKhjGw6cy21ig+zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QluN7VJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QluN7VJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D358FC19425
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782526713;
	bh=n+dY+Z2EkezF/bOcgj3Vgoz4LNSUH+XgTf5AXv0ZAWY=;
	h=To:Subject:From:Date:From;
	b=QluN7VJQxluOhLhlO2Otjn5ZMg5zxPAWNJAor7C8olrEJzPbFBGLz9UV4PhIShibz
	 sRhXCv+VGtcQQ+i4uz/qUDWCdCFG3RNgJUhzVNyKwZ6cEZDyzWKa7fR3Jj2rgZhtFq
	 S6C2ywfCMvG2X8Nk2CooU+XamVrfWb81Xjp6gnh4REdZFn3685J6ZbqncKx7mUzTnt
	 WY6rpOaSONBvl+dpsQ5sxQEkt2VmXFhNxm2wkliSdzDmZ86dqNTzztZkYPBPpYyhMs
	 37MBxoVVM6HMJP9YKnZAfgoTf9OQXpu5NUX3QU5GTHShBWjvYLZlMLKPKSbxg3Snb5
	 JwM3KxG24rXhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4009C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 02:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178252671370.23175.1881459842707422120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13aac94994575e6da61295033eef445cde9a0ec709b0c9f494925cb7c6cfc2e3
Date: Sat, 27 Jun 2026 02:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782526713
