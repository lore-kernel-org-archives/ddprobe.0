Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD40A36124
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755669593; cv=none; b=Vc3CD850G1BA6KS0LYXCsoWQj8MTLXA/+veTPH5Sxmy5YBrrt1/N0jy3390GRKZSuPE/DAtx+wwsEwU2MPy3DnBYZPfvv4OBX/oNFX/vrHk773nLBPvKYWJPLacN7pozXgq4CD8Wf/rK5sW9MrYvYsrDlbK8Os/M79mq54SNT38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755669593; c=relaxed/simple;
	bh=EkNOxueejbMhtjydVjasWKzaprm8xNj43UyrN1RBjWs=;
	h=To:Subject:From:Message-Id:Date; b=mX2Ddl98UEo5W/hUNVjea82LiM4y5KT1OnlF9nDii9jA07uQGBGpLcnXH/mAjJ4pYO/4kFJKcwOcxcbsaNxppUDeDoNCQjxbGe9PrqIKTX2LN3rClyastyQxXZZftV5SI75PfXCfrzgBFqsiF+OgNqIgCMofe2ATjOOL1r0y+HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HtGIskVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HtGIskVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D028C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755669593;
	bh=EkNOxueejbMhtjydVjasWKzaprm8xNj43UyrN1RBjWs=;
	h=To:Subject:From:Date:From;
	b=HtGIskVAx0IIpUpcSVIKq7t8KRLMpFaJHYudZmq+Slvt+IJRj1c1t0mLLOfP4dcbT
	 Ck3jx7NmSAiKCDcfNQn7cCS7rDyPyKCfzPtqXlnPgqBAEM6ggM1+VjmoqdLr9DXyaM
	 Sw/oHzE7v+JU0r6uJq7CCCi56t1kkMLm9wvvnkMW+QdCaQgnwC7Ey2vDHsfJ7SKMp3
	 l6yZUGdNyA5vbOlsD8Sjzt2qHDdE3+hT3Fv6IZiN32tOAkuy9+wZM+68I+7Evx4CGT
	 XQRBS/RtwFdOITRcf+oc64K6jqLLEFJQ9wHd1WyDgL8jKSEXtBGHJDJpEVbNgvXlc8
	 zWb5YsX439zjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DFA8CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175566959357.28552.5869776921282398040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9336a1d2d371febfcb53175b87fc804d15b6a657458f161891a1655a3ba4f00a
Date: Wed, 20 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755669593
