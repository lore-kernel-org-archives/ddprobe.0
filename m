Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7621DA5A
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730030154; cv=none; b=D6zOfTWxidy40pFB7+kCE3pX3Bnfw/r/KbUDyGmtIFiHMmNbAj85GIImoUwVUAIEjUMaeLLewf69PYZEwMi91YAcutuFc61BuqnUxTX0XBHm0aBCjtsLRppmhPFr8Dcvwnt6pw15h0fH9tOLLMNXUP+Y5Fm2vokXCq+tpL4xGAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730030154; c=relaxed/simple;
	bh=Nqipf1UOtkO/JcD/yGgMhCKKDfhLz5oeePxzif2pQN0=;
	h=To:Subject:From:Message-Id:Date; b=qhmq7Ge39YZMvEHrXIaEtSHV9JC+2mhqX2Pp7W7TvVOR0SiO3lnndqaAL1cSBYLFVZEM+XdWdnCkFDEb0/q3ti9hKxJs+PEW/Rf0T1zdPxUUlbXHuNyS/pXThGAwLeAQS04b4UCzJLABkxBndT3LoTBacHFgUpvThd6p5QPSHt0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTsCGyYU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTsCGyYU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EA8C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730030153;
	bh=Nqipf1UOtkO/JcD/yGgMhCKKDfhLz5oeePxzif2pQN0=;
	h=To:Subject:From:Date:From;
	b=eTsCGyYUjZ3ErUyMf4FeZkx8LeSxobqrwGtjqYo0fn1ZStI5nN0dk8lsA3SqEGF5E
	 OqzdwlT7gj8fPmWYrey7FUke2ykkj/5dXHxpQkoGu8U9sXg/5Q9B+F7UIXaVX8rrKg
	 dMcNJHYnzAjBcFYJeMnncn/69e9lneboYWq2yAdqAoU19tawy3XY+iwAd6CzTv+q6b
	 bSwTV14KiXjQA1KM8wJA3Kt5pz5ZXtou3/nQMwqOAhht/gKyREhiItF5HubndliRLd
	 KQ0IfgLHWwFvyFkB/K7NS6Yw3fpDk6cOC5te8pa9fxXcSmprupryRKANRqdIrXReaD
	 ELhyuK7xxHDvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971DED116E8
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173003015361.16872.6485874847133987529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e97714f8fe63b58988e9ea708b18140c813dd89004fb9a3c31f7eb6c584beaf
Date: Sun, 27 Oct 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730030153
