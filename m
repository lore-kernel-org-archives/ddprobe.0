Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35910334C1F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780586674; cv=none; b=RB7jUJOkAxNVT5xzCK0hB73B6xKglddR6kjz36HsOxtR0gul9wiCCK5sR9cKh4zOT9yA4GiAt2MrXCdLDz5f/eQprd4m5giU7/hCbIh6tPQtmWSw/RECh/OXOvKn9v7rV7XBY+1B6CiD5F+JyH7w2qbychrC7mwgIakormOwt+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780586674; c=relaxed/simple;
	bh=shxwVaGKiOXuSWTBBMox9xxnR+PZ1jPVVdfuoKzVUTg=;
	h=To:Subject:From:Message-Id:Date; b=jzfoaOm9gRUlGAGcYjS/NwEg0/6pUW1DfeQkek/i3zxP20kfD1f4qMZ6c9Rser9EWcpsosdJEnq5Xe2HUE95t1k1gbhphOXt4FYtM2nZqBdxKselIQuEGXVA+gAozzjYvWInKHTFmEnmGvBa9v/9pST8rJ9KIQWQ9k7qeJMNT/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tLUJssYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLUJssYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8FCFC2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780586673;
	bh=shxwVaGKiOXuSWTBBMox9xxnR+PZ1jPVVdfuoKzVUTg=;
	h=To:Subject:From:Date:From;
	b=tLUJssYCalntnbqqDlRdhgoH7p9lNFhxUPkC429wyQz/7x+fk/5167Za4zKOoy+Kk
	 W7uzlhlaPTHfAVd/8SnAYJdh9hp1FS7X9m0z8WOLWW7lwLvwwY7Ay7fYyJFGE4xAbJ
	 EzJA6VBnbGZj6G8XxJFKuzwJpjIJYMdvtJOtikb5A9Q6b1O5/Qj/iGa0aIoCOVykHh
	 W1hNz0cYVNhUNyY3qLrbcnQUAuUmAUmd5OO2nisWapCCr+wlTTLumJprG93roLpoo7
	 YJRMCneg7Y5k+FiRUDdK8ZI0MXnA1tRVn9N+OCgLXN6JKE6OSSRYbmeHPf1/h2RfE9
	 X2+wbh3OuFxcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2E7CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 15:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178058667370.28922.9181137476937432637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 583f48c1fc84ec8cb1a6cbcd2609ecae6babb07341d7a5016a52d7900a06cffc
Date: Thu, 04 Jun 2026 15:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780586673
