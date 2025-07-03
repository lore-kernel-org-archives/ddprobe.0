Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 243FB7E1
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751501394; cv=none; b=q9T2w8qu7VZE20nrtvJRtjunDIBxf1MhbOXsXIXPTWFvPCQPkPptWuL5lthQAY+mxEGuXCvFvls5IduwLWhZbHFVg3ZR7JTaO3yXT0mZj6sEcrcCNNQNmuwTcC6hgP6T3cAwVSW8Zyhd/HlfZIyQkWTu7U3qDw3FsHhhpHCNybw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751501394; c=relaxed/simple;
	bh=aJnyah//Ks41ct7SIxcuAsVRFLU2M9ywJ2W5r/58aO0=;
	h=To:Subject:From:Message-Id:Date; b=IzCeIz/NapjBN4Emd3UgG0kMEAnVpwPQqs0HfOW6cs1fSKu3ui4o0c8gf6FDOUdK+qKgaDtvD7ikybzJIryF/ZD1bCoDYzu+e9YzCGVbwM8fNOo7odM9zJ+DP9SdHO0oP7hrwQbmyJtx0joC6SP4B6WXox1wHUc1AwJddUIfr9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XUXBxkec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XUXBxkec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB83FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751501393;
	bh=aJnyah//Ks41ct7SIxcuAsVRFLU2M9ywJ2W5r/58aO0=;
	h=To:Subject:From:Date:From;
	b=XUXBxkecZ/7rdvfFkfCZ8HhXXQ7nrtUtNi3Z3RyaWuyy7V0WZph0UnwqBgEvFYTTF
	 BGjJG8DYNBYgsgsTFue6xC1UQsqzMXdsw+suHdLXftatRNiXj2XCydPnxjj9Tqr4rj
	 qYVnLmMcMlh8B0dvFPVTHBUgVOLZw9qSnCrf/JZcuNYkj5Kk8oURAaUe0dayrwkMJJ
	 vdFP0t8Rv/GO2vcTtZCEIJHd/J4Q+tjARB7A06DU1Jp6+e5XwKcrb2Tw9lhlCfexCQ
	 d7uiDd8AQ0SP3jjUvwkb2rIyAj2PfHGJLfTfdmjiwG3sxDjeaCcXNXnuySBbNd0mZy
	 bv2FJThO52bPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A4C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175150139358.31358.2955581123625579049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 254b8c48de0f7ab0d0a1e750cfe42019e0ff7e20a6997eae2dd58f59a9d1cb0a
Date: Thu, 03 Jul 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751501393
