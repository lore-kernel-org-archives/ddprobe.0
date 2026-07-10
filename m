Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B79372ED2
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783703914; cv=none; b=OJ5kwN63ipnJ2Fifcn6Eu7UU7x3uG8bbSGE5gN9ufGINLOYIqwBsg12sZw+TpUhGQwna2nRo1gXdl1edBf1MYScxc/5v29Iqh24LbxloW3Qw+6dR7Tmxj90skU+I6iERjC82x2C7YMy9RgJNRQGMe2UMWX8gQJjRTTjwYCnyEIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783703914; c=relaxed/simple;
	bh=GmGSoIqvxOu3iR9+Ph4JvA6R9ZvRAqilaSoumbZksYA=;
	h=To:Subject:From:Message-Id:Date; b=L8aETtHI64AvzL9TwdPbejRCJRR1A9tC1IU7yFvL6k2y+qwGUzEzzzWiYaU+lk6wwhuUMPNrfZEv5venRk6mMJL1V7hCgvMWsw9+6hoBXUGLIOjP8PzlDnqneCCQloZT2X8KBuvKfnrgPaRYHWX/yZ29NYS4kQmlknlsnMduSdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q3rATqwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q3rATqwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA269C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783703913;
	bh=GmGSoIqvxOu3iR9+Ph4JvA6R9ZvRAqilaSoumbZksYA=;
	h=To:Subject:From:Date:From;
	b=q3rATqwXaXcQB3+KD4NzVpEXXw3H7jaP30+iq0XzhYqm+tFsTnybjEnNdHAcbf86q
	 wKjLeUb5xdtFT/5I0CRT5p+O0pqCEMfY22pQVvCl3cho33BBNMai/Ro99fWmraPR9u
	 pIcDveTDAZKuRyDrUUN9A6E1Q8TYF9dW9t8PEZpLpqi1CeA9isJBdPRfOl8cOMUvZR
	 4uJtveLORU4Vk/n4etSlgar62ffUkHrL8qh8P9Kat30BDXlCQ9BFYc7wLaTnYc026I
	 Dwol7sJN5YmoeJj/Zj4aOkSXgh+deVqhuR5P9fN+ZcPr3Rn39wWJ0fnGpGjK8BrJMB
	 oGwoDIBfUHDEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8413C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370391368.9613.14379895084723521329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41c4ad2e1e85aeefb926234c9e173a1d9c2e6740fc6e0a5febb73ff4e61fdba8
Date: Fri, 10 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783703913
