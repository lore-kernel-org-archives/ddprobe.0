Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34286BE4A
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743739794; cv=none; b=iYuutYmicSvaG795QB321FgJdzh0kgqVuzUn+3yTxiSj5VaM8XC9brvj8rp/SnUz80ywmGnLZ81vnnEuzprBh9RlIXiT+vCEIA+ENNekN91qw1yd0aSJ13sNcMFkFfHB+kx4XYsG6yIv5BflLMc1Wc88o+c2I659s0KDuHAn2zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743739794; c=relaxed/simple;
	bh=wElO5cJ6SZYviEBFGbQzpN+5MlW1FliBMDGr/CNsd24=;
	h=To:Subject:From:Message-Id:Date; b=qEdgNc/v8NiP4eLHGry5XsO1Zr64dzdITEIM5RBa7UibSDOSj3wpCL6b/tBy3krGlGiPrJOHv9NX3C4dBj0xrjv9qm5HXdgB6BicKm6A6n6UrWEehTSS4DL+sIklcmM7b1gLxSqoGUexlYCw5hB2o9xP6z95iW6mo5e8Q51N9+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YmKkMOa+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YmKkMOa+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC438C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743739793;
	bh=wElO5cJ6SZYviEBFGbQzpN+5MlW1FliBMDGr/CNsd24=;
	h=To:Subject:From:Date:From;
	b=YmKkMOa+KcDcXDuW03cr4D/1gu+MHhi5VyXI7FFgVlp/yRyylx7yz3zcQyo35D492
	 0VrTUrfDljeOdczqP4b15gFHwZOQ5AFnZg6o4gqpaKk6emKW0heNbYctkxZ5X2RJ8T
	 itH+42nY+o98DHEjezvKKr242nbRRzE3Ucy2rAtvOpyBA5PWP5gIrAaFKP7wPio+JT
	 lKnVfIt6HGKdaSRatt6BfyoPGM/xq/1j4Hq/GFCLPk3Wj5OZxaTeXxFaLGUZjznrsw
	 GQ0Zi/IMFGGt8XLoOekjHYbG+VEyfEIIBc/4wtIhxkLvE0c1UWx2aHFZlwiThYEj/d
	 FZeH4K3IjWq+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B167C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174373979362.25201.6862201338351800935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedb8a547a2034b632889caaa1516e8b428711260cba4348770354ded1698d98
Date: Fri, 04 Apr 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743739793
