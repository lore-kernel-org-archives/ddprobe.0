Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 667E81DC985
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781799994; cv=none; b=uLCdOLfoznmnQCpyWRk+QxvSnK8AGswkbNQZxzFJXbB5MY1dVxTTHOLD4sQU2CO5UO9bTM690SeL1f5iHFrvAsfU1wVvEe1MriJgOuNLH2t2qXOSLffruepU8lniKufJFbbc/SUPWhYsjvht00ELtXJ4ExL11U7jEK1g8S6gSc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781799994; c=relaxed/simple;
	bh=Ro8NOlCUuI3G0hM4HpQuKzD7n+eu5py7tcapndk0noI=;
	h=To:Subject:From:Message-Id:Date; b=WZ1B5yMANKJVI2EaTHUb+M0VuIF5M3RpRyKsR93g3W8ZSK3vaHGmE5Q19xRVvLhXEHD6pXc1YbWnNeT0FdqyiWw2WuHb6+hGQaSbABhH9ID/T/Ng66Qe7/JGJjF2W3YxsWt0tGwP1vajPQ27HvAGLSEye2qzzkMuODb9z5gm7G8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RTle4Vth; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RTle4Vth"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC027C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781799993;
	bh=Ro8NOlCUuI3G0hM4HpQuKzD7n+eu5py7tcapndk0noI=;
	h=To:Subject:From:Date:From;
	b=RTle4VthwLhdE1/ttsngOvir9KQf95J3hlIQybyYP3y20mxQhClXfOU2cVyluVpOp
	 IOi9I1ijBRjVamevICPlvJq7Um+dKKN9zkTIF5HCFDmlicDRco/+WvZQKKV2YTJzQw
	 1eRbqV0Yzj2gfpV1BIciis0asmv8GdYpiXZs0Nwt4i+6tKH2t2gr2Fimu4OlXU+85e
	 NgDOYwvvakjCxoz7XoXGoK25gdj3yvtpoHiWc6ygFaBbUM5LgTDoMVFNj1iBMGSIWP
	 5I9n+NYVTazxRQBlxfM5X8aCO40pF5GN9qSk9XAkk7TWQE/u1qF7sy9u2c/s4GA38T
	 Nq/4vxghF32GQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA67CD98F2
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 16:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178179999371.7988.12810820054950166044.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90725ff59b25e397f3ef178e5ee2ddb190619369b1478c4d3b266f4886aa1570
Date: Thu, 18 Jun 2026 16:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781799993
