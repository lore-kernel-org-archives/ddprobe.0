Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 426E15221
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727494554; cv=none; b=I+tQ6XsSpf57SvNhXKSG7O3WBGxPM7bxJnjehtGg94BxDhC0DIEstwxg3VAE55f3qsN8wx6QvgSCfyyy39yIXf+ESLcTsgX2ScWL5Dcj0cqedVv9+3NBdC82Y28s4MKLlEY5b4fV78ZF6l7ObWyMDS8Lr3O+gLN+QRKcfJjLxi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727494554; c=relaxed/simple;
	bh=6mZDscma14tFhcT0EEhYfqtEtM2GcYcCAiDIDT4EuLk=;
	h=To:Subject:From:Message-Id:Date; b=tyx8B+/q7+p1WR5pW/312bO3MIqOruINYAKMKzn35dohy4o5tX2QnhFDgmfdK1diwNQL4ygrPIj6vp20SJnQ/xXyjoTNtitZ96mv2nwHWAFcEikPscGK+vugj+t+CKnVFqGEYnOWSZoGk76HBXLg6mtbyoTSFcaPm/mMkQoMxsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prbA+pYH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prbA+pYH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F79C4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727494553;
	bh=6mZDscma14tFhcT0EEhYfqtEtM2GcYcCAiDIDT4EuLk=;
	h=To:Subject:From:Date:From;
	b=prbA+pYHK4dX/ahY3HlQlT2JECI4G8CNpjHLARBY4vjA4Y5+zejmib2rMIp+wYeeV
	 yKUHGrCrAvkAkXZjeqWclcfMyiRaxDXV4/81+rIFA7WwpcBKkSIGA6S0woRdS+1smu
	 f4Kd9SFGIh8ga2COG4neH1G4TcqMR7dpXG41p5zaUzn3t4cjiB6lraCUWztSPI92Uh
	 lTe5YfGTi9NUjgIbr36Pta/rD3q2yd4FjYxZtJRHeBtpEMG0/sI4iCpT4bgxMDLt1A
	 oMiEt5AKntU0jFXdp2JaKRcydo8LLXfflua08OKjccYfoNyCs2whXBslrG9P/kvCFY
	 xuIw9ICmKHmDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1472CF6493
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172749455363.8281.4868828955498947924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a09e1e32158ac49729e159d878be6b479019ad81b0365dc089780d9a103d5121
Date: Sat, 28 Sep 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727494553
