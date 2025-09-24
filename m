Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BE0158DAC
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758695394; cv=none; b=j41wS+3PYK8kc2rcmc656hC6PA0Gol5D+PGAQIG686NiQKzbQJGiIvCjZrJdhU/fZtCc5R80jtAVtKI9Zey5AStAZnUW/XB//Hw2KwkSzMOcTbcMhqBdpdoMwnKk6xLzADz2Qf0dmYqpurW0X93+WEae2pR8SI/DHbJm9J3KfPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758695394; c=relaxed/simple;
	bh=hZiHd8hjU+V/8xx6J59fqwr2RAwpSWjfo/lGsbz+0MA=;
	h=To:Subject:From:Message-Id:Date; b=OeHKiXwBsDSBEbmeMiaRTms2GM8URRORGq92TjkGNOY5wI/mMEBWAIIAXzpEVwOA3jyekmHlypuODfV7wcvpgJzEokgr6XIlSVYAwUMkXac2lLeL+P07/tlBuuRQvfVWE5EgSmTp8K7X81wGj25UJ6dYAU5zBwkyNcGyabrMjq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oeAprMGG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oeAprMGG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42D7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758695393;
	bh=hZiHd8hjU+V/8xx6J59fqwr2RAwpSWjfo/lGsbz+0MA=;
	h=To:Subject:From:Date:From;
	b=oeAprMGGrJr3MLXkOdZ8/wz6C3P08kxggpY0lfJMizcjzPXEk/1HzKQ9/8iv8G5/Z
	 nG2+w0/wOvfa0QxsrjR7XOr54Ms+yTeiwPm7EBX+UR+JddhfmId+rlL0/tnDNH4zoY
	 ECnmjWXEk/80TKuF7OtbH+oZUZRxJfOpleMyv+BV0s1YiGfCKYdrtc91jLyOGF1lUh
	 6BySyWioZ2foZCBz/Qm+IDaVLFbm6KWJZEWWsPFZnqTjECz48dU1D8iOYYqnG8F/67
	 5FyMvPSc7urMSWmcNtzHg7ZeOH4tciXSF7RjS4ny28CdRtLK6kDHYPRDpPmprVLf90
	 5xwyyeu+hQhQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90925CAC59A
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175869539358.25184.17928145399478822150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c93f2b09228dd53a661e975d376a95aa19c08917f986db256edf2f6a4892c80
Date: Wed, 24 Sep 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758695393
