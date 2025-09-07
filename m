Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D78681B424F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757276393; cv=none; b=J8ylo4QtREwD9+RAxjW7EY+4RwzuhINjYIlDqtgeR552941LZSn6fYWMWfDBbasAzJ09wDAZjm6xZOrLxP1apFGcECpmXymypXRHmBNw9XmoyvBk+JIBsoSsMYzk0AToP+OcV/FViUpB25FtT3iyWEFBMPm75APC8QGCMBKknDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757276393; c=relaxed/simple;
	bh=H0o7P72fVn06/JXCy2PdXjmzfp/ZFUfUUVYwrwfQTdQ=;
	h=To:Subject:From:Message-Id:Date; b=WKgUsbiWPKGCBw0cGXPM3CsFRrZvdDOqgjCN1rznIkgODqK66/2dG9jXHFlJlucD73/G1cmdMmIdt01ytbFZC2pCseIH1fY1kG9cAbM41xPb2t6MxWfvBHNsqredhuoWDnhHirIcVHuTh4INyw4WaT/D6T16ofLl+NSucqHgoms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwuqGAHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwuqGAHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E25CC4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757276393;
	bh=H0o7P72fVn06/JXCy2PdXjmzfp/ZFUfUUVYwrwfQTdQ=;
	h=To:Subject:From:Date:From;
	b=GwuqGAHuruhCo8hOs4yKNqnM4Kj6k9F+udMcKmMJ+XSOfd7s5STuITwnNVdblT8az
	 fNolExovZUZkFVykdvjaodNTUyLWBj6z//89vIHuMD+2Muy6QSKZpBy7RpGT9H2jfs
	 8EQ8/5JfgjtQn/lo4xufvuCu7wEehScF9THyHsjLvODgiRfLqA1qQTywUXaREJl09I
	 b8D6+kph1g4wTQ5S7pb0ZuKD0wFA8rfq3dKtpWaaU3PQyAyIQ6hhVs9qRZR6eHsm5O
	 lOpdtOOAoZkXr6entCDPkSV/uJK3zjpBDZkQu9iXzdGBYMYu+D7G9bhFEEuQeVsT/B
	 nA7BhAKZchtRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F818CA101F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175727639358.25006.9350187250177365433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 614b575c573f6cf5a098397505a261e65deb676c1187bb3c7760967f3545ca7f
Date: Sun, 07 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757276393
