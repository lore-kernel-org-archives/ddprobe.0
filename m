Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6738C3A8F7
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746883194; cv=none; b=ZG5tH2o1Fz8kQgyYNr2LD+Z0/Jv3v1py1pgfYMfuKyR3BLKFNJ/0en8qal/L2Y8ywH+veTDcA38/A1b08YBr1y5OE2jrozqSMaUdE56aToiEar0fKXUXuVo9S0EqsW3N3rmpvY7atnUwfWG4FYO4tYRcVso4MHt+qD5ZuZDYR08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746883194; c=relaxed/simple;
	bh=oLm0VXSPuo8pYXKrE6pTCgojhsc+VtxzV2GCf36yRYg=;
	h=To:Subject:From:Message-Id:Date; b=XLac5WcfhNPj0SbRDxQeAcQQlYqgEN6t3yhnZ5irP9JkLBHEFR2rXVCmhTZlc59IhuUEjqhq9REMj5QbxdvrAcwLBjzeXI8oXVS2ChokvI1JhRhOU/TjUwmH+3+i6PepXKk/n5hNryqjUNtzQnYWMHuQKHf5QRf8163Kl18zeko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f0ZN/6Vx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f0ZN/6Vx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8168C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746883193;
	bh=oLm0VXSPuo8pYXKrE6pTCgojhsc+VtxzV2GCf36yRYg=;
	h=To:Subject:From:Date:From;
	b=f0ZN/6Vx2DB5NgctW2MLzkciK3S2dA3/CneCX/6I5CBgm7R1/JzTVeCBmmMsrxX6l
	 MqSmOOy1JJGLNJOg7lJwOYCsaqKljd2rDyUEcwAu2v8jgyQaGt/84HLoI8iEELQhaC
	 jrlDc5CKzdF+It634KCxKEndsO30p4gRK1NtKV1mn5D+lC+rufcFrTP1BN5xSGPs6E
	 jXbBH7QDjp0XsWdaOOVu1kIVyGMWmx3+2NI/8l1p0eknJ7J+Z8GWHAfwXAFEULPjka
	 /IeM0G/tzfvWyD9kgUea6Ug5zdOACy5gqQkeO7Bidi2QMiGOArQyqqVIlCiDC6zO8r
	 hD1re3Y+ckNNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DF9C3ABC3
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174688319357.1214.15114353110742856439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eaf60be1473654249e33a9eee930e18224cdb9402202f22877db526a1e86ab9
Date: Sat, 10 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746883193
