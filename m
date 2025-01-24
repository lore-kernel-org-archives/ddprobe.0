Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24EFB1C4A26
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737714954; cv=none; b=mF8/i9kLjgeq5E4SfAiujWAk6uQdGeO/7d8zrNjxoYUWRj598Xau1RULNBe0p3ZzVROC2YofHCWZE862rseQbEwdLn5zxBZCfxA2y04Bf21Fg2cMVhDPDRCNxdfLUpWag1TawmALRoJbVbs9OLj7hUPmOGoy4Qi/YS6L8Bi4NLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737714954; c=relaxed/simple;
	bh=9hGtA9w83+I409xDSioRRcSkcafn+sCfE5MJ787enu8=;
	h=To:Subject:From:Message-Id:Date; b=SFpxjr7DD2G0rgSJVSroRtOL31FGV95q6Y9mcNLgN5SVVp9PcCpuxba6qocazRVwgWQUKwfHn7ag49nse7qjU5PKCAxA2w+p6d/vQ99A7IvbHqqQlPvtMxAjT+zFf2z1d5071lZr0PN0SilL8KaPBQtqOlSSQ96WtKMFtUxTQBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CxaBcb90; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CxaBcb90"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6C75C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737714953;
	bh=9hGtA9w83+I409xDSioRRcSkcafn+sCfE5MJ787enu8=;
	h=To:Subject:From:Date:From;
	b=CxaBcb90TaWqISvnR9aSIo4SDwz6oCu42ffTxGx5/droXdCOqY6FMWcqpyGUZHVPm
	 e35u1/miG29Gue9VX78soyBaQEK3jkO03poh+zRCVkeP63FqWM7RecM2zRtBiRYpYW
	 eJOhpo/u/zcTSbH7gwD/84Z60z8KT0fL8/LIVzvMSkEnuURbetzEe05tK9/FXGuNu/
	 M0hHzCnZYLty3CyWoHimnLoMnvRXKgqVjTWKQlCy2EJ8BG1If1umt+ZrJgw8lumDC6
	 dTCW/Fe7kEWhxDriGR/Wrq9E6ZbJQu88VTJTIGR3gpptlni+GIyK1H/MqqBHYRzhLB
	 L9Mm+oH8i4rpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960EAC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173771495360.392.10969819573812410942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af4e9370cc48eeaa83abf26761f038d7e59bbe9cb1945a8d049d146de1a1a486
Date: Fri, 24 Jan 2025 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737714953
