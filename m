Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3169515624B
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756033194; cv=none; b=BJCgCf20fLEUVnRK0W0nAg54ykVMElPKBeD1vVZc+NAx3TvUWcGDMocdtlGFtvF/31u+0vcY+OwfG9rC2xfj/9cVzdy6I/8XEaT1RkbQVRL8KfoaddGYMujAeXnH760E3UCyhU7paKHZOQQdwZD2RD/KDOMBA/JkMvi99qVG+QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756033194; c=relaxed/simple;
	bh=p2+aYxlE7OyK9HdNVnks643Z3YT7WQL/Or7VLS1Ftq0=;
	h=To:Subject:From:Message-Id:Date; b=H4Jxxo6IjY3O0ueBzloSaD3AU3XwCZIoTRYq7zSUXTgiOIMEgS0NwWVtxSj6dW6blCw0sDPY3siYdMobWWZ8f7kv+qs8eltKDmzEII35EFqTC7ZJEgWMi/nUr86vl9Jbr/E/I5ORYx1ETBsLH6lqtEf4MjKp8rBWYDN6y2Q/iq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TLeI55em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TLeI55em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF60C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756033193;
	bh=p2+aYxlE7OyK9HdNVnks643Z3YT7WQL/Or7VLS1Ftq0=;
	h=To:Subject:From:Date:From;
	b=TLeI55emgdUKfzhibftasDshWb3GMmloEbDWZmtcLF8ZVFKamyhW/JslGntRX+sSr
	 s/nni3XhTR0zdNpV9eig3tNWd09lb0QwFu6ipR8xF4m31dJPgoC9fCe0yysybgTEqM
	 LFey4NcUS/mUjTs2FjV/nGt6bWSXHb38cdQZelUpjy4OPI9E/TmWO51mNSYwRjLvYQ
	 6KHVBjcT2yNu49LbUaeenLAY+OG1LdVqozIpGD0zHc7yKUyoWM1l3cSVyzbpJL1qIl
	 DoE60wj//Jwi2FCarQ4IjhZwgHqyLGAAxEKQyfPmvv/OBTJcBMSiPzbXTGu9y8J1Wy
	 XVUGK4C0xMfTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7F8CA0EFC
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175603319357.21195.4068455073923132966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 333ef1ddf93c870a60e0eeed532814931ccd8bd6952852c43e3863a66318fb2e
Date: Sun, 24 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756033193
