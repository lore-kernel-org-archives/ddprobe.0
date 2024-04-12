Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0712C14F9EE
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712953763; cv=none; b=fhGJZkGczKQm+am6lOSuh560IXQqaNp7+fw/9KKR4gFsB1Dwy5Mw5px7LYz1L0tE7nbTGBn9U/Rb+UxzoY/p8kuRgAh6VHHMAHXHRgvSGas5+iLcsBdS8dVbG8Fzt0hJ0mvxTBBxdI705gUAUF0JJDCKanB4GWIJj5XVjsn7RPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712953763; c=relaxed/simple;
	bh=pjGXi/oro9rS343idrJUtZ4EGtflEc8HvjallP/9TaI=;
	h=To:Subject:From:Message-Id:Date; b=e3Q9Kz8f9uwX0cGtXnqi1KS2k7gveHBPKD+XBYZe06Wysvt+XQeeilkfCY+rTjcQ5AdkHawJfr59zhRyVxX2VBMA0by+mdMXuO6H4xFSqjGVK3oaGgFwrrRiEE6d8/akL3kiWsWVS8xeJUrnpOZe1z+2NjPlBTiYWkwJlI7oiQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hwrdkd0P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hwrdkd0P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4880C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712953762;
	bh=pjGXi/oro9rS343idrJUtZ4EGtflEc8HvjallP/9TaI=;
	h=To:Subject:From:Date:From;
	b=hwrdkd0PvAKdxsX3dhvbeechvTprpdzSd5KSbMoF457uSGYzgEgM5goQXmdqiWoNw
	 GhObmb7V9S8R5tvxOVH8fiDHXtPaE0wIzI7ISbdWOdPdHXmDedl3yBafbffaFU+FHe
	 xRUH5qtRUeoCH9pcepK3dMsD63tNQN/cMDq9uhZTwFykETz6z+I2DxjWg1AN5L8EVA
	 ngg8do3eQD+d5XeLd0T4GeWXtukLpxNgaluIOt/U2DC3Yr8JmYoa7TDhipbKUU25d5
	 whhg4SjhBuFjZMjbPsb0inBYYzcz9YuiQv5gAFpGO7npj/oQrmHO/rkU/yRp4ZY1kj
	 qQffvpAMruKoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C42A5C4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 20:29:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171295376278.32681.12057068398392870488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a96c1a620f99903718fe34f3eeb6bda3cffd623975c745338a1d36b15f079b6c
Date: Fri, 12 Apr 2024 20:29:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712953762
