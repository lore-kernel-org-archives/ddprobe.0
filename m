Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 276511BC3F
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727211954; cv=none; b=XEI+fr+fy2XBulASeuWm7GRiq+t0ObIMKByw4dliIvi5G5ySy9cYr4tofhvpR5+gWG4O9+4YwUe/lIOrIVNQBG8jFYEPHdrN6WJbvw811pI2JRn18pxG1uJF6y7BSL70M2zWvyRkwBzVhg5NLGNKldOe/KEsg/WohiTatFcgNzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727211954; c=relaxed/simple;
	bh=BpM6MmdhZTfcYs9pwcdwmw4iqOQr/B8sOmYe95n9j+o=;
	h=To:Subject:From:Message-Id:Date; b=OQKArjZEgHtwlk47eg6n2r7KmNNGKmf4y3Z5obBy+/X0jyGoIqHYdQXkxKZYTm2AtxsPc6ynoh7lDCHVOlyKP0voVdY6FT6iejtjIvMmU/Eg615UfgUEFbzeC7bcyH6znq4n9AFpK8FWluGuetMZWtoeuKc1f3rzxfTTuc7YB58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s6JIRVIZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s6JIRVIZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3305C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727211953;
	bh=BpM6MmdhZTfcYs9pwcdwmw4iqOQr/B8sOmYe95n9j+o=;
	h=To:Subject:From:Date:From;
	b=s6JIRVIZGDT/CQwH428g7lbNNTQ7smuKZXsbFB+k8/Lzi+P9/IWc8oPSJZECRrxla
	 PzaC2iKIlWPyPpmZ7708+sLfrc0Pwk0eySo7Lfl9/02BhiD6KJQQmrleRQvVVLvMla
	 1g7eEttggVkRTIuMQt/8qIYaNVVDqqb2xtlWkhd3pqNpk1bxaHKbnUt+YCVun/oi9c
	 IKFNP+qqwFEU4syNxqw04OKtuPZAB5w27sq0vrfgcbaSOfjkOG+zmB8nwAUGzMy/Yn
	 zv3J1BZZNzdKXSNwyv4VzfeMvO5o77tJdaejd7abRJPDaohixlZajnbPEH0aLNib8g
	 wKxdehi31qA4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D445CF9C69
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721195361.24246.14642198483564861436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11f574dc312c9906427562ba2b4392fed6c48756aef0e39793a399c6f5d729b2
Date: Tue, 24 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727211953
