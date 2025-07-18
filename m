Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E4A5AD21
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752827994; cv=none; b=Wyx2iGjsvTKy3ys7Gdh44wS1O0+5q0dwGshmRE16uyRIuI/0bNEzRviHQv70qn+zVooDtqQm47R1r7qc884LMQcrUKLv4aO7LipEJ+dj/0EYzrkhXvhqjrdHhARgUVBQhzSwpgpWdlFJfrWGrzD9S8R0zo4hk9EtbKgjk124Ygw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752827994; c=relaxed/simple;
	bh=N2j1MRBU4xB/e8rMZ8XqpvzPc5RgzLeJof1NwAtLEnc=;
	h=To:Subject:From:Message-Id:Date; b=WR9Ryu5ZYS0x+EKa/rIT4d1s7aqkhyz9wmcoPDmvEilZXjRxfoAPzxhwprkoqS8fgjMEWwk5trLB2DbaBzm5b13LjcKyyRx3zdNewwW6/TFl0veWtto46fgTuoFHdWwiuYksuhO4mhX+4QGRIxuf7W3d7gVn0+2Mf0ToKaQrnOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppR3U0FT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppR3U0FT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0107C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752827993;
	bh=N2j1MRBU4xB/e8rMZ8XqpvzPc5RgzLeJof1NwAtLEnc=;
	h=To:Subject:From:Date:From;
	b=ppR3U0FTnRU9Jwgmr1p3aqZ5YjjhFngU+8CC+67dyjrOGgoQmkdnXsKovjPGwJq7W
	 ZHXsoUT/f/0jed0B33ue/QWaJbtIedBoHaeTUM6iw/NjoveGiSyU3BWIO8K401bxCg
	 uGpJC7KpVTA2O+YVh6iraojjqg+peFUOb95P8p0hDJiyoTmS16srbjde7nk68hgfmR
	 M2SVDp2+g2NPWxHwOdarAO982sNQM/ThKytsGct+VF3WAaKDoX3ziAPT0n9gb+F5xp
	 O7PiW3CfU8ucUi14RHpkDvTXm+IE7nblmoiGOGcNfjDKvqkklappRllBnvaIWM8pfj
	 nSPYhyPVVu6HQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED85C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282799357.17207.8868735316143238077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc12cdfa4757e55c3c2b9065a65a816c53d303d57fe9caf97aeba5c593e25a3b
Date: Fri, 18 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752827993
