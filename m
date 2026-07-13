Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3917840E8E5
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783949314; cv=none; b=uSQ3380xxghLKNFxi6RjpU07gSg//fuaPAyDicsNHoAJ3m1s77v0jO2x4fFZCV2Sq6me0SPUTuNo17+rQZsaZhW0o41oTOeUQUevn2pBFmJkiPLAYj/V7uz/A+RUDmlgtHQhmA0NomuP9x3aCLQs6qpDRqBBWh8GlozQMTxrwzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783949314; c=relaxed/simple;
	bh=pNrGvzgr14qJ3xGQrjb/Evw48JE9wpEO+NYQsg7bJWI=;
	h=To:Subject:From:Message-Id:Date; b=MC/ImYFbqzfZOOyLWnascvNldVTVKZzgQCf+x/nOuqpchHa80Zlxul4CfI60uO9OXcsnUjzspF7ZIvXNC0ynxOADG+xqnqK+UT/6hfoYcqqlhZWWdpwza654cSqfoP6wEV1HBiXJlBGDWTlroGNn+WOfZ2NCviaXJJCaGHD/15s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOWAYp4V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOWAYp4V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC281C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783949313;
	bh=pNrGvzgr14qJ3xGQrjb/Evw48JE9wpEO+NYQsg7bJWI=;
	h=To:Subject:From:Date:From;
	b=kOWAYp4VHgdxexM/lfgpGUfBPa5DacjFk8TNqIH62IreZ58uHaCyQU8B0YXlQz+ek
	 2eE3H6FcPENwvTPmxenD2g7Ix6OeMT/CPGPQuN1+TViyD356lw9Q0VkHrDbYcC/nWL
	 ugyw90EbISgOaMR4nnrJqssiK7uiWTcsssumIqsoDtHj+b05B//CjHTXUQeAfUCR5x
	 JmcRzDgpwwcfRzaCyGB3FGdqWo7u5uo02lL+CT7EsMxFQRTBG/BOY62ZH0JrBO6JWS
	 BtiLFoA6UBcxiMANtdZQfRL4ZK0+f+0NItE5I1A+LDvQhv8MI8MUMzg4d/LtjUIM9N
	 q6a2QR0yXvyMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CFFC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394931368.16906.13494820049414024137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccdc0b03ba84238a3d3172e834ba35f1a53bb0f48cd086e502fe2dfa0f60f9e9
Date: Mon, 13 Jul 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783949313
