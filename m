Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26854482C6
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719489863; cv=none; b=bpRYFjwqgRnigjY+WVL76LAj3fgr2r8DgFjbtCH0n/moNJtsZld+N3svzxL9WlO/F5GbALnSMDFikUtdqFu+CgxFaf1JIO4zdb4dC1Vfy+p2K8BPaG9nzXDx9FUjuHGpkkPABmRUXRoE47fICshmznsRMeGTx6LuKGgeffoq1ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719489863; c=relaxed/simple;
	bh=IGVPHHIJvWRYtk+T+l2EPksGSBr9oAK9QMWRm5AhzE0=;
	h=To:Subject:From:Message-Id:Date; b=TTISuOD5ZAHMGPMXijSKXH9XaRWXSZtiirLYxOsG1eYnj7bEYGKBG9GeEIgtURWO+1xZ6PDJdRpGUNqalOzO8QZYs8S0pVVKyuFh69F/HxF9LLReyeQaTehJQu81dDU3RDsNyrr+jNip1/KiyZSpEZXEraBDNCsgxuJa9i7iMIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqcP8HgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqcP8HgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7BD6C32786
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719489862;
	bh=IGVPHHIJvWRYtk+T+l2EPksGSBr9oAK9QMWRm5AhzE0=;
	h=To:Subject:From:Date:From;
	b=BqcP8HgMY3ZpZJbQwye5+TX9IK77/3zEeGmD9VYRxJBbJ4flFIwszAw5vQ5pHu5kb
	 aBaa0mVdwVBWjx94KjtwREYXSENHhLk6OH+kge14Ss+uM5YPUKyxcsA6o95UXkb53w
	 cO0OLl26cB+csmRNvQyqTEstxN1j2gjqWPvwZRXFBSesADYVS2JTds9kPvsfPhQBjm
	 RaRjDV0gYAJ9f7mcC/W6lwoIygmVa+pktdCfOEZPkSdrj2y2n5BAcYOsr8uXJbUVSt
	 b9nED4lMEnsu+xbocph3rg0zRCu4UAItcyKihxI76oKJU9yVKJlSDno33tiTNwVDA6
	 i9f5W3l2yNQvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0EDEC3064D
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 12:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171948986277.24478.18015038032437175859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93f9fc6f8cb7fca6777b827107a066249365fb8d35133930bbe70069ef09f581
Date: Thu, 27 Jun 2024 12:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719489862
