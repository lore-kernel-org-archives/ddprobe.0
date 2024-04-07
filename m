Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE50C184D
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712471296; cv=none; b=YB75UYtZtEBXXIaCvRmIhWPIgoXOAMB1D4+J8P8IR+Bezy78xKlXFDTeH9neTju6WwCZ6a4bL8SjTGqrA/4mlfnkrQQbJi4EmolcnJpjFdN4bjcoz9DwbXx65xnF1rv99+il4mv1arST3LjkqBucYl17Zy28x7qYRnRLkLRRRlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712471296; c=relaxed/simple;
	bh=MblT0s4kM3jgkFNPUjw4k954mZVlfeYNua5aMqf9zko=;
	h=To:Subject:From:Message-Id:Date; b=bgbHuMoevTagaTKyAk8vtMaCTLHejkpBzSl3zvk/YdRGi3i5BhUeMVk8SA77UONohyZzd5F9f5nbzLr1lJ3F9+4iAlbMf0ffkGsJsS9CnOcTE111ApBc5wmhMMz5eyP+qodeRqt5207vcseAerWAvN2SWKfdEuAq82pdNTg5URE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glf9VAeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glf9VAeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E98AC433C7
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712471296;
	bh=MblT0s4kM3jgkFNPUjw4k954mZVlfeYNua5aMqf9zko=;
	h=To:Subject:From:Date:From;
	b=glf9VAeAQNs7g2O6E1c/nNFnQnpv9HoCGfE3rm9xXCpqwl46Kjug1h9nQaMY3WEwJ
	 IFiSW8J/D8cZbP5M/rqxMeh3JUZpRrBf2GZpDX3Sd8RoE9YovZt7n+agF6Yzl1Ak8e
	 mq88Xv7nONHRg1EiJmRz3FSkyiwaTmyWYu25UXP/A0Rb3cmT9FkbeefGp0WXuFDMbL
	 BhUBGpNPABQt0OAH4M1MaN4Swv/40qj4VEbuS75zocfDY7pO+tY4Z/z/1QR/0a8glw
	 x171oiEQTOQKwGmos3Ey97Swbx6NXIXcVEK0udbfaKmrmykWhMj941fMM0Z3/P9Ywl
	 D0wr8vi4ehIXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA8BCD11C2
	for <ddprobe@lists.linux.dev>; Sun,  7 Apr 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171247129643.2220.8362814891596209205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 41e0c0cdaa76e49861fabde969cac71f7f3724fe726cd35364181b065347f356
Date: Sun, 07 Apr 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712471296
