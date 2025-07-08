Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9DDE55B
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751959194; cv=none; b=JE+M6cIPTTFI80EJfsNsCvRICuDyv76HnUP5qONX1tSz7A2E0nE5YuOGUn+1pRmoJBMPK2aGhjrEpr9HKSKMggyCEdwQl67h0Wu/wEan+A7izUg8+MRzVx59SRHMuzfaUIru/c+cUY2GOxNjt6Zy/rebi9VunOB+VQdS3M1I5tI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751959194; c=relaxed/simple;
	bh=UO6nnrbW5LXiSiR+jgJ4T4WMTg1eAOMa9/fpbOdLgAo=;
	h=To:Subject:From:Message-Id:Date; b=ZlbYK3jVYHAM6YUnlFkFpNmBuTpXYG+B9dWSJjxra+OuGUUlDoPgNzQr/yn4fUzZKW8TVXERI+egdq9tj7Gf00JzOeZbGsLE3CEk3qe6KJ0aEhx+jBj6bQVzQKFc4sK/AHlNP0m3fF/IPThsVso75lqlNd2w67MHsB7Bq9xVBgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEGlfT2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEGlfT2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A320BC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751959193;
	bh=UO6nnrbW5LXiSiR+jgJ4T4WMTg1eAOMa9/fpbOdLgAo=;
	h=To:Subject:From:Date:From;
	b=GEGlfT2N0a/bwCprQwmkJ4JNQw9QFEDaYhAJcF+e8DBTFB9AeycEgXxHFhZKI38dS
	 u4icCBubeNXN+RXNf/y2hP/Z9KgOSnmpsoYDhnjj0p67RnziuAjpujIMmwsAbBbFMp
	 GPLNsqDm8m1ISupgJaTCT6HwO1EL934xDd6LzJKZj0YGyu0u2gF3JDV05sDj0LeAuh
	 J0EJL7ulISNluRaptw4lwHXZztdnClu3DoyrNr9ToxoAOPFGwdtQ082tQo2RxjMv0i
	 vPvZbYjHSWbd+ND5h2GNiHUgAfWVmqn36dnZMqXQoUhSwJG+UX4DTeXCwaaSZyPF6c
	 75YjDLUl3Tp9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073DC8303C
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175195919358.19777.15229960464471791826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e10e339599145d4de6a6c02eae0874269745a9fdfe91f2bd4f7f2d71cd0d0d2b
Date: Tue, 08 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751959193
