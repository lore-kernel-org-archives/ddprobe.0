Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E5F1DF273
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770438234; cv=none; b=BbaqAiwUn0Qx1uQNPugo+MP0L06eYmQFR2ORI4VL3MwH27zT1joC0NDmT98WUIejBHXSrgVZJ8vxxb9+uQn+En2Dc8zP2VJ2JZlKU1MBR83SYBHXXWzAmVgU6T+y1cY0fKCQpZfukON90kcYWx+5tAZn1KxY4V49hom8mqIyM38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770438234; c=relaxed/simple;
	bh=taYkb+WermcDKHIBsdDJt7BwiSFxt+ZDduGmFuvbKiQ=;
	h=To:Subject:From:Message-Id:Date; b=DAcckq4X19GR+OGAXMotfwf5r65y3t1Vswwa330frzZYlCFiXASriAv3oo5WWJ2O+zidcosMDK4wGsIryNDFObf1S7W5xup42C8oR21Z7K67LjaUYmmmc9kogqzkWj3e9+cytdNjjnSNxCHEDo1ZJUBO+J/F+TgkwlU4gft3SMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q9RPTnyu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q9RPTnyu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB57C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770438233;
	bh=taYkb+WermcDKHIBsdDJt7BwiSFxt+ZDduGmFuvbKiQ=;
	h=To:Subject:From:Date:From;
	b=Q9RPTnyu01EZfcoP3axhZEITWthGgC3a0GmH0PM2nr7oDNVQpPSATFSDaR1IqmThu
	 jy/mPUpbevNM+8qf+LXWUuwNDl3ZkscWxxWlEqllm9LThvmTTN3ja/tHMNmEZ7ghWB
	 vHn9cIN2e7VhVzIgWOvXnGE1KvvDHPq3oa8+VrqMnty7wvghBR01xQgElF5CMuoabf
	 tZzNEra1mSi6bWRTcxC5J5ixbmero/gfZb1W2ZfaXcUabI7W5Ag7G6QBDeal+hJi9l
	 Qg56Bkp6vOM6Uq4l69gigISHFlKzkp3gWvEmK6bDd8yVCq2cNFX5uncrJxMC8FXFTb
	 K6WxiPCc8IvEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6F8EE6B4E
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177043823361.1185.1307714250785045397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f9830c02f7e5af460428bf530a32d0dc243a437b0bd68b9f59b5f489f71a9b2
Date: Sat, 07 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770438233
