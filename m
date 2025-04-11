Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344432857D1
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744356594; cv=none; b=f4wRDpB7jGPVVG4BDJfk9+rH+L/+8pXwyCu5ax3r9x0Bj+pDIeV5aF+EtNegj9OvlZrkvbv9QQwfkwgKrxvYmzd9g1mNGoU2CoJjHRZ0wnvcYSC5E72jOKZ/GNKExWKliCUQoRZgfpd9zYeZAOl2dY01zo59+Zab6jWRhXi85Ps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744356594; c=relaxed/simple;
	bh=5+UlDE+0W6tWe0ZrLmksRJOicV3nykqHgzz4ebgDAMw=;
	h=To:Subject:From:Message-Id:Date; b=LVZ/+J8zziea0SY6+rcoYoydP65te/nhMMlENptaClukDsVBKy/yv6HWv0izQnNfG3pckh0riBGc62kNhxjvwNeuUgiaxNcJx9x7uYxqii6x3GyYcMuRV0H7C3o3DGKe1C13AF6Z8Yi6yzgjpm/6FCaa8gg+0tVtiZbDRjOf/uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kifFeQsV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kifFeQsV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A857AC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744356593;
	bh=5+UlDE+0W6tWe0ZrLmksRJOicV3nykqHgzz4ebgDAMw=;
	h=To:Subject:From:Date:From;
	b=kifFeQsVt+f5hRT09LGqhpbkmRax6doiEc+vA4403wipKurNAKSQl7IoPeu9XYMXW
	 JM2QayDVNKKnqG+ICVcoEKegEkOeZZHNs21/fhtBcR6Q1KK84889xz54j/XIrDR2Iq
	 LkYlbhakZO9yzZ3KccLTo5HnvxkhVqjgsHyLk9tHRE6FRRrgL0brKQ5aeF7kpy6lHt
	 cxG3Z4JFzkZVuzTqCZEpVBDL7Q1PpSX6xwQ5DbQHqTeaGrH92Ci4EQx11PNNAeLQKN
	 wPyX/2w9ISS2ddoxcdlJcdCYbXA35VX7BworoIWWNF3NyMBoezB96ay//uF1H6zeQp
	 D4MIrQNdB1Eeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9894FC36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174435659361.21056.3743306745674102943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a98471ff373142277d4f1fb02ce216ca9910c6ac6e37b8405ebddc5c45cf0eca
Date: Fri, 11 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744356593
