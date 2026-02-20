Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF34348860
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771599294; cv=none; b=N+n5Knp5veRz1Obcj8zIfil8X8h4/dxzMvWAp8TTVNeJ/D851VzT7YeJehmOcT03MoErouk70tSwVHAt7o+NETID40XupxzdvREETxtldOP4gYYoVUgH34te5SAy0NhFJK/IoP5EwuQD1QeX6NjmSuGfWENCRSZdCyo3wqnCRgo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771599294; c=relaxed/simple;
	bh=t5fYfa1ylL3oCxlqeiiLyTX2c4pyIV/J3JWaT9fDb9M=;
	h=To:Subject:From:Message-Id:Date; b=JeYOP0Af4LjvmmW97JX5xdVGZbDREhNJIFMmxDLvMgSdZcXatRlRs4OU++NL5HsGiLCBsLWU0E+ETTMbDXCW4F+3LNQFoBwuC7hBvsBbBu35hSxyZmn1i6KTt+Oh7dl4WSofe3YkVe3SewF7LWUrTOt703MjCILQbkRSekgohhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AuVik8Zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AuVik8Zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A58C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771599293;
	bh=t5fYfa1ylL3oCxlqeiiLyTX2c4pyIV/J3JWaT9fDb9M=;
	h=To:Subject:From:Date:From;
	b=AuVik8Zs7Ng9NgEKF6TfnNT2DFqZurTJ8W0bwC9djrB17yd/xKZIRg2zpsXRLSD0A
	 ArM8iUS9X9LlYcAtOu4MN2A3/Fj3JxzxZBFEHBfDXuvcjm4iYAeJqZ+U+8JtqFErxN
	 zsILMJ7T9aREJcYgVbg2wkcv60A4qKJ3Na2WLrrm+tK4Zxl9CxbFjj9Y1OS5YC8yz5
	 HFKlkBJwW/lxKQ9rTZYUooIGORSJIi/1iwTyJ99lp3Lh4lZ62P77fMrZAj+fSM6v6S
	 zi01437Brhm/jalvHeRqONSn5U9vcP1OwL9ssEt/ksJMN6vCgXTc/lcaZUexHI/fNf
	 Tpz6p8lK+gTVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92619C56201
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177159929358.30260.8231467766338739270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a1573ccb1535e1aeeafaf8856a038ebcbacdc1cae0a16c7c13ad1db14abb1d
Date: Fri, 20 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771599293
