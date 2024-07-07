Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6022D7FF
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:46:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720338383; cv=none; b=ldA+iPp8UN28EOaLwS4yUjYU/Wg59eU7Od13JzUr4gQrkiKcQSxwuBdKnan8no5OK0sZbtweLv0OhVck9Ip5udhCBWZlOpeeXjUzcaE+p44KIutINoYjNqMkJzFc8uJSBTDBqOrTfk70Dico4xkWjdl1no+ji7NpbohgCJBKrRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720338383; c=relaxed/simple;
	bh=Nx27JKTRTTm4EH4UsXYxaP18Xy756toUCvvwkYlrvFo=;
	h=To:Subject:From:Message-Id:Date; b=NJtOZNi5MT7k1vlyr1EwXeUQLrrhj8aS05lJmFcfY2xQEj8gn7dzrAnq664o4/zoa1NFedZ1/c98JjzPmUfYIWrMlqGs5d8D6Y9azgdBRRY9s971DxBSVhagsdoHNIu0PdIwM/3Gp5BoehO5qwlONL2XNkMFwroyIDACDVbhM9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=smjQQQv7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="smjQQQv7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5539C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720338382;
	bh=Nx27JKTRTTm4EH4UsXYxaP18Xy756toUCvvwkYlrvFo=;
	h=To:Subject:From:Date:From;
	b=smjQQQv7OSQyd1opZCAHBHLfaY/XryqR2tqkBY1OBl8/o7/e2LmRUpuBKZlmN7Ix+
	 ez3x9xiK5t0jhlFXTVomaEULaLHfItnv7FMPcWqRK7ctCObDbGZT4HoErlJDUkCTyy
	 7fBE0jaVMFUC8NbfWk5yBh1cCXu2B+3SYHieR5SqmN9gqhwvnshQ45hZTfKsKgObvt
	 IxgxEojzJlRPenefAYnCfNr7cPHnoJKAEDY1+kjVPu0/XS2jknQkIQ5O5AH+OqcBzx
	 8G8ZFSiOIYpnIJGKB3kfPw4crNQHLdpHFXRIALsma2+e4sxYiO4JJNNEdGGw/wIt0T
	 Vx3RLIxp/pGXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D73C30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 07:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033838276.21834.1699941192323978422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ba7b7110320a0b6e7ae790a37d0e2ea8df6bd2819831ea53494854af474decf
Date: Sun, 07 Jul 2024 07:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720338382
