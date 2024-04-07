Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9264A3D
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712453297; cv=none; b=hOwW3LLmaa+ekUdNyr/JA2FbsAtblx+lzKb6wzMemt2Vita6jNxTiKfIz5sRorww9tP0Q1ipXbSqCguR/e4KD6zYXBzQ9MMxqZgg65t1uF2NE5FdgvMjJsPUpik4w3BLznbnoHYT6tMAXr1sYvI96h8fArfNLxQHnDhkoi7WQ1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712453297; c=relaxed/simple;
	bh=vOCE9g/ouWCnG+34ArhW9EGq8nPVbyCHcTjDwD16OHo=;
	h=To:Subject:From:Message-Id:Date; b=N1RKGFDH0FfoXYgae6EnnR47aPT3JEuG7e1yfBs74QVfLt/Br60BHzXQnwrwCrJrmPhbYsgY/9NqzsTkB8yLhGs6rb+eJKkTvI2XJZ4w61CKvrwe6Gk5HEd4gc7b39OH7SZfG9i/vE/56nuoo6rSaIRmz1KPgbPzP61EfWheqcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIT+fvhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIT+fvhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75F80C433F1
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712453296;
	bh=vOCE9g/ouWCnG+34ArhW9EGq8nPVbyCHcTjDwD16OHo=;
	h=To:Subject:From:Date:From;
	b=UIT+fvhNB/MTVXUjhBXJ3RCkwSaVjJzcppM9sOoMKRE+RuUM7/BFXtmJYOj5O7qi3
	 JJwYN5lcGcIehyiNmWJF6qjj4JCSa1573SxARmiZdAJvy0n7/YTMZ56CwCcOE81dQa
	 PnhkDReNZQP3DL3bFSiz6bwxy2gLRcsplWektXPNMHt0GbDd9HdZTYdahxPFNHLU9F
	 L/aLos2yiX2NidvkgaelLtikvFhbF/qUAHCseqSvGabBupDCG+cDRrg5f8/I2+M6JL
	 nmVGfN2dHWLsyzm34KiVKMQnvoEDjp16qiZ/sHrAfrbgkff2ZmKGMp7nffKtmSVuzG
	 AxD0BgHK6D7kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E4ACCD1284
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171245329636.30818.8128232503801257071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 736303850d9c4865b35cc50f9e16c4384950de0982a7a02712871504225d9705
Date: Sun, 07 Apr 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712453296
