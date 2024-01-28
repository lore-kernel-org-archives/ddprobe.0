Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A613DF66
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706435297; cv=none; b=uIv3QDsYTuRjJEj6+NvP7wtZo2HMGoAzr4Iqcu3nHDVrH1MT76DE2W1dL3ChEHHbaWUCXnFZRYyBmqvELS4p7cUPN05axkhXLDE5bJEVsHjVLGPzQsHA06CjIMJ62PJJ9GOOkZJtKQST7bQzJsdGZ2WAcWvbiOuj8jwQnVstsr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706435297; c=relaxed/simple;
	bh=2fW2T56C49sEC/h77r6lFDltGf6K7pV9/hXxIxFHKSk=;
	h=To:Subject:From:Message-Id:Date; b=cY6Rklert4avXPhZC+IydV3tgkElwvXOy1YfuBalwPjjuhEMpiHjfFLZcuXyx+OOnjE16edlL84BFwNHBIbhBnlVdA+mG48eVo7e7lz2hcJH4eQBvo+VX+f8aR9o7E6CcY0r7gg24aW6tJ4b6EFEq2kFxFtUjWKuCyKdM1QIwfU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L57IkgRv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L57IkgRv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A0D2C433F1
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706435296;
	bh=2fW2T56C49sEC/h77r6lFDltGf6K7pV9/hXxIxFHKSk=;
	h=To:Subject:From:Date:From;
	b=L57IkgRvrzvWpujdKiwQQ0f7rOo3RwchZZeo8k8lylSI2joqrg5Yl3zCf2uLHW2SF
	 n1dvT3P4dQ/OeC0342OFvZbcmqVIPjUAxs7c9LmACvT7UiwMFTsLQ1VIIcVjUh6gv9
	 mJ5lZQG2D41xnGZsTdxkHT0v9niqF5QRS55pg85p/piRrYSJIcpJ2eSoyf8h4Dimqo
	 XZmrLiYldx1A3cJDcygC4dnVmniOPT5zh2C5TJQijpMHv/yqMdHGQJNKG7dv0Bfw8T
	 Hnh3eH/aIEauQWqMIzbCu2UANALu+KAT5ngkrRa1Nwpud1VfeXGxUmFon3wANeokSY
	 U5QXRmFg6nZWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6DB0FC47258
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170643529642.21628.1876005693726283032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09e6beaa57bb52400baf401683ed4eacfb252d9c9f639a51361b5383b3884d7c
Date: Sun, 28 Jan 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706435296
