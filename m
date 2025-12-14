Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2163B1ACEDF
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765691574; cv=none; b=r8pG6/fJHaEHEoP5Xk+edvcCW1CDpOEVoZywttEq8RkSneQDuxmxYsoe5zJsivqB27RW0LFYqMDdjaUPUbFmcZLWEHDqoG4ZiRtaS73JEtWeEed/WOrJlDe40bF8nj7SDFMpbMUSgeBF4XCjR3ec76LYduOldrZXzWD2sLWuOhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765691574; c=relaxed/simple;
	bh=nbf+CbwOX/a/on9nR9frQhk9kO9tmvQXnCYGfazeqkA=;
	h=To:Subject:From:Message-Id:Date; b=Wlfyha20wDqxJKMH8Hk/o8MYjeLyJpimpCG8JZI9P8piouulAPp1OQa4w1fiNX5tiRj7A1FcXwFlhvAs/fUKfF6A5GDZ6JGvXNjuG5OHLSUY+NtUVAtOQW4R2lGA0J6HVtOEK4vLRSOBMy2UgsxIY0fQG5vLFMi1+M9+s2xFA/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mp0+9XxX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mp0+9XxX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A508BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765691573;
	bh=nbf+CbwOX/a/on9nR9frQhk9kO9tmvQXnCYGfazeqkA=;
	h=To:Subject:From:Date:From;
	b=Mp0+9XxXVXBUcRQBOcH69l2xDx742EBrP/JXhmXNtesiHKzu0XNQEpoCRFnpvr6/s
	 5cO3VXitzY9BY9+G1Wxmwf2ddbBZ/zYUrc0YlVLCjVXRpDhm3rsKlSqlZsdSImz+Mu
	 efWD5+GDZ5DlR5rpzotuqeCsArBRJTmKzWVSZAliUzp92iss+olVpPlJ0UC0CrDSLu
	 lUcS69nnT2XqpjQO1Egb612ffmobIOv6fBMqxcnGwPlAC0YsV48pG1YLni7dXcPsB8
	 EUIGRMANUhjrZ6X3MLGHbCFbZNXivDeLEduj8PEt3W0dQuhJP7/dORy27pj6rSZke6
	 9kvKiU17D0z2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965CACFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176569157358.15851.1888518825263153062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64d2e039b3890ae6dbd1179e9cd31cb9485653a4a4498e3dda44d9e1eb8a9fe4
Date: Sun, 14 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765691573
