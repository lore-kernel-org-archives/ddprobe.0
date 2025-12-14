Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172E72BCF5
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765741974; cv=none; b=kUNzJ3ZSnpkF6TTokjBGhvMyxHKQSlk+/yv29CZKTcUfgbe2IFnVxWsdk0tyIx9jwEH9vnuDWLX2PDIx5DAWQoMQyEX8tzhsrnJ0haRDzPvoFgakKWsjqx2Gqjc/Ezn3ICgqCVt5fRofyDvmmYz9YUsdaoUeh17ejLLmRODsgUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765741974; c=relaxed/simple;
	bh=OjnniOztk9od6WvI+GTUHqhAS2icx45MD4VUOdPcBpE=;
	h=To:Subject:From:Message-Id:Date; b=XB50VJlBwaco4hUrkZyaiMd/TNLCkFS/acOxMzkmG7tA5bRTqob6ZOjTRPwNPzDK1P1uYEhNIYEGrMys9s5DjOMQ25dQSnjh/7bA7Wxu8cBs4PJmYV6ExGOQ66SHSw/0Pf7fLZBtiSAW2zjF/9e/PlZR/5F7300vtlWHRusa2i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSOV/uBD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSOV/uBD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4769C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765741973;
	bh=OjnniOztk9od6WvI+GTUHqhAS2icx45MD4VUOdPcBpE=;
	h=To:Subject:From:Date:From;
	b=TSOV/uBDbRImgZADeasU0w0+8mwkCuuGRiPmTDbntjt0E8+tO0ywlddl13NARcE7D
	 uALvLZ5J6eEFg1Et6HcA3+lK7zN0Sjna+88SRiZMIOKRT4Al+PtcaWc7x79ym8gK/p
	 9d5SavSP0B4MpICl+a95JDqnGimPMJRWW0VFABYA0lWUmIoLTtgfQi2jufDXBDIFdS
	 ec8W00jfRq6ej/A0YRGrUOhfCkqT7+bVdqtC9SDphl0H0bgr4ZB4FaBuJ+siPP6nis
	 0+9xuKhwwMNW4dA+xzaTX4pmglHVGKNilx6i2YgUvL6qlulhHQ36CmWlnUTA3Y0HrI
	 kVJI6GUX0DM4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91397D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 19:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574197358.22730.10084811887914513661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d047a94ef508b365e1125995943435d16d98a62cb16b8b2a0809d7a4f568b69
Date: Sun, 14 Dec 2025 19:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765741973
