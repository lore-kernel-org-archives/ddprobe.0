Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B8701632E6
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732351554; cv=none; b=aRjVShdeqOpQn9eRNTHkIjNesczXBjOEvRgXJ5j5OOVKCBP7WIwPnC5VV/bBlJuCpP8rQUmSAJhDyhCvjbJzoV7cKDm9CBe9x4DX7ski1K6ol5XRAgt6tNkWc+6AbQAkafjmemZ28h2BmE//bQwxTAn0PW9xgBMtla45mOz9wMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732351554; c=relaxed/simple;
	bh=NlY32BhpLHtaADAfxOUWF8+LOumJUrBR7c/NtuJL11Y=;
	h=To:Subject:From:Message-Id:Date; b=KFAJMkNi6z4/7YuGqj9hJnpqDzEaJeZ2DC2NugbekJwm5Z2z1e3URw98MVkiyxhnm2wakMIxDYAGvsCA8fQiCrGDd+nK5qzMV/9hBadQnZpk880FJ7zTGEyOYH56EdGqVQpwHl21tda3642+YMa33uVcvFo86Z0PhyI1QWKDk3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rnLcUtX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rnLcUtX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9C04C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732351553;
	bh=NlY32BhpLHtaADAfxOUWF8+LOumJUrBR7c/NtuJL11Y=;
	h=To:Subject:From:Date:From;
	b=rnLcUtX6CH/5RtoBfoRnFosLdZP7x2AstubAWB3DT4FFgodUCcDDNmCF1bZi2xrKq
	 Ds6Fo9ECDO1hEctd+9vhkGtvAuAKsoQ1mNaxBxWvWNYberHQ48Z819J4IwOoreDYtX
	 5OeYLX7iOwO3i83ipxg9xcgOxabOxYRZukXJFUnf92jOVG8aTkZV6D/VE69TqcYql4
	 TttFpEGNmn9DZTTJ95wxZUQZEk54U4QFmnAI9zJhTAbkDl5oeDabniy2Bq4j3d+a5i
	 J0cPVtsIyh7jHWMfvpQEodEUzcU5MOEgTnSTHZ/+jG5r2pPay3dBPfbLzYjzQSFd3N
	 3SDh/VlgUxuPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9731BE6ADE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173235155360.1110.16407933043891530646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b28dba0c4549938e46f97d60258c99be5c9bea438a8a04b44dab25d4ffdf4697
Date: Sat, 23 Nov 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732351553
