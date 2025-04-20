Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430DB1E47CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745160594; cv=none; b=oaRcnktcYA2FIny7C03ST8CjHSaB362tmco40VeInnADs3hijJ3zU8weMdKS3/X159oYUXQycbYZGi0n/YbFHGaKvbqLzH7wr0KZ1rS0NWaUcZJY1dcyXPa1icS1F8RDaAZDNe0lIA1PNrq56HC7c8Ls0xryJdzjBHl22GeIbRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745160594; c=relaxed/simple;
	bh=uPW1IvUpS/Y3abvQYtp04mX4lRE2dSWi6Nj2ZpxnVDw=;
	h=To:Subject:From:Message-Id:Date; b=QV77VzmeA303KZqnO7rosnupRKED2DV5++M8k6s8QxHLDueUOHl5DWE/Gt1F6eqMQOM56jjfnbnJirMPy2Jxc+y9z7TT47OpaZdosewRBT6CuITnQ76pi5GpoBa/SabfV6xNMEE65o+7ZXfcW1YMDCvfFyM92ozBcAvT6ga1VPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H1LP2m6K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H1LP2m6K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3503C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745160593;
	bh=uPW1IvUpS/Y3abvQYtp04mX4lRE2dSWi6Nj2ZpxnVDw=;
	h=To:Subject:From:Date:From;
	b=H1LP2m6K/r4OXME2zC2nsoL2jkJf83wjoeykwbUjV8ANeDHT4Ha1Eva9x3q3yW8te
	 aYKo4EDwpN/Vzv1LE+gicVkUGiw7AQAQRatbzFkUy0mKREi1IwjBpbOS95hv8vn9d0
	 upN3/R/cDIFkYlntN0sz2r46raXN/sergomQB9UigGuJakaNxDcr41dVydZya5bnxL
	 TwtKfSTYv/qSuw5YbGzaPynyN6b1vQcx9Xkb4YyIahJ1kohQqCEiAigD8yYr1O8zEU
	 U3miDL095WCf5VxkjvLPpCOs1RR8a9eWSqsx8OvYHxWyxMxopmXdpM7eI9iLuhUH/Q
	 f+Ny3CFqIfRug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D32AC369D1
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174516059363.28816.16459641201086119194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb12c1d15d5c0faf2206f48bdf11b69f52e5c892a58cf384385769eba930ff44
Date: Sun, 20 Apr 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745160593
