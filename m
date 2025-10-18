Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29D516FBF
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760752794; cv=none; b=sqn6MBF1ZWTCEBRxrugFxIa3y40ae9eNwlhWp3uvnQEWIh+p7YbTpOLrnRhjY4FBqHZkzEQ/n5wwuu2Cr6Oy+Y8HqkgSzhGOx5vEHS+42ls8NBpFyPwPHARC2MTI4IQbibDmSx+P/w1xLWHWU9feadTqNQSeL84fjRnFs5If4e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760752794; c=relaxed/simple;
	bh=1nZInrE4HOQk9vHppiU4qLeDymoXC/LB2AgoB8gR58I=;
	h=To:Subject:From:Message-Id:Date; b=YEXhizv/9BQc5ashNy7QjnwqrUP62O4ny0DUZJqUx/9CfrHeMqPKtQfpWDhaOP+5eJOOlsnz0wusO7FyycAS+a7CxxEVpdkGwkJ173uXG2YnX2s/EM+htUE/BIZu+92LdTWAiS+hvpCkactLb3vZ4l0ye/TyrXTsxarttB3c8Z0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GhDmY4NU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GhDmY4NU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F8AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760752793;
	bh=1nZInrE4HOQk9vHppiU4qLeDymoXC/LB2AgoB8gR58I=;
	h=To:Subject:From:Date:From;
	b=GhDmY4NUxctnVqPO1TFwaiohH1KJKisCnBRot2FZbNqvyBoFvRm0dM7biXBnmNTeo
	 w98DWx5TYE7xyoIEwT8h0T+agY9wiDdvxmdf99DIlWKBnaQDz8BgTSg2sQcrfA7tfU
	 ehnHa9AnIle5syfDy2Arr3TZHWUFQ58LK2vPyfg+ElL/JWOGHoBiRH2jh/1bg5bWyW
	 Ap9HCDJlmblau8bWY9h/jBJuVfuPTwz4ljf0WQAiURJ/TLDGzDJcq6xfoIx0Y1AwZo
	 vmlL0SL4FsQR/Ax+mMseWQ2vEL6/B0K+H8jhJ8ZJrO1OzEjnb0p4nOpEErS43DmVAT
	 wBtyq1Z+AeG9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91147CCD199
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176075279357.15502.14641166181527743134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec56523aa435b77509952bc194c24f8c97466d5371c656a250794e1568ae0310
Date: Sat, 18 Oct 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760752793
