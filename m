Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAF3171E7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718966543; cv=none; b=kn6sC861EOUHQ+2R12cAHX4di5FEa9SzSnwxYTw2+pXG6iuL8anmo6wK10DqVLTwXUFWjBHM4x+xt6O4TzYG1BuDmtNebG7EqqJdw1OzKFIbHCE9/mWrzyQlGcBVgZGYJyZD/YFRo7bJQ74V4cQXOEDFTpjJntEc4ou26isPYMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718966543; c=relaxed/simple;
	bh=rBf647E4YxcwjEyKoP7YbBaZt9twMBWze+grXXjmqSY=;
	h=To:Subject:From:Message-Id:Date; b=YNa4jBwezP9ECa0+3TubBu7EMYtjWeI0jr5PsSyKqaj5DeJ7+TQQFO6JSGsG1ds/1zHSEIAzqtVqx7ehV3cKUvkjzGjjA8aL1uaFchbHC8hQsleVB9Q3GyeKEnEiR1dUNbJFYVyTt8hWZ2Sx5E7GAiaDh1+OMdZw/x8xp0/d1p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UqTupa7Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UqTupa7Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7526C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718966542;
	bh=rBf647E4YxcwjEyKoP7YbBaZt9twMBWze+grXXjmqSY=;
	h=To:Subject:From:Date:From;
	b=UqTupa7Zm3v3Jizmnfw05RsMM5bZT36Ax9ZYvQskTguk1qEv+8nKqgF+NboQvLQCO
	 mS3pInluV2LcmWigMXlZob3w8eyMpByXsmT1GfjorBod+4DK9oLLRmWKYU/d+zkOTz
	 myODIz0hfpK7ubmfvG/FF+zqLNNXrpKcTIoOs+O46Ok7kmmapHrsl7kzw5iYk4KzE4
	 unoOzCvWhacHZE2+6yDJ//EJ6e3rlgvhwaAki3joGzai11iQZsYbrAQEm85vih55Y+
	 QRAKDZx3gBJMsrSxql5B76fatyPuC/50NgR5669OT+DpUD87mIkTyHIBIG977qIIhQ
	 EPjXb7yUzEAbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2B39C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 10:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171896654278.27259.1534789016630461626.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3da0c41a6b52601b5c07a9e34b0155c81ac8603a6eeda541bd684f82a16bc98c
Date: Fri, 21 Jun 2024 10:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718966542
