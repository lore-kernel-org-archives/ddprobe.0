Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 432EA26FA53
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756683595; cv=none; b=E5fxewem0OQKMhiUHHqfyixEOjLj72ynk6jUoj9VNorGTxKe0lpZIBNlEUp5TszhNNC3p5bb+ZXhJVxtQ56MT2Rp7DN9qNw945s+G3R3G4a1qZIRBxFkI+mCzBa07VztR5v+CjhRZuTGIYTxBo7rn08THIZFFToRcLn9IZ41UEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756683595; c=relaxed/simple;
	bh=C4XH5o+CmfxXUZAF7KQzTFbZmsm4CP5ab7mhEMKPnL8=;
	h=To:Subject:From:Message-Id:Date; b=iqNJoHHnv1j1OKEnMW3lOL7lqhs2CdlB/8cRyvOEE6ud9SoIoc2me+IyTGTgICo6TSjCmMyjsQeibPGnaA0cuGsKDj8W8OIKNt6DYkffGBcOzO/5Zz8V9MY/NeuJuxBKmAIRcsgIp/GQiSGp+AkoFk4WGj7OVEKqLDjjQWL0eE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7pM3s2X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7pM3s2X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8ABBC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756683593;
	bh=C4XH5o+CmfxXUZAF7KQzTFbZmsm4CP5ab7mhEMKPnL8=;
	h=To:Subject:From:Date:From;
	b=N7pM3s2Xq8LQLwfseDhkEqSq+PVpkB1mCqrBpWD7GoqITAbsGQKFU9TXCPMFG5c0F
	 KNTeuQazsKi+ei4GfYNfiIMNtaWTEnhpT8I7+OhGeKKn2qs7pHU/FMIPUdG6t5K7wl
	 RvtymqqKYpA6HhNpXunedjTxuI/2vcXB/oItE0CuaCOUIthUeT3rq97tF/bPjontBr
	 3C79uQylmwvcA70opvjdYSgntswOoWr4WUOVrlRcqaORIgxfLPsoQSkRLl3NwB7AMr
	 VsJyqnBjMHhuwX3p34u7ONpTGzPnxcAKqyLEm0jKwjNBPQ8O3IUsLfy12eLuxpuPjv
	 xA++SIzuPLvOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AA1CA0FF2
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175668359358.1120.7337080125341966866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0377b0884e2aceb6be337e32b4eba13ae1826dddcd7e3cac6c880d680b3d08
Date: Sun, 31 Aug 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756683593
