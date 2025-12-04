Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E1F239E65
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764813174; cv=none; b=snvb1DhBDPh+WH7AqcZrUhHyvN2mmm5cFZ2SQFfvxWhe2z47BA2fr1U9KdgrQlyb8wHLuxacJTfCX5eYCrskco/Ifw006ZAhDFDFNTYPGzL9ehK2o/xoPhxVShXIr/wtMwmwmbyQ/Pr+JeEJeCYf5CZYk+Kmg7jidQWNk+P6VaU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764813174; c=relaxed/simple;
	bh=8YtmmL6W1idtY6V0NcoDM90sTMId6qsropX9IDaz2Cg=;
	h=To:Subject:From:Message-Id:Date; b=Lc+n17FelfvbgABcrBdTwmdnbtG1EJ678WbW0VjMxU7SezXjYXlQgJqpH5KPfsYjctQ9ztmH01F904D6JUuo0J4BBuO987rAoVNs9in4Dk4IbzZP5EimJ19sN6YdxQAdAttnif3aG/JXr0KoDKxm1ttkpoDVb5hzvg412/edaKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rb+deX+U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rb+deX+U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD317C4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764813173;
	bh=8YtmmL6W1idtY6V0NcoDM90sTMId6qsropX9IDaz2Cg=;
	h=To:Subject:From:Date:From;
	b=Rb+deX+UJXmnu+Ogrus8j/7CRLDMrdZD9rNN0vkOpRf3oZ4qXfjsj096Kel6zYUSD
	 6BHOlnCDEF94+hYs98RTwHG/0rJEV70Apt6o06qqTub9u5sBXJupj9rNhxmS4UTUkD
	 dBEz32ME1vvEHN2RM5G50SSFq3KeVTbShMGjK+/cP50G1j/kVG7aooorUolnzo01b7
	 vvEqM6zSpfrlwzBETJ6YVnZnJkuYo3/0hORpyBgWFs1s06I89Gx+xlwTuvDuQdC/GS
	 dkE6adA2Z6bG4Hvz0qUM+cYfBNSSLAwDmnmkmnH8OkQgRbrrTMeHQVZX+0DJNZGobb
	 ydVj3cCLwqUSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CFFD1CDBB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 01:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176481317359.11398.632671233820482747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3fb7724d1af432aed8b6cce871aedf7fcde15fec4f35361e4e6414d3d231fa
Date: Thu, 04 Dec 2025 01:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764813173
