Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221ED340281
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777791454; cv=none; b=hyTwRSZtf4CtMblx2DNsLvIuA5RFqGJRCmDyx/uuAgyTJ/ykivADMxG7/gFGZFXalOyjQaXeAg24p8r8+tnHREYv5yH703oj4vc8nE+zTKIIYpg1aTdxLctpR2ATIWoB9r66VOhodRYjp0sB+vPadciyiY7VjVpwBmM9pA0pnE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777791454; c=relaxed/simple;
	bh=slvtV+WqGb4FTy3Lssm7LKwmLfgsPc1SzjSCYAy8OUI=;
	h=To:Subject:From:Message-Id:Date; b=a6tSRopItLaOxpbvMPU9kS5s3983rS5L7JIxDPRMPbLODzdl7N56FPa/5KxGnl4kafrLQoMOouke0BPcBV7n2NzminqwtZ7loC9dEs59yy5yXN6zNE/2ME3oQNu6HqIfL5OXkfQ8QYgOM6TZ5C+35LeCIa1AYDYnumhKjLJ9bxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e9KEB2Te; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e9KEB2Te"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0426C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777791453;
	bh=slvtV+WqGb4FTy3Lssm7LKwmLfgsPc1SzjSCYAy8OUI=;
	h=To:Subject:From:Date:From;
	b=e9KEB2Te0zqjpL6anHn3/5ztDQJspsxhK1RQv6XVs9fuwVvc/bP8jU+69A1mWwma4
	 H2vD/j4l9tVu1JuSieBiGTUtvwJ/1s0gIYF4073JIY/BhqEmC/FlpsHlfkY+WQbfQy
	 k0W08WaD4+/u2jWsYCzscTkkpdX1eh7wQZIESgF7RBsm1QhO9AjwPFk7zwYlpkysIG
	 DAf6wqelC3fATDq662091sGpBEvEKNrLWMmrFcMR03aOHJcVYlCxtWdwjxGZrv1OJz
	 53thcrajMUcNryeYrDosxyCxZ2HpHiLonqHzvovhgvwtkqtamhf+QQMgys8J/Ri2P/
	 9xrODYIlu0kgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4ECFF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177779145368.5519.2460819840410447202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1924ff642fe3a1519f32c6fd43f255b634479bc53c31e83aa60ff5b22d954c35
Date: Sun, 03 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777791453
