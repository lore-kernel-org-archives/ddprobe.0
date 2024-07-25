Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 273C837B
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721866554; cv=none; b=Uf2o1JTgURmT0fXtuhiUu/ZuSngs07rNE1KOc5iIvy+qTDOHi6ZJjEeWbyTAAzUAJoocGGOgmIOSrV6wjbpYSL5CHT5G6lENfA/4uzTxKaBK8D7YHx8h8geXHKwi1zAQd6o4j06liNkLaQdWOfcGAkvxV0SHEc5mHoA1EY8+kPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721866554; c=relaxed/simple;
	bh=vy/Ip/W9iIK84feG0V8KLHssDhqrulZhJBbEPDoKXd4=;
	h=To:Subject:From:Message-Id:Date; b=JgR8M3uXOonqL8GOVywuc2O3ZXvETeZRJJj1qLRihpofmCGHSanAVK/Uz4I6jX0xNHpSj3+CDSxsyA3RCQIQ5SZ+xh5yphGwtXJ7s20SqdOVVJmS6AcJK6PLFiOMv7VBgIDafW/SSAoR8960Lx/EjwdYKaPMx3MmYJgsUJMU+ZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IyR7rxWy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IyR7rxWy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7602C32781
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721866553;
	bh=vy/Ip/W9iIK84feG0V8KLHssDhqrulZhJBbEPDoKXd4=;
	h=To:Subject:From:Date:From;
	b=IyR7rxWyitLwjWwPyZbqal2yTWfjIFAOZ+LYL6n8YPb7xH+HBi9f/6mGQpWJOI44H
	 ojIGXuyNe8MrLDzqENK3glCRh21KDsOn+owf7FI6MYndJlXxOG8Jc24GZHjhMLwCNS
	 wY6j/f51DMFX91RdbQio1SdhM4YfKD/T468I9yDqkMqaeZoPNpQdFVASsc5gOiflFV
	 aNUz5vaNOwDiCcIHQMpbDPw/mBTc8t9+zr9VvpRiWvwuE6kucqc9Ks1XkT8jR3oJTP
	 2ko+Cf6dyTPdl5kGX+MDmBAuXw02Q6F02FB0c+2WPSnXKZUmff9eGjU7S4TOesliCU
	 eVEllKDDp27aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA5EC3DA63
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172186655362.7913.10187879619843280421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0efd6954298a50ed92244c0d96eeb7211d2441f2eb7b6970bffe3f897dbe37f
Date: Thu, 25 Jul 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721866553
