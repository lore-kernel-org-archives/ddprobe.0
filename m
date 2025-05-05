Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D376DCE1
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746476994; cv=none; b=fcy3wvuvjxFo+7blXp/zQIzBPqbss4bC/wHR3BMFVOMxLerBO7d2qLsWgCTki0xnbsQ4LwgvCZxX+JVi6YyjylQYB255DrIL7gclT72qebjyw33YEXTAXDvlRXjFIkdVnlYKtrhkUoL28/48Q11h9bNY8wEzeySP23bngu+x0MM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746476994; c=relaxed/simple;
	bh=ByFom3Nyz3zyEhzj6XZrg7E/rCl4A/MaEyy8cMRZ/tE=;
	h=To:Subject:From:Message-Id:Date; b=aIOhZ3CrJ1AP2wbcYked+66qLpB9ZF3ucS7N9dPUETsdGHpOg4Q1JgDjDgq6OTvTfkzgi/s+M89NByltBm+1A4mnjSrdexj594g3PZfu9BL7g+gXkGJEc96zT9CrLOw7bHHoDMxabU0VYAvk8+M40mAgLrH+UC9zbwzdSGMPuRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m3l3twvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m3l3twvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D422C4CEE4
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746476993;
	bh=ByFom3Nyz3zyEhzj6XZrg7E/rCl4A/MaEyy8cMRZ/tE=;
	h=To:Subject:From:Date:From;
	b=m3l3twvzO4v5K02pQDTCgprqItP8/hfJwfqKVkk8200xyEspMo5TI6atR7eEA/bqR
	 4unMElnQ1TSsnhWet84+m8MUy/f1tPXHHmyFDhlI3ivDrIGf7m29pievpMhkL/8RJ6
	 dpLaPV6l+DzrCMDwKsr6AB//qHIF5FvASyAs9DPzNz1eLtlGA6dqt5M3AS1i+q2qBP
	 XvhLZpNmqBDr+6vNaOMPchN+eRDHFN/xncrlxe9zHKo7SnLPZdrkcZMXK4qArmV9y6
	 z7m026II3ieAspJeKuvDjoeMbxk2ycNJB9+bQZ9GR/BNI3sd9tnU3mVgiBlVxwijGO
	 qgRgE3sg7AvYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F0B2C3ABAA
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174647699357.22490.4301349044953630404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 298270b3addf9bffe82889e7fb908b190e1a14bb302e062daab51ad11ac2b87d
Date: Mon, 05 May 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746476993
