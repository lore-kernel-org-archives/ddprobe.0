Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3859119F48D
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770857094; cv=none; b=bzosItQMUnS7h6Xkr/CJhARkXIVtJljUfvK51LfiDEFdz5zueYA2yDd7ZE/xjhcg7vZwdJ5kcnuaMEprjQ52/VMTypKRtN5CfPRZqmj+KZGQJxO3uHSMI+OBJcAFUzTE6O0sPq4fO+gUR4dXb37iZ1WRUXllPBRYim/2rSW7wlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770857094; c=relaxed/simple;
	bh=upWmHKfoHk0bVWyBhFNL7Bt2gjC11aoGUi+A+PCli+4=;
	h=To:Subject:From:Message-Id:Date; b=PaaTY+df7YAmbrAuyG373K9dTXOo1NxYS30hioc6tawaPNaYaTBYi1zClR56JKKJ0I/s3oRVFlXDEMoFdX4FfbCP9PPiFHfHZgCt61ZHY+zwcLYLHOMvylnFivXZYX5RvbP6/YeeP7FgS0zMdqLcNbrxrIPeYkrKL80YMKYZ2MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aGp/WGH2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aGp/WGH2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DEAC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770857093;
	bh=upWmHKfoHk0bVWyBhFNL7Bt2gjC11aoGUi+A+PCli+4=;
	h=To:Subject:From:Date:From;
	b=aGp/WGH2o6upzd1A8okT/WOMP34HTOR9FhGkJDbSn97s5UuRPQnWCU9Mz8wYlDAXP
	 DszsEBr5wb5AzaBJ2Z47tthcSILiWIy1pkuOcB+7PvyzToX3mJpOez4naQ3e2GXRqb
	 XAKgekFyu9mP+QJ6r9fjTHgtANi7JytM8W1G45y2p8T3uTtHtxP+67qhao/PZGGPFU
	 nFWxfe9Ghd60ze7I0lCHbGdQjyCnqenjZT1Tyxc5ExGrplW6ZP8O5E53wSpi7xYWu4
	 W4VErSODn0pYj0eO7zzKp3ftr3wYvY4weD7W0oNZSRgP2H9RgF93baHuKBTPLfau7W
	 58haf9FjC7kUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AAECECD6FF
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085709361.13790.12697424676461019847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e14d0e70b6c5ad535fc5eefddd22e3011317f5ce6f6fb2ca134972fa3b28251f
Date: Thu, 12 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770857093
