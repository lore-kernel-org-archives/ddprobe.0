Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 383A828DB6B
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747281594; cv=none; b=eBhGwWdoC30W1A8XR2T+MN0GAbcvob+cnfyCjWkNL34t9+bMKM2iwKk8NOdQziFDUzYPIB9bUcmOUxy00Oin2ygSHABKODVlrZCD+cuSiqsulnMudg3S19u0FmXMsixVKUJB2BSjtIsuQHcEZIEKP8vtpaAVvIxc6HMizanrqrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747281594; c=relaxed/simple;
	bh=MrG6E/KEZGASq3lA57eSbr6xiGkszwTobaJmYVwrepw=;
	h=To:Subject:From:Message-Id:Date; b=o8Uok9nX5hetR7r7IJQ/PTRdOZ6FyrgJiTxcANmxvevUvDNZhxQdF9z2kAfjZqkjYbYhvW1kksFGNJWTRAHAI5nRDiD1pCjTLfGpp1BTTyH77gwKkdGoEuibMWsXVZmeMlKrGGy/gwVZPNlyP37dfP3QXvM3mNnkmLTJVF7b3pQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G8Y7lZ7G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G8Y7lZ7G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F23BC4CEE9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747281593;
	bh=MrG6E/KEZGASq3lA57eSbr6xiGkszwTobaJmYVwrepw=;
	h=To:Subject:From:Date:From;
	b=G8Y7lZ7GWEA91Dja7peo9NQ6Eh1K4jiHXJSjqDnBhZlwuBwhyUUUf3K0fZcYVEBRD
	 BJeyy55wEfMvACQMS2P/9ROwMYvqlWhDvT2irxNLy9zBSdeNwPShgtW8QyVKkb70kn
	 fWRya0YmkrOFb1xYkxBYRp1BckOpaAQeHF6CKZV/2rGv/lVuq8qgKv9Z1BEAZ2uVul
	 62WlcNhcvQtAuAQq8RtDk2v6Y5xF3Orxqa2KsTqipZAiKx/qINv9TMmW7LvU/ehICI
	 JDk8GL30UUCn4su1MoKzJiEYEl2xYdy4wdZ/sKaKU9H8oFXT+WBab54dqTghVXTmc/
	 qK4KoKxWcJ+YQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F122C3ABC9
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174728159357.14878.12007535118060099943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba45ffe0a0bb3055f921467923ee94268820e3457b752d8d33b371d0b9728f31
Date: Thu, 15 May 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747281593
