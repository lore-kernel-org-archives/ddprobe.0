Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11E5915B998
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777117054; cv=none; b=IsISOstjPewzGwqIBUQVQgNeCGFnNyD1DaYEgpLX8ALqd2a4UhBMAxm6R5klFlQk4W18EOlonzXOpRBhWEXZ7tfHwKPcKrMN63dr4jjGUkPSTE+JcJevuTSRrqs0YLQEyKb8pYZgdA91m3o+0t8YPgMLQr4FLpxvs3Mz8htDsuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777117054; c=relaxed/simple;
	bh=8qppDgIXmulyOLOrrEOlFqN0AAIOntpRVUkZ4zhn4NQ=;
	h=To:Subject:From:Message-Id:Date; b=ga+vglYaID1XMElYi7PB36bqStMagME/rfwB8Q1Y7q7G9PaUoWI0uvEkIwbt6t3/79k2sjpK+RVh2c2sP6++nyZ9O2imY4/z4OfOWe7GoRA7WI0NnkToIQZuphOBaJuFsZuLC4HGzCck4QampL5WUAa04m5Fdg/XnWxdTfbxx0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvazoSKI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvazoSKI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B67A4C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777117053;
	bh=8qppDgIXmulyOLOrrEOlFqN0AAIOntpRVUkZ4zhn4NQ=;
	h=To:Subject:From:Date:From;
	b=GvazoSKInY7fQU9uoZp0Ecv6vyEjuLQWNprMr3vsZM3ltkwi9EUSVUlMosg/9plJG
	 +JuO5hhhC+l27hYhRSGviSokT7z+GJlmGzugx4alA9ct2i/gqRPAu1nrApj43flavB
	 emnHzWpymcLxeawA9jCuTu2vCRTM0v4r9oI4z+BGpvRT/ZqYlmAB5Zwqec+s06gVmS
	 go+OJAa/wIbJ+J5jrciYhmeqFHAiNU15LU02VV72EDu8eE+lyodrwC/c4xrObj+ppD
	 YkR6g1yTgXP62SWnL1mQQx8TZPCqGO0p+ZnXXnpbP054Td0uJNALs62bHFxR2HEtjn
	 vTnRPM7QTK2yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D4DFF885D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 11:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177711705368.8199.15525082321334438203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a24ac5ca72c948cc7c154a77bdb8aca0ddcf18cdf262a69fb1e0111f7197c70d
Date: Sat, 25 Apr 2026 11:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777117053
