Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B35B134CF
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764253374; cv=none; b=Vg7Z2qSdL5hPW/shjL1cXjASxBCjSe033qmDbkBQqatSMNEahBT+RAVCRDxXeXdQzmazjyaFWXmrZrwBPdzlQs/XiFeOwNpy3s7qn+jzfWV0uQyz1p1m+3IfLYy7lLgSSBuTE5YW+TPgAATKIgzcIbI1R1FkjDrXQbeZRZc9K3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764253374; c=relaxed/simple;
	bh=TD/GYihhzmx4+UeUA1gGb1+nWYidgPjzu1Sqp3hPmuM=;
	h=To:Subject:From:Message-Id:Date; b=ZdpiaO1DXORyBcH1MI1AuzY3FqNUdSRHIzcqH7YJweDfuA7U1EAYmi6W7x05epHf6OW4SjOm3Y3ybXf6Hf09taghbL5ARoNnn9flxYdOO0b4DNH169mYk74x3fAF3cydSzlUhg9Lc/hJj7da1oD+SqVD/Bg+aYGSB6yQXlKWbgA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6PwagkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6PwagkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEABC4CEF8
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764253373;
	bh=TD/GYihhzmx4+UeUA1gGb1+nWYidgPjzu1Sqp3hPmuM=;
	h=To:Subject:From:Date:From;
	b=D6PwagkRKIhsjKz1IOZsuu6ljcxg+gOH22OLlPR/WRKhol6veJ+mKO8CbmhztVvoI
	 6Q3uNBTwx9LiKFCHuJzL8IymcqMmPFOWJ7/sXtwyOQ0u6+pg3EsNXQF85ZNfIcnw2q
	 mnOlfjvdpu3DMmWA0mCj+xP6nEN25qOOedFC5rcjkHkjezOnnNZrjOHnQB6DkQK/EW
	 pueTOcsYTrHZx7JM53oeNsM8b1dTdcCOGNgFdhFFoxqmfuAaOihWET1s2nK9Ohk+iw
	 gNWx60WirMi/g0iSB5BisYBHpMqCHDA7pdLEhsEkLnsnbjuLiwnqXLYyTEt0RnQ+8g
	 PwE2OhjyKs2ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C4FCFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 14:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176425337358.27245.8170420103061395150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69ef3ee091b42b7aa87f26c85d87eac672d735755d39ed3488b461da171f16a6
Date: Thu, 27 Nov 2025 14:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764253373
