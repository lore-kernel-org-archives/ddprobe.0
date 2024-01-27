Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020B633D1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706356097; cv=none; b=YRLpyt1Em0eH3jHWeQ40GMnQwbBLazAptfNiLUIhJCwPieqWBT13ARKhjvfdTE95Pa3k1gaShcXoS1ecp0nA5ivMWHBoGdGLTpfK5CAjWI/+Evlg1je0ms1RDrnQxDoHRzvtpFRan/5kqGLsLaL83NSwwojQ38qXFRElqFoVOBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706356097; c=relaxed/simple;
	bh=npc7r1+6FEOBtBtv3ByfXwjMh9YogcoupDxP4tTy5I4=;
	h=To:Subject:From:Message-Id:Date; b=MuGrZ/hC0yf1cDKnJLj2LA5pG7VLGXIKkU5Hmuiqq9/x2ITfBaErWsldIU8KBHtU5hfNtpsSDe7UjBw5xEZyvpbBdceFRVYD4l8jtAj1yZ6izi7+BMEeySBour04Gfwf4gcrXU87lPU9HMdW1Ao3YsPBbfTidqC0s6/lJgxgF5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5h7h6Z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5h7h6Z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E844C433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706356096;
	bh=npc7r1+6FEOBtBtv3ByfXwjMh9YogcoupDxP4tTy5I4=;
	h=To:Subject:From:Date:From;
	b=E5h7h6Z209gm9IdPgGHlW3uR12SAMEavrJ1ISBRwz9J5hOW8phggL2mk8OU5I48Ts
	 BbW6FEIRYA0dEI+gJ67ifiPvlbyplm+5Po9pnEzx6ASd1uEXFhgQ4v4ADWvBpsxcTz
	 melK506+U0cnPKYVJe2kLtuRmexTPc+iN8/AEF5+ijthQSwhxM2NsSsbqSqJKR2Ml4
	 U50cHjKXxzcr/OIOMMhfeaPa3LDOTQ7A4dUPQ0zDTHaUs84nFKJShA9Uh2FA2U5cnO
	 naFG/emou+tSp97mxmRhsD7uSu2902ZlJPaOQvDIVKE9cmvN2dTvFSmFQYwsBAiWHc
	 v7QlrNuySbXJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 628A1C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170635609637.8203.4404301968929485322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ffa3017815cb49c0762df2aaf0e531985b73fe5b648098b796ec154e2a2387
Date: Sat, 27 Jan 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706356096
