Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5740113B5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715378543; cv=none; b=tLoPg4Mqujj8yM7/AsTGXW9VylJMI63C0BwadTm8IKkB1Syz48FFoqKmqp6Rws/2UzevsXHrDRPgCWl/jYsmlBk9mdTjxHT/LWvWenwmyET7vnDqGDsHvcw2OHFdFGH1ffajWZah2xzsPXKiLDA+ymRFs5AdXPOVbbOAAF6YB7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715378543; c=relaxed/simple;
	bh=mmV+SIqOGd5Ve7ChAzYjR4zyeTiBfy0l4zUmGVpVXok=;
	h=To:Subject:From:Message-Id:Date; b=KadQSk19T4ScinnNVMDrma/FeMLMpP93jGA3Liq4KD3qoqtHErvFE8OeDIkw1KmSeNmq18/3FY+7UTTcOhXXiAy5qa1O8EogjDzZCj0bfD2uMg/wpqyDZ6Ljqlk4H1CishHMRC/Gn0U0ISo0lkYButo9fkWQHzRZOq5Qz80VU1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9FCnRsS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9FCnRsS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAA7EC113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 22:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715378543;
	bh=mmV+SIqOGd5Ve7ChAzYjR4zyeTiBfy0l4zUmGVpVXok=;
	h=To:Subject:From:Date:From;
	b=Z9FCnRsSfYUiaAF/KZIC+kh1eP+wU8ygMVLK4oO7m5pWcXIiKIxjBKB234INwZIcd
	 BDRLbnUA/7I8rAyW+c6F/hYkcpjVxiZvGbO+X1aZ3ACGYOsfv0FSH5nuQ7DIRAIbgL
	 rWdDBnKcjqiF7aCnWPMGi86JO48gQbDr2OByQDUfx2SjHGDg6CQV78oH5JACxqpUyS
	 YyOm+vPvreUdHRRMY9BPvn2H4YLNgWHSa3Kv0tA71RlKhpEqGDD+jUnfJDzn+KyO9f
	 L0fUrHbREbU9LwjZGltSFjeVWSvb20ZbLGbih96YoCny9Bh0lRtMS3ZLq4BXkeOPNy
	 ZgeHqr30UpjuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3D41C25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 22:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171537854281.13446.13140173163552943987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 561b9b7d914ad786426ede895d028a0d1af5d9455734c6c38eed92786d9b4580
Date: Fri, 10 May 2024 22:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715378542
