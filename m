Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C1E019D884
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755929394; cv=none; b=PCEfWLnr4nXGYT1QGfq2xJLw0KIMw1pa21qz9YFwRrJLIG4yr6U4xm8fmo0xTPaHG4mDTW2pXe1Nb0cMsgaQCh/FJ69ewo8CklkixWW5A6bp8iXiVa0XSZAJIeIpF/ep2b0YLfgrzB0XrYn6MnPIOnrGQ+QC17NN7WiYEXoira0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755929394; c=relaxed/simple;
	bh=arlQUXzkMlB6Z/rmQ+KyI6kPP8wPOD9Fy+8P/tzarWU=;
	h=To:Subject:From:Message-Id:Date; b=aoBH10in0EjQ22oAy9bnxb2Ckp0S9mV2On7UhZO/z0kYTHTG7V/d7XpYFH9FKa7GTTXLP6PiqDjKxysBfxBSnwGqzErYqqh8CCCfye8B4KuOr7A7qdWQDiO9JR9GKb1+1sLHe7G8KglepqrabMfKXiQy6e0DCmW6sZXdwqKsY/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAOJncJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAOJncJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1003C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755929393;
	bh=arlQUXzkMlB6Z/rmQ+KyI6kPP8wPOD9Fy+8P/tzarWU=;
	h=To:Subject:From:Date:From;
	b=aAOJncJ1QdJl/HYI8fZD2sEBd8DKxRtSm/LVEqCaWO0STkxI2KunrMMKdb8LXhpLf
	 1GniGtHJ5yIW6AdsS0WstXbO5b1OJNv5JvwyUH/qfGqUnYcn/07+MkfNI/O4BzfYTi
	 XwdT2nSmzyE5E4Z9am073d2Ni5NEpiVGrG3ncmSDWv3njVqh/tHm7+TjJnzTqLK8fZ
	 WTfy/phQhPqMUc8Y+YD/0oq8IG5VeoFSGbsFTnjL8ZaxKdlb0LQGlf92ot7io5lTpp
	 WnGFK9jxmTtYuN7y3GdX56hGt1WxOPBiHIvQkvNlYvgHG3ksPypS1o8z7sodROoeMX
	 rQPeUHO7GnFhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E219CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592939357.30523.8725027078496522270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33c4d8c5269622fd1f309a17839a46a389a111f0d4498caf91d46152d46ba748
Date: Sat, 23 Aug 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755929393
