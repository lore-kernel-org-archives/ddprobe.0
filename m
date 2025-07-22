Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F7128CF41
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753175394; cv=none; b=tSSfDntY7jXrV9vrFa32tKylNgoBlaiUN/Ju1DFBcfUvuFTk339++lmcZYbtuURwAjhVgK08K5UTFcrvuhFg/pIFfxTv4/BBTAX0mo3f7BBfrX9DhfE34SoTtOzCZBpwnyy/fIXw0ZKbHEw2N+WxlLkTdAY8HQY8SD+Dpjf81qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753175394; c=relaxed/simple;
	bh=lVlHp+EGwl4RQu+RrF+zSUxNzyOoQU6F1Q/nmo9X5Wk=;
	h=To:Subject:From:Message-Id:Date; b=BolQzxs7zyC/2UBoS8/K3YYZOIvNEGaJ9VdQeMsy3RLQaHb8CVSZTdL8h6Hk94kFsZzb4cXAYGeqJJYeVpnFva51K9ZsaZ6KSnWMNijJ26v5CWNact4bc+a0G3v988y5BJJuoYUebd16fsmRfNe/WGVsBi9p7j6m0ZFuWXCZi6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SFINg9cD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SFINg9cD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F456C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753175393;
	bh=lVlHp+EGwl4RQu+RrF+zSUxNzyOoQU6F1Q/nmo9X5Wk=;
	h=To:Subject:From:Date:From;
	b=SFINg9cDkaOcHUTwUWfDnKIP4cZkCmuDJJXayDnFrsNagqI4O1l9brMzGwhKsxvqQ
	 DELSlE6ns4oN8C07v1nZqcnYhGtma9Lmi0W2PpaVfzWwlMIs5fiow/JejmMszgVxcp
	 7AMlOqjSnB8z4NQPI/wmM+j5dLQTBpRUHZeVRc2YGDSbi8k4mgxS/COJyXNif7yZQX
	 5H85KSOMuPg+k/yOxEfqVxNc9SbvwMpIxR2Z4YZ3bae+RyHjpoLCt/Crn/JmbqBAAD
	 Zzw0FXjP334WpkMjCc9s3h6p82cgnka0Lnhprrhko16JCe/CI8fHRyBmPGhLFJlCWb
	 p5zzXPsh5pdVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9050BC83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175317539358.6743.13132984279659759325.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 805090a18d3777a9455bbee5460e8ea08ecee3d755fa93c2391ad694f69e6ce0
Date: Tue, 22 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753175393
