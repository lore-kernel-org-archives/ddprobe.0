Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 631D06AB6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720386383; cv=none; b=qLtCSBJGW2rwEV7pr7gzm8vdFGThPwVqJ57Z6+tVJvpDFEfx93ceZdZG1bCe7cAb1PLJ0zrPjDSKSShp5vmbKZHfTYNROyocG3Wd4yeaJcfC8BuXXRTZq2v8LTe+XHZs3lJk/z76yoy815MxKMaawIQccGYIoNriJfKfpvSIVJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720386383; c=relaxed/simple;
	bh=aksOIl4w/TwLhzlKliU57HWieev8DOA/J4sC24MTcR4=;
	h=To:Subject:From:Message-Id:Date; b=d1RVjwh+2yeHESTo4RBw19i3UphDbd62eVlEB/FmY0K1/LvRGGN3fx0LzzoenKcc4Sz4PcnPGBJ5MDEaYHGndHO8xzt7pHXM2yrog9IIQhD0BQW1yLxFUwgvoaWyPxnS95bEJIA45BqGSbxclOOPmyhCjO28LstWT6IOS9R5WYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VWi5sEek; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VWi5sEek"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE08DC3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:06:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720386382;
	bh=aksOIl4w/TwLhzlKliU57HWieev8DOA/J4sC24MTcR4=;
	h=To:Subject:From:Date:From;
	b=VWi5sEek9g8Q9ZwC6cnuxhZpO/mU40OGHVz7JdL3DkbZVRl/ejf4CTprmT3VhQPxv
	 g7xCZpAz7yZ/tBV2Xv74SRkMj9tl/jYcc9WXWSXJJWR4vgKkb9kOD2KFyTYkF//ZXS
	 kphUcC9BcnsT8zf096PWaV3jjPD8MeUoP8hfgL4dmaRQ7R9XIgW2NSnzijQNXGWsxW
	 bIfjdpqynjuPuPHUjxNhp+XORDrUO3eOZeE8T7QU/dqkth4tRWW3SiV7rcYSB+7hka
	 eIbCeHAsfq2xBBmYp9dtpmAtFbcMWuY1+tQBSC2IJ8K51fWXl5XCM0ltbA/1QCpwST
	 SYMxPd78F5I7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7527C3DA41
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 21:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172038638280.1142.9379196355174153495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3405b41d1fa5faf1b67ac065bebd768ebb8decaaccf21bcc76ffc9e86cd7f86
Date: Sun, 07 Jul 2024 21:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720386382
