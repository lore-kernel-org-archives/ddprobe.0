Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E0B614F70
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790410234; cv=none; b=ZOWqV1Vc7bs5VgeohJDatzoV4twr04GEemgZ1UbA605ztDGZ4TGyZmFWfxpCW/kQ2urqWf1epUWABnGp/P90OeDglMPjs3Tor8evwSjj3wCaQwLXvvxFmU9tuBwEaDrGn/F1nHFFDy+gYYvCQdORi8BRnNVoSKjEFd4EUKqWX9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790410234; c=relaxed/simple;
	bh=UE/73XpLh9IqsVBVkd/6xYUV3NydRHP4WaJmKOrmyXs=;
	h=To:Subject:From:Message-Id:Date; b=nbTtnx2bYOV4cjIYoMnQ/m7pfg7Dsrvk4zMuKOBl40A/YtQL7L33xw6ZCoY1a4xkK9uads6pGIA4usZ0TzShVbFiNrXkvBBxhG6RfEuu+zwR5h7S4IUn6Bu46A+lxR6mGKowBP8wNPKaVQDrJxMah/9HiiBfmkSJf+8Y1fMJuS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LL1r9eIs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LL1r9eIs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47B6C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790410233;
	bh=UE/73XpLh9IqsVBVkd/6xYUV3NydRHP4WaJmKOrmyXs=;
	h=To:Subject:From:Date:From;
	b=LL1r9eIs+8J1HsjPltrGL6D52GzOQzetcL88gyroUG2g0Om3+QVtlSTAwqgsWW8NY
	 U59M7e3o7Fs4rOM1E+IpGjvkF1WeJG39rwG4TmjhP4SsQ0qdehcJZyJMryYSYCWzrX
	 PRPki7w6gB2cNmcoGTxxG8wXP/9/xyD1I7h8PR+cILeo1IYfBt9YmywLwwAHncXkPa
	 I04BwNz3ojj0Rl3IxoTsluCSPnYsfF/ptYNaiuwOSvLliMI+oCTcw1HysnE+sk5mgZ
	 TeFxI/Mgs76rgiAQEcUurB7EUjt7+WfZ1YU3Eh6YvOUc64XJ2NFA8d0VBIcX/bApaz
	 7RVsO2lvWQtbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23F8C98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179041023369.5852.17745175662179698996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec10c8c6e97b413e8452652dfdb4effa61f1050888ef917fd75dc3d5ad0f1e44
Date: Sat, 26 Sep 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790410233
