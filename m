Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A276F34041D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784906434; cv=none; b=tcHB3zZ537h1KmZT91Sg1BD9YDlAyyFIEHelcUloXvW9gQkBkaDf1WHSegGRlV7ZKU8szmrFn9YBOkLruYKZxrh+VYu/gDATbFPeJJRI5rA0/Ztkc2fSk9EEE8hvP08p7q1ilAgKog4iBbRjrJeActsZe3+63Pbiakam87hmYUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784906434; c=relaxed/simple;
	bh=0wY/JavOLIgnApcrnLa7hQ0YyUra7SNzr0rp9LoqwUY=;
	h=To:Subject:From:Message-Id:Date; b=LizIYueuecmXXCPMCXE+K9MKb7i0eUgZx/RpQDCegCnTfIx0ZWcYebeq+24zF+M7NBGBk/pVf2MBRQFqIFhdTJaASNGut6E8g4+hi9bXvKl/0Ty19SFThaVT10QNs/zHjWS1jknNL4Ok1SM3zlWXyxM7bDsFXzqC7OEFALg3VlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9U0BRuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9U0BRuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03B9C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784906433;
	bh=0wY/JavOLIgnApcrnLa7hQ0YyUra7SNzr0rp9LoqwUY=;
	h=To:Subject:From:Date:From;
	b=i9U0BRuIvbDohvJzgmhZZd0wvLLoaR6JC3zN7uMZTrmsKUgPe6kt8dg6b6ACdkqCF
	 sR/HSGfNYr94wZwuExPrh1IOcD4hKq/zILJr++UyR7W+QAL13V71ni/JSteR1+fiBk
	 JI9ljjRny5knxjgKri1F6yCvSAAODisC2jZ5cYuKi+P4I8RqbqQnV2Wd+zfbSNai5x
	 qDO7ZTyCrcNY2IKRG3otGWtG5eI4LZ1GVie5qcD/Uj2DZKGox0YzhTqaTGymNgckQ3
	 2KNuC2Mts7obkeek/Hs8e0QNHyWdrP9gp6xqSRnzXQ40X5MMtjWBQGzu5KqvNBkdcU
	 ftsQvX6CL2H/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEAA5C531FA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178490643368.26994.12575262704114506881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0f97de62103c15faddc4449a151f487f6acbd1624a01eff01013fc2ebb6ffec
Date: Fri, 24 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784906433
