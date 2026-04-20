Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B4E0126C03
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776713254; cv=none; b=kCKynnaA7gCMs8r+ps3hEo/yFVZXvgLFVrEMmBO+T9nMwlOo3OtyxqaH3aR5LyhIZnkaHDOWvn4Dn+Q8a1+q00CHYogEaNQpOcvBJMLJRhN1M2LE27qsfaRAi3ZHu+UtKz/cSGyTbQx4Gz7h5LsRFtbSrLhN4CcMfnwA0hDLm/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776713254; c=relaxed/simple;
	bh=OhlvFm6OZpt1UqEzmmZWAFL9v4fbch5+xUtlhuUMc2s=;
	h=To:Subject:From:Message-Id:Date; b=HPHvXpdI28692h6P4pa6RlZ0lxeIA9/pLIXLoTbgvH0iSkaeqigecYBj6gKoMr+gsZJsNY1avGyGxF7b7jJ1ESI7+U/Eh2MYKWrxRFT3PHlHUOl9+R3ll/fdmMTT7n44qGzebrRvoLhAr3Dw8bd0Ay40NsGiunjZcjxJnM4o9B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rWt53Sim; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rWt53Sim"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CF7C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776713253;
	bh=OhlvFm6OZpt1UqEzmmZWAFL9v4fbch5+xUtlhuUMc2s=;
	h=To:Subject:From:Date:From;
	b=rWt53Sim9Gk/3ECrqkdl+XYOONK95zeIp4pJfaKmdaWhJ2/s1vYM8ByvP9/8Hp+yx
	 XT4hf+eMoWZlcRHVXm6ncLkH07GHjNgn+PIDCkO82ovD4BY+q0w/TVrYZC86lPYCZY
	 hFkCISTN9cku8IiMnVe5ZZYQxRHSwk1grs1uQdeupOMcg5RorguZmNs3GISyd4cN5C
	 NOZpGEnx52DO2okliV16pPJkCYY1z97KtbBOIJEXQzY68Txov3oqyea3m0nMAsryx3
	 Ovusd0wZ2RSHwJWKrNo8v2YS0n9oZKI7pOk1nOJNzr81jh3nUT2+r4BU3ScDxRl7xz
	 g+dG5znD+bCUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA375F5A8B1
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671325368.20447.2585542352027404124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92488aabe5070d40cb8bf43bc9d8ef99fd23c5ca480ad617e7c94fc02ae08c70
Date: Mon, 20 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776713253
