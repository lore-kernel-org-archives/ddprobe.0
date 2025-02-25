Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8D51C84B8
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 10:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740479334; cv=none; b=NJxqzW0HtOJfgUweWTdNuKak/UAJpFxJ0D27DqMUW0rbbRIgj5VUFqyXdPqut5wLLvzo1IQ/6CzaQ6NYu7pPVvtRVLcZXGxTMDykuTvGGBaahsTznDH7dWrJVUxwJUynrxGiO87nZ1w+DQW7WSaUvbn3Uu8nSl1dhJGNRnA9bMs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740479334; c=relaxed/simple;
	bh=vj+GXmT/R792sEK8KQ8zy5tY/i8tSjFSuh7RRq0rFz4=;
	h=To:Subject:From:Message-Id:Date; b=mZzqLi0rVPQ5NYoD80qGEr3dI1xOhwKyK+pP6EzMxMJpFyWp7UsLt7h08NL2EPi/YcKsxfwINo4sKO4nJvqds53vkksoCJuvTTjAaU7bYFUXetuQ1Y97f/bk0LYkAVFbufWH5o1YsigZyihBMdBdhPYUeK3P2Yv/mQOVJR6nB1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGN90RtW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGN90RtW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB832C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740479333;
	bh=vj+GXmT/R792sEK8KQ8zy5tY/i8tSjFSuh7RRq0rFz4=;
	h=To:Subject:From:Date:From;
	b=mGN90RtW7UuJW/pm/CTkm74j6UjCAlP/BMCiRTSDT1LVS4d1yIUKfliYCh4HYsHHD
	 /LIlk77y8ue4UF5QPCTg9GnRjAap9ANi9hKrhym0NYFZItUfuoCw/0bHgeT9hd3/+K
	 2ZTWHuce4PVHfOfB01iCpErqVVCf6XZsRkapGzr5NrxVx72qhp0aP6GRE5SN5yW07i
	 PaeCOvU1RcVrzc3oafw1dUexjcts9PZ8tt+/4R9i3HUMy6hcv4gYdecZWr068vPiV/
	 uHPVM0JrQZDuv2yIPP5O41KWZW21U0ARDfCmlW2pDbMmI3ZGpcm9nZiLtTmKS1G4wP
	 Otp1c8msYVfXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3B21C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174047933366.24259.6534488478246231488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d372d4f4d1b38114a70bde86f1fa018240476d7fd25550ff78beda90e3cb7196
Date: Tue, 25 Feb 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740479333
