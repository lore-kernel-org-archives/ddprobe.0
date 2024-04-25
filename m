Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E11414EC53
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714067543; cv=none; b=p/Fs9ItJwdBwv+bLGathLpzu3aoMLdm1KdKP/VkcvCLdXiPdPeqj9vPsVyFHNK3BmYxzCwDmKNbESLnKC6YQ6aPonYUSi8s3l8789r5MZvVtPHF1HfHmcQIS8eLGFiZ8x2NSoGZpUPN//WBYVzHpWHI5r/z4y5reG2JeNnzYJng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714067543; c=relaxed/simple;
	bh=/H8OG6U9LwXul4dAklxjlkcqOYkPHNqRwbVoxxxY16A=;
	h=To:Subject:From:Message-Id:Date; b=iacxiXhItoNjlulMf0CbOrZi6AKgFyXgFV7bUraUPvWjekzOBi7jHZDEfApL9EAaKFVDpyeXRSXlXybsWj5BABL50FBMJ4v6i55YQbLPhbLI+slgQUWpuBJ98G00Zw0cn7jZWYFDoJcNMlU2kC1Y7/ANqd9FAdCHyi5x9QWV49s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=blGlgDke; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="blGlgDke"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8E41C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714067542;
	bh=/H8OG6U9LwXul4dAklxjlkcqOYkPHNqRwbVoxxxY16A=;
	h=To:Subject:From:Date:From;
	b=blGlgDkel2gID7Vaq8MwAqoB4frS4KCWI2LY19dHu3WmkX/NPR1hqzlumSq1y1efS
	 t2YBWBOoGaNa7g2XOhsauEvGsWlrQYAVKDUIIe2PfHhchKh6qU3H19VYtDnTuuPt3N
	 7GamHdnAZ8Dp478fouG6/ElkgU+XF2Js9YWZJTHRUqvP9DILTM24zJDTSpfXrhnHot
	 lK/rnSaCIKuQw9QYOGjF//oxPf0Px+JrMR0Z1jO7HMsiTW9F43y6fs/8rHnrnYC2aP
	 TaER1UefDrDYg2CjC9TjU9kGk+a9fflW36O5Th5SpH4JK99l2DKYIgr0+rEMGgwWMd
	 uzbykTkf+fm+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9555C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 17:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406754280.29250.12228596965784645456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4bd0ee4ec99ba931f9c59930a6f839a0e956464574153cf1fba318a65232a4ae
Date: Thu, 25 Apr 2024 17:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714067542
