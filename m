Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2595221ADA7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758789594; cv=none; b=BaekkYGhEWXc8VipUhdklmPmM+M7LnWr7VAcKDqo/pM71x/bBr7sdURe/ldYW20BOq5NfjNZRo+P/zxPGsqHmGdGrAzMVX8yWa2iZTnUuOy8N5PSY75bYllv36AdGs9CnwekL56BlIfHzawqC3UsSkPO4ZBBG8KWehcxvvynons=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758789594; c=relaxed/simple;
	bh=MRhEXX/MPt5r+QUugM/RA8kv7bu4yGYqnBI84Ccf9ro=;
	h=To:Subject:From:Message-Id:Date; b=ds+3aadFTw6afZLLkl0UaEl94pE05u/LsOmvB5P2F++BmMmRAfE5B17YvqfS6KIiftvDMP/2o5RLhN4wqa6hgup2MLVZo5PyS4rfXq1rAjBxEu+2JB+IBluITrt6OmKy19p6r0wlGTow6kkj2Ft4sdtiCICqFJm5f3ZbMRSOaMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KsghMvO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KsghMvO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3679C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758789593;
	bh=MRhEXX/MPt5r+QUugM/RA8kv7bu4yGYqnBI84Ccf9ro=;
	h=To:Subject:From:Date:From;
	b=KsghMvO/hkR99xDPVoLxTVtwOJyeEaL2++01FHMHJOvxYcDFK8OKK++lftf8+U/y3
	 DXyswJfheQR7zDmPKJiHdYzfInGJ7AAhwVDOh3JwXSgWFMlUMi2r6v85ZIYaMa1OuK
	 2w15qPEF6JSLDk3sSsNJeUl6xKccVK86+ucvamOQcdL4LUr8TzvnBcYSH03rhBw6NP
	 y7gb0WXnkQsPRtayNufLzOF+EYEOT+oirhgHuiYwFj6GQE2XEWILMvsD8/triYK4oJ
	 3Uvd8E415K1KrNHYibEIXHyb0gbrnW43uRewGDIreVFSMuMkMfmPFV87T5A7fsIhYx
	 Fh+OuX0wpYArQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91589CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878959358.21408.6247131640910304042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24305697863589a5bb545335637cbf114e863ea98ad36818952348a895a8f503
Date: Thu, 25 Sep 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758789593
