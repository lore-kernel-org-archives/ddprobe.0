Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E261342517
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778140054; cv=none; b=beITMt03W7SPQJhanlM7O/m1Xi0PBwMG2sXkKNgo6RILbvRKVAwlt87dF9JRWtdzp1lJmCS8Uuu+P7cSz8Z5TqOqBKWRiQe4Dms9ZbR3Bb35bqGM0HEfTQebcc4BZKMbnrSB/AcjLSCEz8uKmnBAruUzn3b7aOLyY7HwffLL8sE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778140054; c=relaxed/simple;
	bh=wdrI4GtAHOMWJlPb3hdibF9sP5UpYYT+lA8Nn7mEt9E=;
	h=To:Subject:From:Message-Id:Date; b=LI2Xp0rpyNeIhKQp8VMTrQfrMg1FSfNUBwkYy4kKX4T23+ta98lWckdmUoi+aOzVm+fYNDPnnAqPfxApeXcKt6iDSQl46fNBul2L/ppnLofiEkLWQibCCU9j9yjJwnfC5XTKcVw/o0hfuXbDyGWlEEzS/qz94/dWJJX4gQKhqjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QER3Ggon; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QER3Ggon"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9D6C2BCC9
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778140053;
	bh=wdrI4GtAHOMWJlPb3hdibF9sP5UpYYT+lA8Nn7mEt9E=;
	h=To:Subject:From:Date:From;
	b=QER3GgondEcPC1x4QZmlyTNgnYaVnToFUepuYj5i2Mk8xJzYBG4H0zxItOwWH93oF
	 Y356GpLDB3Rc+8GumKgrsLzjRSem13GXAX7E9Y3JVoaoZ7qThi3bjNqa4vgvEKdbmf
	 T+jO2PLPmdku/LjNkfCDvgruL5Oq+uFxQ1O4S0hVxtcRkLLw7a/53kLX6Y/c+UTPpH
	 odfSYv3Bww7TPKLQnbvte4uZXw4SQoHgby2xKPjAfl3XoNxsJPNKoWKlygw74n71qo
	 gBgYOjJ9ESqKd2CaAAsJAq5k+j5niR6qQTtVLG/yQ+TA6FNRmy/kWTJd5puyhluBNU
	 czqdH35s/fDtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF09CD343B
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 07:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177814005369.18749.7344343351435971408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c2366da743b0e783d72f1fe654ef7f5f80b60064d1c35d8699634ac6c25f8ac
Date: Thu, 07 May 2026 07:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778140053
