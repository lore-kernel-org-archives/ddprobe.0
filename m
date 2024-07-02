Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 551D1146D48
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719912323; cv=none; b=qdh8r/b7ObhI2d+B0YDKFUzGVG26qM55vtKNdQ+xX7QuTto6KzRfhw8TaOxh+jMXpGV1WqolMidEk4hIJRjx1rjKW9wudbIB/I+5jKEvOY0bf56XCoaojRvPnKuFLibRH+hlpSBHydjiSyHMWff/JGIxcmzi6bM3J0Xdp+W2Z2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719912323; c=relaxed/simple;
	bh=L0zM5zdVb993RehbQTKfzRjW/IdW+lbQNHITDAmmCCw=;
	h=To:Subject:From:Message-Id:Date; b=uVkVk8Imcgh6WYZzYR3ww6aqgM7uGg74LtrKM+lYwfXnuT0CW99/BerMxnKkPZSWnr9z9H9oQ7Z88e7kwtzDqNGi02DA7X+55ITxqeiBTkzx5BlCAtSe4DHwFL47lsQMFSvcVdnSEN+Z04Db8g+jXqEbwrAk729posp5KzsQ5T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhcwIamF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhcwIamF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C13C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719912322;
	bh=L0zM5zdVb993RehbQTKfzRjW/IdW+lbQNHITDAmmCCw=;
	h=To:Subject:From:Date:From;
	b=YhcwIamFhfc3H7ViGA6VGtXkff5YBY8RHq4TT80F/bAzadT/JyS+MIBEM3M5pOgYR
	 f2RMpuX8v7q5rexwgFtBINQz5gjDRSYgOuFfOjDGNSATIrJCTJbGzRCgpAhjFDWCyj
	 oGJuVuPrUSbsU+vRPPx/PTr9Xixt6Jjv4ZJyFyzbR4dmdejtYxyd5v5p/yRD9Ov4N/
	 j6kIyzESQRru3E/ixqtb4StJl1DVjuHJ7ZP7LYh4Z2qlXTMndKxqrYo41uxTYg+57/
	 hTw+x5y0SPkriwX6AaxQ5gPe3YcOTBYo2L7En+jzVqx90lHo3JFk1PFZW/T68bcA9n
	 dqmQl0+yHC5qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D51FEC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 09:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171991232284.26263.16697813732336103451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281f85e711466166c3ee2a7dcc3e3af66cb2afd4e81f727d428dea0d57292ed7
Date: Tue, 02 Jul 2024 09:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719912322
