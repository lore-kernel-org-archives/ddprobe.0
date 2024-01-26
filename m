Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 093B31429B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 13:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706274497; cv=none; b=k8h1AbwecOurTfUxAvxOkyag+zJMlaqL+dqVckFJ2tI8KqrxZtdEYhO0szQTCa2NcqWxd8D8fZ4JoPC7D2tOD+aJ6m1x+tJmUNB2NLxHtuJTaNEuo+CZ/GAp2q9BIDQ/yU8ud7Jl8R0cyJYb3By88x0teadyO5QpeYT77CauuNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706274497; c=relaxed/simple;
	bh=fzQCfqvLN+LrMCsDZyIHIPf6lms6DO2QG0HRsOH07XQ=;
	h=To:Subject:From:Message-Id:Date; b=e5i0T8tlQM3xK4wobVk2AmU0A6PIb/Rq4usHobZ7aNV0qatOKprQwcA3mTBAFG/u15dh9rwEjEY5XOhtR0HIbRGGD5jG4gyj3NJXiXXUupXTybU1q+IR6/ppZ/PUnojVIPCU+uqbaPgUjWUkp40YTVQyT8G59JTb4y2eZd3qF6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qgAm0MPV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qgAm0MPV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76164C433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 13:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706274496;
	bh=fzQCfqvLN+LrMCsDZyIHIPf6lms6DO2QG0HRsOH07XQ=;
	h=To:Subject:From:Date:From;
	b=qgAm0MPVpLghGMLQV1DnwW6NaBW7Sx+Cg1cbfkP1dma8VsDtCGIuJJDYHCS6mp5MK
	 ruwf1KosiiG4t4h9xApqg5vNd3ctbRy2Mhd1C3jwKpSPtPO0h7RkgV7gbqSVRI442u
	 xPIs/sAPXmfrWlbt9+LLWf6XnqBgL5P6wadEDe3gv+/D/mVuj1pmu3aLgC3Hhmjll2
	 7g3w1C9v8gPWBBiEVeejDLxKqPS7hxTBQqnPxT/OUmdDveXq+0e6SVW/9EZ1juNkmu
	 ZGnobX+ybvlOmMh7YoFuDmtMgaijeVZo4/ALhloKbB3OjRlyXHsB1+MUdv1LEnkAmz
	 x7Czm0nohmmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F758C48260
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 13:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170627449637.23258.6796089675217286214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a16c497cef4a88b21324f261fd9dd21f6fefe746f68b501421a70c8b4e9dedc4
Date: Fri, 26 Jan 2024 13:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706274496
