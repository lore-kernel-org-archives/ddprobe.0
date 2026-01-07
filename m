Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2880323A98E
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767755634; cv=none; b=Vr9d4WyMKL1Grv0Ng+yh2KVpff0oCXECf5LiRTp8CS3My2I4HBNKAb3orGXqj2wphZtrz8n89k1i8ufayWjgJZmvicX20xE9zl2dWjJQIvZ1Q8qeJcLIyY7PemHH7vfp5P3kmtQruV5sN0WHM/Y5ol7cR/qww6xI9F0VrhrSSLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767755634; c=relaxed/simple;
	bh=ZVAwRnKmGajeVf8kha53NJ++k+kINmh4wWZZf+hfblk=;
	h=To:Subject:From:Message-Id:Date; b=JeuCH1Yd6zgVMd1m06cxv8ZIZPtC8CrZjXm8WPmgxEQqygrbmOtGLHyCBVZ/Ia+HPAFMEmuMzsVrJMAPUCey1Mep03fzkjfxmWn9uGrsHcT//afht0lRfiIc2uhmspH4Y0zza2EZ5VmGpfYt+KEIVklMT33AO68SJZcFwbvpCac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l7EDoU9l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l7EDoU9l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1272C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767755633;
	bh=ZVAwRnKmGajeVf8kha53NJ++k+kINmh4wWZZf+hfblk=;
	h=To:Subject:From:Date:From;
	b=l7EDoU9lQOwfkuqb57RgL8/RdHJ2zyMZb43V0FbS42j8GBAEJPvyOHTAMI+VOZNSN
	 PijfW6Knb5YmO4LIM+5vq4y3EEsZZsMEglo60Z9wmv7bQr4at6E+Un6VG140b8D1BG
	 LRqjMDAW5LTGcLLJhkD2E8Tl0tEZqe3bD9Z+1J136v0tmKpLjiP5cwptOuymxtJ6yM
	 nhA3+5reUg6rgFMR/qomcE9cjQiCyR+0DVj2ykjYFBKQuSxQ2OWL7LS7RdqIDy2uu0
	 aUdMeTSCK2yhxqchJASQfj9aDHomuaa9VrI2U94Is+2BgjJWYX3sJYrXIF9BjeT+WK
	 3JCzMMd5zFiHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDB9CF6BE4
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 03:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775563358.1622.16742901875812309120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ffa0c0a310a856b4abd1d486f6995be15f36b7140c7d92ce8241cba9c06c10
Date: Wed, 07 Jan 2026 03:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767755633
