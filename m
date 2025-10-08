Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFBD2EC0A0
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759934994; cv=none; b=VK2e+CwtpB8IZ4CKOpqff4QwY81Nh0Le3AISX0rP6rxUEv8bdfgg3+S+2hjJcVX1ixiP3HHzpC/9rrxaxnlH9UxdWiyhBiNhWEB+r4ei+QvQbztb1DE0jGSPaWoD/LvqIhrpBYsWPH2LBxyzaQOI9hQSKio/CN3zdjfAhN2YHT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759934994; c=relaxed/simple;
	bh=/VNVVgtymFuyFBKJ1xiT7R31UHi52U6DpA8YUi8e5A0=;
	h=To:Subject:From:Message-Id:Date; b=PvbZjnwST+L/t/KD0gXLyim7oJ65PFO3Kejl/SW99qFAgcl2q/98hs0uhV8bZGHA3Ga9rPjchlDc7GtNMd5fCC5x7ODC/JQsnAhs+21btQliJk8Qt/d/anihxNfYwDzaGFgjBDUMZYdYD2b5z+AZzIb4NVQJQt/BDHx0gObRLTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gtSfBXyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gtSfBXyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A430CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759934993;
	bh=/VNVVgtymFuyFBKJ1xiT7R31UHi52U6DpA8YUi8e5A0=;
	h=To:Subject:From:Date:From;
	b=gtSfBXyvKVBc/KeVRuzidd+VBrn1ubZcKjogN+x8Otrg7jCWokxd9dukvQe/y3LzV
	 sJizlIlPSN7zTwHc8yo1QLE8fs/Lr2DK3nkUGdarCyhC7KS6oIm+MhrJFFn9iWzjkM
	 2AzK5PWVp9t0mzgJ9ZasOlJwB9InCTKq1SriQGhHR7QFru96NSJhUIsQr8nDuQMzgJ
	 1C6pzn5P5yiaf5zYhI8dwj02OPcG6AhZQNtWIpQrjB7X7BziHAvRO2kSl41HBOzW+N
	 gSx2VtPlGwnwz4PVguBbr1uCM3N0w7PX16ZsFgYyZzVlAdERLW649AXIn4U00cSfHz
	 q5ZpvtV483tUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 903DBCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993499358.8027.3765257256359046981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c56bd9917e83945cc64302235c60d9461ac17721de04c7e7d712486078c2f34
Date: Wed, 08 Oct 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759934993
