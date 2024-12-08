Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234AE7602D
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733670954; cv=none; b=l1odrz7Uy9McP5PrZn2ko5PCN/sBqPcU0bYwKqba3gTbq51v9GnyNPj5CVOmEWG74gmKtDugmLR5Rykr3aWsVnlvtCk7hgaTd/fehvS70i32RaFV9EbR3GJYFVJ09mbdGZK7tC/1iRzuvTFCQFrNdpTDEizqFl7fgtF338Wa4Kg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733670954; c=relaxed/simple;
	bh=Ny/4oAitMXdxtnXtVnG07daD99m2s9y/TRYrJavfN10=;
	h=To:Subject:From:Message-Id:Date; b=kU7LQPXzyR6UCOaqJMTN6vphd1NltpumzHkYyaTbRfC588ZJhBm+Tj5DNKK+3eQadS/kFE1DMGsTt5i987WT9kj7G74qPFJv8b7meoyCEYjHFMgDx4vwhKQbU9SYR36o7zKJM/SCO9sXy6p9LRZQVt76Wtnls8afgKudu2exTGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ksGw+ejb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ksGw+ejb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5BDEC4CEDF
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733670953;
	bh=Ny/4oAitMXdxtnXtVnG07daD99m2s9y/TRYrJavfN10=;
	h=To:Subject:From:Date:From;
	b=ksGw+ejb7bICHYq+l4fY/MiE9GQocEiKnbZaL6ZLXRR5rFbgz4XQU0GHzh1knrssE
	 gAVWiN8J+HaNG9/JzP4J+XHPOGzpBPFxUuGur0ZvD2qn6vQzmXrUv+4nPbfOwMnf6X
	 Ced9SIE6MbCTKet7B96wGg2NT4HGrdx1a951O8BAXju9oGukdGwAHpcFWNUGf9jKO4
	 o5wXFT8uhiNbuOQvZUHat7dGC78PyygdGf7mQSfhoAYu83JPkhdQ2gR/mxhPevpzgr
	 UgxinDOxHxB2WJ3WFAqsbdkrzqqhLE/Dlia2okOuK16VAWqNek4L9Em9E6dgcQ4UWT
	 KVGzOjLn5qlXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A035EE77173
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173367095364.13489.15605173540743191359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d85b7e06bbeb6175bfeff52e2f3d5e68dbce8e4081042a2218a936a6cef245d2
Date: Sun, 08 Dec 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733670953
