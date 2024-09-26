Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7D4322B
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727357754; cv=none; b=l5CdxTeBoOY5kO+gl0/n4m1cy1Y96MMFJgkfVcpEzj+ECDen14WzVz+BQgiTXeGX0xRiz1/yx/6CZ8GIVIVTvMHawH5MSxqVe24GYfahTpkGeao8YjC4cGtgc30AIW/XjbTSA5fAiQwc3IvXdttS6JI7LzdwdvUFqc4tuFEiFQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727357754; c=relaxed/simple;
	bh=pmSmCkBJVmstOTja6/5d54vCAY/0ORAoIPoxiYeJUYU=;
	h=To:Subject:From:Message-Id:Date; b=iSvLbyxrkz0HwdC4BCBw90Le2zKp+7MeQy53CRajpThO4maOxvVBXg8CHpFuWbJd4AABJiCnQHl7B4gt43bBQRQrBe7Lic7qrUdxJgV17Am7UAyTagtXlFa3PSxWfu/qgyNJVf2M9I+PIzAAivGvgFxvbtzygh6fiVMveh5oS7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8MX8byq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8MX8byq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4D90C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727357753;
	bh=pmSmCkBJVmstOTja6/5d54vCAY/0ORAoIPoxiYeJUYU=;
	h=To:Subject:From:Date:From;
	b=Q8MX8byqvuM8v7lT2fg4wAimKrlpzmVxhYX8XFSpi7IbavBEL5zaQeYC1FAqmBHzS
	 MZGt57lYOGY6mAknjd/306letFcdzp+7SsuzfSUw7yupONA9wL2gWzbmdE+70XJQ5e
	 fdW8AOKFpzqtBaxqXi9HOAoZmNVEiAKNkxl2iZiIRsyBHgYhuTWMr09IwphsOtN5kH
	 0nqlLpSZJRTtqW9FsMrZgMlMuNqozBBfP/5OnRN3+hr+cgpqRy5RvKX/KxPGXtf7d1
	 mIJil3jSrIPvjjCVkLScaqFZ/PocXAkvJC63gEoULmgZ16/qjFXotWwMj99MGi+3HN
	 XfKWTAIMjWwKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A74DCDE006
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172735775362.6305.13517097782232283663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c15e356c4988920ba6d5a72d65f365b3b8291acb42bbdea6183704dba162f71b
Date: Thu, 26 Sep 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727357753
