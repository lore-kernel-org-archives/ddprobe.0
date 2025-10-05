Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370E91862A
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759626595; cv=none; b=ZggOXo+/NJ9Hjfrz4p+Fee+dW82ilT/wFBRgXu+GYUcv/LPfnHzNX9TsUYMAKSBxQyKLBjgtOVBdK6fZ22VZYnGUtriuUNx5XBOhxOM96cGpqtENfddef2YAILgWdwMnpM6l3J5h81ZgNpkDHqzGGOxgwW3mdAc/elug1D4Z3cg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759626595; c=relaxed/simple;
	bh=SzuUMvH7F1g0Fp0oF5Y796a9Z40t/53Gaj53DAO0hgI=;
	h=To:Subject:From:Message-Id:Date; b=NSQ3bu2oSDkEOyKHcwwzl8utgV8LEri8OppXtZIiHtRhMpOZO+nFGCAOaUWAI6r2l+uIJXNhiGZXv5dUrWwb6zVkFUQKs0MYQD2pfRTavUQcdvyP/otu/BJrfusDp6PRPdTt6u4gRl0q+vthw2GoS4y1NoB6o6qj6mugED9GyGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrAt2qzz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrAt2qzz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A751BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759626593;
	bh=SzuUMvH7F1g0Fp0oF5Y796a9Z40t/53Gaj53DAO0hgI=;
	h=To:Subject:From:Date:From;
	b=VrAt2qzzMRj/alSg2LtFkySRSENNMVASroFOgmHwBFGFaBEiF5IlHFvmJqBv8yuCN
	 IFUYnDR5rCovKQ1fS7iqYouPZ9d2ng0hxzOmFSCfkXasayrLbSXMMwZbWt9G5VGbcu
	 ObMH6JccGHoWrQiDeVO/XNKllD/EmvDNw+gkfow0sTKy1WCfjECZUwpLIXq3WVb7Uu
	 AIeojoRnUm4jpAXJAfEOcCFUGbBQnZcyskfBEe1HvIzJHIdsTsJcgH6leX9mTSevLi
	 8ohz7UzA7qaTToQLmsgSAeV2IWqGuzjepFR4G567AW0Y/SreOtRZE/iSlnHZKQ8rNu
	 XWDetHAr7+h9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C4CAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175962659358.14672.1513762014646543271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e3195b379a5eeb26c9b797e4fe66e80f8dd6ac350c870f5bce5bc1d599b1414
Date: Sun, 05 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759626593
