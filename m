Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61E231DA3A
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714977143; cv=none; b=OpgPkZ4OzjnSx5dqAjzC8V4zvB5HFbMlibucJ9R0TNu6VEblqwk2XgGhQr48dMxKi0GYDf28l1N+x3hMWSAxfqxnny9wCiHONMZthrN6oKpA/XYt4zCe4eZg1XIJXQ5xucbjoAMZTgdFVRtSN1NbV4XsV3dMUuAsgaCAy9w4Qw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714977143; c=relaxed/simple;
	bh=4wIXPifjmunpagDrW/dLbDAsjUVT5BKwCk9W72UATus=;
	h=To:Subject:From:Message-Id:Date; b=n8oiD4zpmGFsy6E1APwbmKp2Y+y7+dq6p/upbHXG6bdMMZ7tIn7DC3fetJxk22Kj98FCMwyegc4r3UYkOd7mLxg2ZJor4GQbIhK3c7cpkGKuot4ZNweAS8a6D2ZLBwKmUMhN5/v3FXQD1OvbzcPuJRYqzkJOg8L3jmoOF+V+5Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WPsYtI0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WPsYtI0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD0ADC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714977142;
	bh=4wIXPifjmunpagDrW/dLbDAsjUVT5BKwCk9W72UATus=;
	h=To:Subject:From:Date:From;
	b=WPsYtI0Dx+hf87pqjuU6TDP4FFYyTUKnETQl/eboXrZG4RWRZ+O2t20Ng1krmWgc3
	 lkjVHof5A6uohSvVDQ5lWRt0jSKjAw6HzEDNOXKlhqKpGqm+qlF5WvGGyGii3eQji4
	 8gStXCTkGI74Pl+J9kcS0E7pGQww5ZczdZZj266nXLIXpv3asoVW3trmJL4U4BfdQB
	 kKyOw1J5vEY+9eaXBkMUCsTGyXpA5ppYXrZB3zRCcQ1KN68YLD+KAsw6/TE7Ui2Bou
	 c21TqUGYlk3AAmK+Xit0eHHGbc/MyAjx1uRGSGeyma7Y4sAzet1NM7iR3jzyrYFiNn
	 NgWv3wGLFYNcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD380C4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 06:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171497714276.30248.1823254710399889364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f2860d6ed73952a2508b7dacd2bfa35bd19f76234742c4cbc37f0e67a63c017
Date: Mon, 06 May 2024 06:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714977142
