Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C4CC4F215
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724687754; cv=none; b=r8nGsZcXJUVaMbqugpsm4NKVBaq4apJxTnjUlWA9OefuWBfbS8n5vVrNPArnVvzNhtb0RTEfYbxRe+M03S18MlpML0GH9QanwmzCXYDuQymmFvvODxo+zq4T/XPVRHCO647bZKjC7u5BaU2ZeKYjaM3DT2pdV/Hew7l5IfPEQ/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724687754; c=relaxed/simple;
	bh=dm8hpQMo/E0g8NG0SRDbx8lskl41bPe5r2OwKpQJz7Q=;
	h=To:Subject:From:Message-Id:Date; b=Pax/2YtC4+9cIzbWHyJF7nKnG5QqzcTyzux3qwk6qQvkEFZERmYDSsBISa3YZ8w7PTTqRaZC/eihwMG2YD+C367KkmNg4n5OsypyoIetK9ZGEK7i3zljzsWkV0PCrQN+Lfe/I1S5YVP8xgDtCUE6zu5TNzAoDmR3ZoN4WR3XGAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WkGR0r0T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WkGR0r0T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA848C52FF8
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724687753;
	bh=dm8hpQMo/E0g8NG0SRDbx8lskl41bPe5r2OwKpQJz7Q=;
	h=To:Subject:From:Date:From;
	b=WkGR0r0Taii5ps0OeprueEUJt7UWNPwUm0wpvi0M+ncCKNe0XJVNWX0kdmshYdcG6
	 hpQ7zzg3MESuauEO8Apk/fJFlz1AGgHUvVnmO3RLH1Z33t4+sh2X6oMwfvdhEJWHoe
	 n0IHK/35+3nt+9/GIzgT1zGW8KJuUnYPxhOTBpDyrqd1CYgJd+vs4yGqwRL41XcRmb
	 WUOg7b7ibqhiCUd95JcBV5C/V6umCr14PhmK5068QGtWPEoVpErgBWR1Wd+8n6jvch
	 ty6hnFawgEF9BBx6Pf3TJBlM9abRecHl7dNCaxfF0iyuIrU3V90p3jdEruqYhnNEk5
	 xD+xar+Oc7QfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A46BEC5321E
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172468775365.16706.8003916822304469175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a326333a3a88e09f4cf6a2878ad527a437e56b94ff5795ea716073e9cc1d701b
Date: Mon, 26 Aug 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724687753
