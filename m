Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A06134BA54
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760143794; cv=none; b=rh9bB+SWEXfbfqE+/AnzjD7jEuBPgcdEQAUNzy9dqFCT949YOJu79HX33uErTQQ0R5ech8xhBIhQQpwcfPbJKmefteGEvUvqaY7/U1FN4bSmMcVrcBaeSPlHh+7tmsuSQe6jm4YS7BOiJkdsMuFk9LISxdSNo0ZMoPdiiC6Tglc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760143794; c=relaxed/simple;
	bh=dldRswsWRklg8j4kvaQL1bE148C+h2FIv4a59R73m/E=;
	h=To:Subject:From:Message-Id:Date; b=NN/nOhoasKcXj89ZtZKF1Ambrds3W74WlQArm2lpKT2uSrcsjjUwHzFBG2l3jWal4r7znqdvNnEaQi6UD6h6uQhcLNy6ohKZnPu0J8ieTGqdzTD29gxSywAZXxMGjFNpDVg1nFdi8Fcvgds4Y/lKDTBuO95Nk0fD/zsmaFS3me4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gXtylNNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gXtylNNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F090C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760143793;
	bh=dldRswsWRklg8j4kvaQL1bE148C+h2FIv4a59R73m/E=;
	h=To:Subject:From:Date:From;
	b=gXtylNNlRKODlnJejKpjAdqYQaLmbikMjx9AksQiVZWkiyA17pFrjiVZ51Yzc9PR5
	 9gYSDwssZbiSJNIU0XKsRH44B9yhTgopDh/n3URsVA3kpMnROnvJdLhGkjRjjWYVLD
	 S+RA8yyn0sd9xMbjfvskw/BxkfnMSPcT0Addl4YoCqdOV2mDRdFPnwNEtU7L+lpMoI
	 qQ4KcOGVfaUhH/Eyd9Bj5PrpKL4RKtyqo+e1rPeBC0N9Fa3ghT39hdh5nSa+LXBbgU
	 Cb+j0yRJuKj1sUK0Hjqn3yVvstSD0Rina5i8qL7nAfaWgt1D+hq5urS2IXcmG5Tt0i
	 fyamKjZun3TnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F47BCCD185
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176014379357.13061.6439664161141257012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479f282e96571e20019e8594607cbc320490294eced55ab602f13fd707a5526c
Date: Sat, 11 Oct 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760143793
