Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4103517A31C
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757214594; cv=none; b=qRqWkgxWXGHG5BsK17ZZZoRnFiaHGVYCNWaTLizCEFn+YMhoywBMeLxBv4kvkDCh9Lcko5n7nuiqp3lgOsUrorBWMcojMo8GGYrahNja4YlIaryZP4soQNxdOUL0cfIz9YCwts7pUwmU2nwAMmU0DauOJ0qE5/D8JSuxz/LOLf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757214594; c=relaxed/simple;
	bh=3uftmkfn7jTpvpXUCqV5t7nYiz3k9vzPMcIc48H9x9k=;
	h=To:Subject:From:Message-Id:Date; b=ZC3QjD8Se8Gr+roN+l/auQtlsAc1ShCSWCfjqoI1e9BnoTao2sEgw69qjTmzMrM7sNqTez46fclyoNHOHFwfXrWq0/NaXA1n4h9cHKX1lKfckknqHp5zJKtmRe858tPyE5tw2lR26T2q4te8BhR4+f3U076lMgt2aPqkCHVUvgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4KME2ix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4KME2ix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B115BC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757214593;
	bh=3uftmkfn7jTpvpXUCqV5t7nYiz3k9vzPMcIc48H9x9k=;
	h=To:Subject:From:Date:From;
	b=j4KME2ixFX8LIwobZOoPNADPCUYFAI6fLCZ0nENh4YHrhf1ZJuOs3MMhYudtYjfdo
	 1f+rqzAcAsG9jrhFr5thmXiYk5W/tTYOaTsn0kw6Qk+N6dgH3NknR/5TDipDosNXva
	 la3tVy8iOrGYdP0puh0mjrZxnbqhWpNqgsOWJ3I8pVwJcjFdwOHpXjuP076mQlAz30
	 BM7ocK5nprnZGAeCgYfzbFmq4frVThG1xBfEeJ/LgbSjj02smpnOohu7RsMtR6H8uw
	 oiCFa/0H1GTiZWK4DX4Re2W2phQ4YvmPUJ8OMBnTgki69aJni3SzivhbLn44LQXwDg
	 aql8DlJgzXOVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2B4CA0FED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175721459361.16923.8988973972291135870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 497abf36460a56bb1241a135359f3543f9e2f907a4a544c500c2c8f017ebcc58
Date: Sun, 07 Sep 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757214593
