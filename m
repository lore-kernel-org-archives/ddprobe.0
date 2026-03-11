Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7DF3E6DEF
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773251094; cv=none; b=MOQNWGIj/sVgasWgqrW9mJz6nzNQmUIF6Zdzb5e1CkrUXqwYR73w7IbDKhswf23l+JR94NhFjGJNDBXA9ZDlIO16AZ7hp8VHcU2dmx4G5jjmcoAIterklnmIt7PdFCc2r370GmLhx9qf6y+8tWfulDqwuZURxUtPKwNgwo5XhQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773251094; c=relaxed/simple;
	bh=XFBkuJyayYF5Xh9aVsKm5mVXs0HyuavluDKU40yJXbM=;
	h=To:Subject:From:Message-Id:Date; b=ib7HMeCymlwxNUbWyW4jzjhhLvBlU7vwC/q4J2VEUQqPct6GTvGs2xai0ZDG89dWGe33JjaEpqLHxgXokyzDq3rKFcziMJlY9BDMSk1oYlofdw1UheQ+lMcJhV/n+XIZZIMNS3v5bV7gD3BHmRYDzvAT119awKu4H97MetWyAhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EY6Z5XyR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EY6Z5XyR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13CFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773251093;
	bh=XFBkuJyayYF5Xh9aVsKm5mVXs0HyuavluDKU40yJXbM=;
	h=To:Subject:From:Date:From;
	b=EY6Z5XyRgceIRFPPid7i+uZDaLoVlieS2pw5wBoc/19tnRSampX4JrS9JNQkZUaLj
	 x2JwS7NL/K4lYJ7pMq4y02qqSvsy9Moz5ES2syL8Tudr0hJfuGNd6NumlrwAdNbHub
	 oL3fCbqU6FrpRiix/EqSkBor07d0l1GPL1KJ1Wi2LIMCALWIGg5uSknepozpTMMUrw
	 3+GrJdgHjaRFJbR93uNarCT5Qwgxv54GAp3tY43xUN0EJ4XtiPz8XdlTqXwxVTgwzf
	 1dRIweDUdnWtmSuMhQ4SbMPPSoqzK26pPmFphEmiXBWinznkwsSvUx4YCrMF/L12r5
	 Swza461lXB2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95F0D1125811
	for <ddprobe@lists.linux.dev>; Wed, 11 Mar 2026 17:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177325109360.31807.12236074207729618202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 999dd41c141b0393167915b4d6927188291d2569ce672b21de524d92cff70041
Date: Wed, 11 Mar 2026 17:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773251093
