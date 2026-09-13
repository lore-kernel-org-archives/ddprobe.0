Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D88B3EF0DC
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789309234; cv=none; b=dP3WpYJpaAQPq6cC3Lm0ZXn/cGB9MIfvwZmxobGOFhN9M880C0N8GaXxn2AmNpCyhLrMhQKHTc895Uj5hf82p+9rUFUzzqibeTiDwHuEPNTdjUwcqsq3WUZGjPsDU5XPzoepipEMk+HhW+wGOLvsofQH+9aChuYmCKHxGVq9mVg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789309234; c=relaxed/simple;
	bh=EAlr8gRCdZyICQ+qExHGHi2Mc5U4NhhO92Jc1YFKPcE=;
	h=To:Subject:From:Message-Id:Date; b=ROWL2ASftKDCt2NFh19yuLJePJAvlY3kZS6xuPYt/Tlyjzw8g4+DtXn7jY/3PMZA/03ixqluKdgfKjkeHIECtcGdpZgri4MFjZWi7kTiakPZcxhh7VyVvllfOYXbpKENyHmIesXhX8Y52pb+6GoKZAL0XUnSFv7K1K9XYWMeMiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bg9QDzYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bg9QDzYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB299C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789309233;
	bh=EAlr8gRCdZyICQ+qExHGHi2Mc5U4NhhO92Jc1YFKPcE=;
	h=To:Subject:From:Date:From;
	b=Bg9QDzYs/Pf92TQ+GxYS49K4PpBBaMbKaeBdiU9klMGqUrCWHZ4kMc56+bUfNoxkp
	 6vmV8wp7GunQBpA2sAtXJdFYF1SEdRkhSFqoDu//PxyyhMVkCQ3JcO7nFByl8QZnnw
	 cb6xeHx8/XZNyQh/p2kmRwLwbGdR5DqdQa+wX98KkwTja4f0eY0AAMURM1DqqvmM+J
	 t5WlZH5hAdAMaVcGpFsIe/PpzV/wijs6ENA5l78AlbGbgpoyPJj6cydbD6qPJ2NmFT
	 iAAYHRpezSGDUFig5R2Kw3jyAr8qAlLw26TawfbgwP9BCV6M9lUu2GQQCkJ8kbdCAq
	 +Myq83ZIGuE8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B67C88E66
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930923368.4291.17876140925502869732.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9cc5420f37f64c86a0db83d9b9791ba4717b3dd697ea055812f768692c88f3a
Date: Sun, 13 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789309233
