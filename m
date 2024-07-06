Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F871F94A
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720275323; cv=none; b=L8Bx5qDETgXF5J09B6SZQdE51Z0KQf45HmPNbylAbOjybnmi5bVrbVyqSNIvMmRd0GdetDSve4Hu5gRdPOHfZMPA41eh1fkruoVdopb73QSAk935EtqnDEShmgD/e+2hkwR2KEWrDovEl3auduhfRjslPRdkr1uA6yLPrGkiz+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720275323; c=relaxed/simple;
	bh=/r0v/lws810SScfAhIjVkgt940uHcNChPEby7PRAUl4=;
	h=To:Subject:From:Message-Id:Date; b=Caikx3Efoj4bGHb76LvN+RThfvTiE9gcemRPLXi8kjFdfaX76Gee8mGTuvCuH/yZPmpwo5ayahMlI9g0/ZlWzsW5J16bRBXQiSnYUu0YX53xflHFzoFW3t1acYsx1jYpKwPmi+kjqi52T+0LOzehxtjUACMBVuz/Um6lffMiLrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ex0iJMG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ex0iJMG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA88DC2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720275322;
	bh=/r0v/lws810SScfAhIjVkgt940uHcNChPEby7PRAUl4=;
	h=To:Subject:From:Date:From;
	b=ex0iJMG0cr9db/rGKEEd1ZhlrOgGejn0/mRCm8Agg1kfxpumd00lg4ZH+1PClPQ1a
	 GiwtAMjj5nPA+X7fF7n2QJO8p76IWqmtyUlb9qzzI8CqbJZT8TqmqsSSqssvPZoHAI
	 49iTlUCuQsxQ8Rdo67ZSq/y8XPwgGb26EYkYx1cD6oyrhz5beTgl5lfLpNccf04vVh
	 3cN7m50HN3uKfNtiwWpXbe8x8AKFU/XQyOIkiToHjnEn180VvPsCgLyRqYlw8Qq+eU
	 JR1LYYr4w+dISzLrA8DNGLhkcg9MwX9r4vUzulpenv3UjX0Id9ACGO+JIxGMdX+k7R
	 WJjdfc5ASPtdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C73F1C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 14:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172027532278.6009.7037074693259834165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 591ebbab66d441d605a0eadf492bf7ea72f6df4a974beb7f157a059816cc6c30
Date: Sat, 06 Jul 2024 14:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720275322
