Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EDA36FC3
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758780595; cv=none; b=Gq/i6L0UH3mhqNn2dOkLhFa8t/O8zSmQA4NLL3jcU2anFmAeeMnHReHqVJ4+UuEsaZoQpekIU7I7hVx79AUr4TjjVv/jLGDxp26sPNPOEpSWuN36VA0Cf6VWEcivemkf4xb6TjZ6rUVZHosvfkcV9aXTeiHGfzfdFTivJOLn55E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758780595; c=relaxed/simple;
	bh=5dqMjPVBggD3da6og+MCtBYf8TCv7aPGPxv38lNEhZY=;
	h=To:Subject:From:Message-Id:Date; b=npNEZaNFDGcap9hkJCAR1w9/7+k6cbSfB4j++VhFVNmi/rSCu8oZ02K64m7RoNnY00guHglPB/tyWPSwi4L1w5IXcLGrrojRNjj+hYDg5J458UE2+lqz5VGP0aOGTtWQ8QLgjfd3fHEsHDg0uRxFyez+aEve+K8lH6c/rAsYznI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CrycmXWC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CrycmXWC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E368C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758780593;
	bh=5dqMjPVBggD3da6og+MCtBYf8TCv7aPGPxv38lNEhZY=;
	h=To:Subject:From:Date:From;
	b=CrycmXWCjGQjZ9dby+Ttg0acYrASBIICg9d/7xboNCIgz5t1Y6NKKhtVDEpjokpZg
	 4jj30i2sA6T8LRSF9LPkCmP6nc7jVin87Rs8V+D9u2qDed5YXFEanhg9avZtj8N9dv
	 bIStIkMz+2ZfpfteOWaS9mBqgRz9ausHpobpR9QialXhv8IdFYxMF/8Q6Rkqb0UciW
	 E/Xf2F3NLhV0B5arbaGryMue6uXK2wN7lobs1xdS55qAszxvm9EEngjj2TCOuT+19E
	 ifXGG5rcrNqU17l6wv4TXXEkXDpkztDWVOrKiZpN1624qZHgBPp+x4nng2m5ey2fLw
	 DSxiVDrHusy9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8F9CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878059358.13655.13904126237918961975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0589805be9a9a777ffc11263ad68bb23d2fc644355a189d9ea5584b1237ed8d
Date: Thu, 25 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758780593
