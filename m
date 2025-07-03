Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E822F431C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751572194; cv=none; b=ty6FOtNKPDdMyuZoEfof5TLW7JoaRJZSvqegmLvh5sPe4kloBcDvp3DgeqmD+ajocg9KO0Jrp0kFuT2qYDZRqSuefqwbdjUcLR1C6oXgFgvRDvzysvI7IJvjcesHfTO6GizbUZBYtjqEzZrd+4JPnpy3uemqHKhmE76/9H8xQ2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751572194; c=relaxed/simple;
	bh=dgJIWYQeOISTFxFQIv36U6fbx3KzWnnm1Q29SPrWuYE=;
	h=To:Subject:From:Message-Id:Date; b=jDK49AVfdwUJX0w6QsbAcwEQ9WD9/qW2Hs3Q1dnaycGII3p5N9sjhthDOHFsVGhQNu6Iaw0hCap+pVxKp7yVUhnNj25Hxve19GH4GXu7HLN4DMTMUqIAd+SvRAYBU8YFYjJzD/JfBWxZaLw0TGL7rn4y7tG9cXvwsOHEnizF6TI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzX0uRul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzX0uRul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B74C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751572193;
	bh=dgJIWYQeOISTFxFQIv36U6fbx3KzWnnm1Q29SPrWuYE=;
	h=To:Subject:From:Date:From;
	b=FzX0uRuluJKwcIpOfA8TL6GdH5zFdHLQHfvbB5sv2hFVDy8ZZmA14lr+O7XRVYwEW
	 LyVx6wFcAdts2zzjqNZRkwsPeHcEEYpdTpqjAeWso7CF0Wy7yV1527po57PzpJI/CL
	 dvlQ3/N2V5NpmiZ8qNRHO8bH2c6oYtq2v0oLJc7jnfEDiTAJEb85FPfU/QV8aNzLln
	 jscQ1JLEDQHUzJl2ATotVJ7Q8pBZKqHUxDnM6fD6QsS0vB0UDstT7dTpRiSI/GXoDx
	 0Wa4/Alfj4jV6vhzUKOASA3FciZph6jsIKWhorRCkQgd/IAfZTGjnhpAopCnWRzgSz
	 6sb2oJna4b6Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED4AC83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175157219357.13113.16524528444890140332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f2f569280cdc2ddac28bb2cd929c215f9afff416896b50fbfae76318aee659f
Date: Thu, 03 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751572193
