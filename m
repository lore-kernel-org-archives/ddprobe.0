Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B9218F2D2
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 15:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721056463; cv=none; b=khwWcJSpIDuSv43ZCgZmB1NxPvWZ8Wnat2m2wX/5aHlZXDirBBjEC6ULhCLIQs2EonrvU9BXk4O+G58DbQfl4ANkhuLs0uycCydhwZ4NAjH5DwzxeDkOvIKIF+f9POF4Y36kgqNe6oA0AK+H22QaX1aMc7LEloyLHloir8QOOyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721056463; c=relaxed/simple;
	bh=OSI8tyJDWozwzufVSYUB/P5IS9VN6f1DegDeWzL5L78=;
	h=To:Subject:From:Message-Id:Date; b=FlMuXum9SVg6MBbusbGKSUPV3IzZW0yVOA7KoXrBhIUFUqTsKNrXM5IHd8lKtfv2DRmqcgs4W7tmL/tXGtiX0yP7KKNqoRtJAbVB/19HpIBhwAmQr7KQ3n+SIoF/75oj3zZITz+ChA75SiQfsrSbdMB4W3EyI3xom3ktd1PUapU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rLXAFDPi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLXAFDPi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF811C32782
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 15:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721056462;
	bh=OSI8tyJDWozwzufVSYUB/P5IS9VN6f1DegDeWzL5L78=;
	h=To:Subject:From:Date:From;
	b=rLXAFDPiYWBvXZ7SI8EhttjSu0gVuDYor14m2ZJXKaWoJ+mOAXyCDAWhxdrXuqlS/
	 uQIplEwHCytUiEn685NzrnWjIJzOLYGfExoDIl/MEAxGHqJrAXZ0KqMdFtJYtSVLKT
	 T+WVqd05ZmxdZ7U+kZMyFHA5tDArxbKgCBRwzAnwPMAoYegeB+pIgwrzOMaMF5zqZU
	 JNoeWUqbdlvwZR+Lnpm0lCP4d2jdpVd4lBMU1Edx+uWuhWFIQ/8CSGCLTyEJGZFR6E
	 6mKvk07argU1coDG0tBWnAPRxbKukZfU7yOmqKCxpSogKeK/zjVvDylRw/h+y5XSqN
	 /mav7Q9JJa96g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBC91C3DA4B
	for <ddprobe@lists.linux.dev>; Mon, 15 Jul 2024 15:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172105646282.9700.14536269106884291300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332c06163127f23ac4387a8c64f26655c9092fd8e2f5f391cd2ac98fa6cc5cdb
Date: Mon, 15 Jul 2024 15:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721056462
