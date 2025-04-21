Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8CE5222593
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745274593; cv=none; b=rQTtV4BfcVIBN1U41CfSMEeWaBfi0g66UrCA6R9cmpoMV/Xr346G1lB0rADqhDsjCnpc617npvikFWB7ldeUPkm67cEGwOMl6Ddt0m3eAuAJ9BxqsCeF2vOQCiAHTALRiYjW7BlaT6Eb1m80wJ+GnHdWDQKgy/AuDWU74e9N5Ek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745274593; c=relaxed/simple;
	bh=iwC7OuzUOrHh9PeUvoPyknrEQ2CYHBTGwtzHepvNF1E=;
	h=To:Subject:From:Message-Id:Date; b=IxKYbVkKJGPQEwIe7/JJIWC7GPo6Xr/MnfOCas9PyTbuvsWj4gBs12y2IwRvH9SaqTXC4HCCze45vc8K2Mrr1UXamMdpoqPGaaDSVnsbzvTzhq4Q6zTHA47YxY0r3GlOIhH2GLHHYoDB4DvxEDH8AVE0PNAWV8zd39++LyhpGXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SEpV3b7b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SEpV3b7b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A96BBC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745274593;
	bh=iwC7OuzUOrHh9PeUvoPyknrEQ2CYHBTGwtzHepvNF1E=;
	h=To:Subject:From:Date:From;
	b=SEpV3b7bDf0wS25NJuE8NiUlR58yzNs//UU5LQ/Td7VSKLStWA3fJzJiVgeowQmRl
	 Dh0YgEibo562pDrjOEdivAEnEm73LqLcXJcUVfdg9GLYVI30Wi2jtzIctxvW7Js8Jz
	 9hn1yHZ6RCgsqxKIJs032r9maWmeP1W+BjmcOzmcJaVnXw7Q3ckQ7lvZtbxZGgdn7O
	 tcC8fD+jH/4d6BfLYju5LloFDqULz+lAeaZ977NQnbtmrMRySIOxTL5m16AskWg7vK
	 teOUbDjTFg2RDPBrgjEKcgYj76jI7UWDovy+XpZeW/MOKqu5I2ek2oxUTuiN5XUwSe
	 H/eCV7YjV44ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F62C369AB
	for <ddprobe@lists.linux.dev>; Mon, 21 Apr 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174527459360.12696.3165294168313304039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10723d11e1ea86dc5fdae0feb0c0942987fe8f43b1401ab4dd1ba82a83c1bc9
Date: Mon, 21 Apr 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745274593
