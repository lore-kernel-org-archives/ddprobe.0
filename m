Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167EC81ACA
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757846394; cv=none; b=W0kAEQFJn55EW+TaBw+/MNfGTf6IoG0AbqvmbEXSB+QxvQ2P9KUfLjGwb+jYAg4xuOQ6/QKAcL+gk1x3YPPXoPAZBhlKtFpp4r/BY3w7Z061bfSM3WtjSwA4NfaMyavhu4aMwurK3/yQhzu33xRoHTUyuGj/GgScvufVFcRJAI8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757846394; c=relaxed/simple;
	bh=q4niGGPXGqB3A80v3UCKb5/BiIpwVt9gKJRNU7MLnOk=;
	h=To:Subject:From:Message-Id:Date; b=ibe3H2AjIXVn5zmgiV1buWW8ijIbMGsxq0nJqzCqBm3KeoGZttNA3aV3O2MS79iG/AwGBbcjh0YC/eKzYhGZQnSHap/7bYeKcrcBBMhdxdNSKQ3wbdk6BjauhFkYL244VTsYiTNzBVqUE9e+X9FBMpp6VKiszdi0DU4V/B5GV7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fOlNcQ8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fOlNcQ8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BC9C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757846393;
	bh=q4niGGPXGqB3A80v3UCKb5/BiIpwVt9gKJRNU7MLnOk=;
	h=To:Subject:From:Date:From;
	b=fOlNcQ8GyC2bI7XU+HRrk2EAeUE4w/LyxQCaoYsXOx0w9TA/KsmxflewMt1wNU3t+
	 ceXWk7ygVSzwBeQWZVfwqnCssWbqXqdeM5iEHHcQpEFBo3FCwmFlJnSg3BEnB6f1/V
	 98/OyOyUrgkpe01nnwCChc9XDP3oyMMfWsghp52tM2ZoPjpHM3pnneEQvH7l2NpFEF
	 ucSCPdoDqC6ercg98VDjcVKmZ4Cuz2goHjXIlpRfStH9OfkT8fO8NpxDc/qhLceCd1
	 KEMVipW2uTTjJQnPh/aeZBGulIeKUPVeDU/wUPlx6IY1W38vSHWYjLepclMObQP90Z
	 ztdUvrNac5rSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDBFCAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175784639357.29248.17888633178577443985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5534c72af09c22b632b3e725843e1787ddf8708bcd5cf15c5119881219d8513
Date: Sun, 14 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757846393
