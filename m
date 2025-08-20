Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4075527FB01
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755716394; cv=none; b=OGosFKw/MK9/tqrvSqcvolMi5RI7I/9ZrSTnXqUpZyewK8HwBvLHvFnVkQULR6YNOYADszxiF7/UsSVJAqs7iv3g6KUcXrIBAWmh7Wm6FY94ErUV7vQvOv9i9F7K3y4JByMDD/+E5KDWDL123e6bCfNrvALOFNrAKVqbfLRun0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755716394; c=relaxed/simple;
	bh=6EF6S7qEWf3FyBSVpwT8y+IefFmaLiQuy9A8D5Wreag=;
	h=To:Subject:From:Message-Id:Date; b=jnDKeWfV3CiGYzB4h8bYJ/S8eRtu2tOazLlox7P3HmMDz53uwAc3ueXe9hbA8rWxzkuoUIbpexs8uEEuA9WJfMFbaP6TzdR57HZ35STX+SOLZrbOLpauec2iKQtiorT9h3R8i2Dq573StYc+ZdCbhlP+5cKffCSjmI2Hz4m8qw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzFEOYq8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzFEOYq8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C9CDC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755716393;
	bh=6EF6S7qEWf3FyBSVpwT8y+IefFmaLiQuy9A8D5Wreag=;
	h=To:Subject:From:Date:From;
	b=jzFEOYq8PpQxOoSBrqjEl1b9FH9q0PqKFbq7As7sfr2reKSKUb5Aj7F+OnDZR8dz5
	 HOojsZO8xkwZbz0z/KjE5wn/pyIqu0EvK6MlNSiZEiR79ZVW2JICjcJzRsdw3+S+Jx
	 0yAwMtZ1LcwL35Ilt1Vr4ZqBxDgGv7mhw6d58XDCiiZY6hIX+wXXbcyTCFg4cEOOuo
	 KyXOaLqgf4kE8/Slo0thrZYtGhH5fSR7PKxgSZEZuaOdoK+AVVEH7560c0Xll4w3j4
	 hiwZWpSBcbq431zdZI48JZRwLQ8JqtwN1qfLzbH5zci3tY/5mu/1sCjSnCdeH2VdeE
	 JUO8pX7bN1lKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4D8CA0EE4
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175571639358.11304.17715766670335152915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0b101c84b9e52cce8c64d31c5ac618421bbca88ff4470eff23dee76df4b674
Date: Wed, 20 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755716393
