Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2697938423B
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775432134; cv=none; b=P3LSqMp7EiQpAItS/8UcI+4qNSbVlWaP9E8ZhH0poSWA360BaLpKRAQq2IsAw5YV9IMXf2gdkCnQCg4jcu0Kwa5m1mSvZTPtkMhsMy8IwS+AlrE/w/0f7auPW32kD7yoWsyhrSTqwSEnb+zRbVQNkpHbFtooPQp/NIngt8VTVb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775432134; c=relaxed/simple;
	bh=d2CcIz4RAS3dwUxb0/MWpY25URJIrSzCR2CigZLNRYw=;
	h=To:Subject:From:Message-Id:Date; b=fc+E/lu9mwp9xPjIjXSUdi60EgQwPh17w6w8fuIc7XBcvQoa6qPtzsbg47Q3WPAwC4msXnHXuBHyzH9MuqvFfSAiyz+9WPd1zQiXYYNQJJce23VUZIwXPkG++HOqds/iXp1J2mUmEq6GkOewQwjoHWvwkV6lHZkPvGf2mRf1rUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/J8OD+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/J8OD+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1AA7C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775432133;
	bh=d2CcIz4RAS3dwUxb0/MWpY25URJIrSzCR2CigZLNRYw=;
	h=To:Subject:From:Date:From;
	b=S/J8OD+Plf5P7qP52GYrWW8J3K7J4ZkJOXN3CleRwjAfL1/SJu5Q9dZz36tcxsOSY
	 CmMCylkktoSRwBlXjTDpwapHgnTI4BR3dkZz7gWUBgx4xHF7esPjBYDHDn+x5RyjQ2
	 5RfBDyCdlQu2czbl5Gt5EjniaGjF9EsMNJiyuiwCSTVJPVAIl939eaKHvBFO4dvQhW
	 XfE+PHbugwqT0cRK+xL6Z3Igf6o38kpTuVR9InxxH2sbVqYQGoCFWHfKylpT0V0a4e
	 Wd4Y4RS07DRnnnVjSNOylLsZ89jty+5OjoYdBWtuC+Ij8VqCe5bjR2A3oA+XJVMYg2
	 Kjxp2H13Yu57g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD8F4E9D827
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543213370.24999.3843602249557850867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7bc9841fbb10cff19227518071eaa47c4be230e9361078c6bcad8e1d3b8a7f
Date: Sun, 05 Apr 2026 23:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775432133
