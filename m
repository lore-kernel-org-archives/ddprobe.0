Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F2EF2571DA
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774057494; cv=none; b=Aq2Bl3Zkc9zBpp4K5g7ynIfexO9oW0tS31/C2vpKBx3oHOmERCdl1s+7RYRGS1PJz+uiVa2NSBpquVJus73k9rvcJKIjApVAcIh+ooP7ieb7n4j1X1deixmGR89nRlGO9j8l705ZXOeQyqU9LS2i+RfI8UVYwC1P2R3SodkIi2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774057494; c=relaxed/simple;
	bh=Wg9dQ4ajv6Q70atDR/CtKqGHgNWaiXlFV0VyMOUnjnc=;
	h=To:Subject:From:Message-Id:Date; b=jgsyUuhB3FxJUrSivz1m+B053tB4vH43A9D+tm7jIG2uyeLGETcXEQx//rhb/e3aEhw/3AHgiLAfBeEU32yYc4ZwJPz+5wJgTLzW3iUTex6GKmSYbWx2SOw9KEVBBiUnXx9CE8di1Bklv6nAP99O2RQ/6QzDcx6H04U/+J3jtP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APkNaQzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APkNaQzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4F4C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774057493;
	bh=Wg9dQ4ajv6Q70atDR/CtKqGHgNWaiXlFV0VyMOUnjnc=;
	h=To:Subject:From:Date:From;
	b=APkNaQzMZ/+/AiukGfoCLXd0vfyMeGKxiaa82f4HOyjCtMElDZa2M+56pzM+HgBnf
	 Au8TVuxq8SbidzWF00Ct0fnmD44m269WGu7J8Z+Cnk1RgFTxx9W/X6GqNuUKk0QXjk
	 iWu9Kds9RZfVy3BvrHH+GLRQhANYiMm6dVk2S1UBHvaU/pS0bixjd77pY/SoMmKqYd
	 LRs0dn6cloiCN+Tycek15/gPsuSA/H5CHbEHRQn6mFdBUI2CjId8trRFBdHI527p7z
	 GLTaC7eKpWHnUpUFBX5O5bcn1qVj7bRMW/t978uBs8T3Ud+RAcwxB6I5XYZfREATR0
	 B9q7pgfVjgRiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981411099B5A
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405749359.2918.9845717599392903052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5daf718b69b35dee4732931514310f6a46b401f3fc160fb7f49d80c54825b0c2
Date: Sat, 21 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774057493
