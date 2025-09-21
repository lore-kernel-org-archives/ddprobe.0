Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B00DF76
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758468594; cv=none; b=DK7gRj7zhgMNWfzjPuDrMeyiJkhSOXGIrCCMzta+An4Vgh8rZ7A2jRIYOwwCj1c+/XlXZXvbNpAgCgQxk3vPLXwp5XOh1m6FlkYTZiyAxeiOfMMtuhllakOsrEwPPDZiteeu7szgW4CrizVYl47zTSF5Y+LklIJkfluY9RNNyGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758468594; c=relaxed/simple;
	bh=7nw74ShYQae+mjC93gOxnoG/PSQkBt7Zf2pcmcgKmeM=;
	h=To:Subject:From:Message-Id:Date; b=QhK6um8n6jyouIwHkvl2VhXCdvv6zPpktFdbJgWu2yvHAni6fykcY+xlRdsWgpg/LQaWWTGjAOcUWC03Oxzf7nBWie20uSI2ErdTsO5m+3wgIVnqrK1oZJKd/7htnJaw1getPLXhruolJY3kKfYWS7jZvMt9ylJpNESPvW4cSUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PQqr0tyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PQqr0tyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B14C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758468593;
	bh=7nw74ShYQae+mjC93gOxnoG/PSQkBt7Zf2pcmcgKmeM=;
	h=To:Subject:From:Date:From;
	b=PQqr0tyupDSqMgu6IeGPKdDfX+VR9EKnGffvAOSu3J8nHwI+Lu/bauzRNYQkcjSl3
	 U/ny8WeSKLnegOwrjrTjSkUJA9xsMiQGYOwNUsS+eHpS4mkNJwa7jjTDfWQlxICKR6
	 rRkTkXE9qKzECrq31tf6gR2/QkB4Faz0pmO8rfcfDXjg8bU7iK6bDBPAQtbblusF5O
	 /Zi9pu50p9SLQvCwQK6CDI5h7qIl16d4t/Gr3aMqFy8wBlOjR5T4FKHnCTMYUTc841
	 d5dH/3rYkAb1HHTWPYuTTjrYqAR70JTgNnltY5DFjTwzBfFPFzZSfQcQtVB9uQVwPy
	 sGwdV0Qjqw2nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95518CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175846859358.4436.955180224905177964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad679eaa6947ef20b30656ce871e1f839fb1f0d6861ed9dad75f934dfcbb0759
Date: Sun, 21 Sep 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758468593
