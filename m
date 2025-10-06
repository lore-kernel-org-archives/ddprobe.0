Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FD6221DAC
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759773594; cv=none; b=blX+gfWeQ77XAa9EnhYj7r0SouWAe7U4KDaibbKuUg3KWzOJfNiv3EP0egZGYFnsGPoXMPkumQeN+A3v/knIltPBgL3q+petFoPt2LWAuKn1jNJSDF6kLnxZoDRG+2ttN08JV2yJX+qPFeMhcpNG4sulDe3j6hnaHh+OQAqtdsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759773594; c=relaxed/simple;
	bh=wBmt0x8HIIrgBjMq94EUkxZjvCYjnsgDy4O+sZ30r3Y=;
	h=To:Subject:From:Message-Id:Date; b=Y0JFHz0BNsiw/boxgQlqkt1vu6OzmC98m5lUuCcBBSsjs42reCsz7nUYGTW43LEB7fUfET27+9NSZcAf4VKqTXg3m1ceJODHLMbjrV0H1+EYo08aFLxkaPbHeUqQNN+4JNHZ7YuKQggK43jl7wmKyZxOgcCRAX3vw3JIyhosEuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J133qCU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J133qCU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02EDC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759773593;
	bh=wBmt0x8HIIrgBjMq94EUkxZjvCYjnsgDy4O+sZ30r3Y=;
	h=To:Subject:From:Date:From;
	b=J133qCU1QHMUAi0xOFUVrpuNsmrFHfMRPsdg3GpTyR3lQkzfG7sn54Sc5QJZMEnMk
	 rNxwd1Ruky1Yy40AktMf9qlMSq/vsev/y4yn1J2Lwaja2lgmR9xU1GOPeDnvwW93U+
	 BmOS4BPFLmsQi+h0y6wjQ8bO0IIJsBd/Miiu/SkVCA3qB0GApf+1QEoAmj+K0WgVBm
	 /WAGgC64UWRCKdiqiWBso/5xVaqWX+ubTIMmNDmwNBfEJfj0t0uIvf7b2esPpzJStD
	 iLaR8Cocra/8lgfB4tqauM3q/7x8WH1oNQtSpLOqV2g64YkegllutnDoAObW2zdraZ
	 Jbn2j+6EtH/8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A8CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977359357.17627.7460076288997797899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b45af5e3c7cf8a658ca397ba01c70c6cb068a6c1a6e1923ea886dc014ffb457b
Date: Mon, 06 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759773593
