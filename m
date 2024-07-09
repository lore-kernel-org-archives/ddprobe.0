Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D72117B045
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720549583; cv=none; b=OrXMuyqF1UAGV2sEfl5/U/Q4veiux+OcjuMqSzK8tVcGRZ+uVbhQGG1/1nS4M+oFUMuQVMgE8h4d2a1DQnc6e4rI6efStyRpNTBxsdzC7yoIxzUSeCYkpHIRY1fLjT4+Vi4cH5YhqTbXMVyWVTZzr4aNUWVzmOh/Erx6y7Rax9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720549583; c=relaxed/simple;
	bh=whN+3Fp+adfn1gHbcduz/sDqfegz4MQxVge7od1kScI=;
	h=To:Subject:From:Message-Id:Date; b=DsmlhI+Xkf/7jniXWWJQ3tXh6vZXzbd0zX9Cy1vlrAHMWJvu9KTNbOlMuSE/h8TyE6PYvyEYyF4GZnkFIbeEt8gX/0YD6R7H3lijlrogTslPV7B5h9r0QfEq/6C4YZoWdNk4p62DUS9PvmS8nFlDObnCXra9YOcSwHfgPbCKUOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sMjrwcBr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sMjrwcBr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13C96C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720549583;
	bh=whN+3Fp+adfn1gHbcduz/sDqfegz4MQxVge7od1kScI=;
	h=To:Subject:From:Date:From;
	b=sMjrwcBrlYAb0Xyw/heaMwviOUDyiGdOpLwJmJRmrHAKp8TIqoytDZe+zzrWukDbp
	 /10zFzREFqggMRgrk0yuDgwZEa7GVWz8Kz4Z47OTtQEg4Q6ehWTxVhiclDyRQOR5Ev
	 Pcda5Nb8lIujQjEZ2m4A4HP8bQGhHyqPLLSXAuIYH6/LHRN4yNYjHgHDgrDNwKmEN/
	 djEzOykfMf1Dw7A7mBdDoV+U+c1pKFvfRZ+8MBc/g7Kx3DCiLQu2pXscRSb9pSV+aQ
	 wt8CmMwwJqCckwVXrZls+uvB7w+u1tkcQdwey4nL8mUMH+PHIrUTWYDSaGJRQTd6Dv
	 7WJ8ht5MFupxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3597C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 18:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172054958288.9502.6765567211070720997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d95633f63c9967db023158377ef798e2acf37fcd8dcbf5a4b2521446e6bacbc2
Date: Tue, 09 Jul 2024 18:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720549582
