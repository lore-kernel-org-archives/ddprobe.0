Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 302DC1DE8AD
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759132794; cv=none; b=Zevux0Cxrm435hT7qVZIeonbwdXT/IVTW8L9PGPD7XKWiPZhPRBBO5LylKVmKR3aGCAeYR8lXR0Qjo0SnpQ0tGzMF3Wc5BcZPEPLeSThwNN+laF5otQR9hXCH0CHvxpFCZhBQhjK2o0lQjWiVwPYAmAEYEbWxuwu2zkWatxjhYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759132794; c=relaxed/simple;
	bh=GaaWMy//6u6I2EheC2aoqOPJOp5ncjOiiGemctZq4vA=;
	h=To:Subject:From:Message-Id:Date; b=bTUuqtxWdyXMw+eMFKAC08P9al5iBFmmHjkQjQsZcufp+fIUzSshNrC5uo0Jil6lM3ZN6dAWi4GPvOAeQM06y3qnb/2/ljmkRCK0b0kA5jRx3gogl14Qew5KvPkMfFle6b4AluY0LzgPe0XvAsPTJcxkBS2gS75s+zsEIMgRZm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pL/wV865; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pL/wV865"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9861C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759132793;
	bh=GaaWMy//6u6I2EheC2aoqOPJOp5ncjOiiGemctZq4vA=;
	h=To:Subject:From:Date:From;
	b=pL/wV865LGVbnDmqZ2W+hE+WNKmbO8/2Qzc1EW0p2BdyMotTpmLYvve6xb1JIypzg
	 e8eI8wA6uMm/TdazHjMnG2KnwgLNT4LEKpjvVHDPjKPgKJfug3vgnvU4HV0IZRm6Cv
	 qURL/cBq8kShKQtBMKli+gUjEnL6qr0s3chPs4GE1tEFae6/oqgWeVC+KTLjFA/fmi
	 Y0H/+m45u69fS77NgtocAhDs3GLBQOxjjqlWfo5zldKHcCQIZAh/WpuUWxF56yMDoX
	 528MC05mP2ChhDzpavinM3jIF6JKzACRRFq1Z5IS28WweLSNuK7/Hpdx+leoQ0SLEA
	 pry3KgoLkVR+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9280ECAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913279357.20854.14838591432128646148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f65fa6e81323caf58906765c8d362aae42902dfd4d991f0efa1a003d922a931f
Date: Mon, 29 Sep 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759132793
