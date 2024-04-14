Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC0F1BF3F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713094763; cv=none; b=Cfqz85emEbsquNGHTyIw1HdJ7D2OZJFEzTxw8lBdQ9rR2pp91SwTB5cUK7Dev2gZTjjZlSQZ/Pqk/crg9/LMd2zu2aGdCtM3VsG6Grq7GtF3rJ7SWyea/9Y/AuhYqleW2HReVNFu9r7OnX2Y1M/yMbEjprJiQfzZXlOeAjUKaW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713094763; c=relaxed/simple;
	bh=aIkLCbbPNwsQoQ9A7TBiZjyqQnyHA+eAqTXbEESz9Bs=;
	h=To:Subject:From:Message-Id:Date; b=K+SHkJmWnYCQnXGfnBOp0lKMtWB6WIE0ZaYe9kHHOJyZNnaElQrJhsoqvJ6ZdOSIoLQ91IYsgmJQ3GSLTswUd7I4FtK4VF/i3JgWkfdIQ2MBPqjCsX0/RnF6zHlp6Ky/asAdkphH/dJ5FlzdtXqDkjhj/ZbXqs1wBbIZMv4Dd/s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kklnBsGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kklnBsGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F31C072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713094762;
	bh=aIkLCbbPNwsQoQ9A7TBiZjyqQnyHA+eAqTXbEESz9Bs=;
	h=To:Subject:From:Date:From;
	b=kklnBsGPomB/iz2Uk0k6B4dPQvyWCERjXAW7W7AKSI7zH9sg05llaOQkdUp52e3iX
	 w065aBsEot3AAMD110BujY63lq+a3a2KMWoOdRAo9A0G+MXciFYgWYJKv9ELcb5C9v
	 r7F41+XaxqqL9ZsrNThQXgb4EQzRFoP1Am+1YEClZgyymKCKRs14J1a1C3ZMY3QnXA
	 PB/HYlOsjfEQcRLnzI+KCHREkN5dRVPpikMlSfJdZkEiCj0sgVoMp/angobcxsKqSU
	 DlbaVsLcU2pDctv+3KEGj7N4sDs9M4ZOvHFj2ZAjfi4HinR0HHTvHnLq2Sfbzgby1q
	 GhNEaPtWTiheQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C407CC4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 11:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171309476277.9836.15188428773833719322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f98dcdf8a3a8cff2d11f1571bd6475cd2c5e5de3a9aca3eecd782899d2614acb
Date: Sun, 14 Apr 2024 11:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713094762
