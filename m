Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1944A1F8AC8
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758843595; cv=none; b=RdUlzTcKsAELtkN3+jaAWz1ViNqk7d9Z4YXbv62UPR/yRX1oPcZD86Y00mR2oUN2sbc2BP/LjXCrGw8bENI2i10gVpLgrowgiVToYyB+p98Lm7f77APkYX0YiIYCHY7XAjhUmGtdrf+4ShVXkN5ypyvuCiH67NNBJxt9ZhW6dGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758843595; c=relaxed/simple;
	bh=YDONSNR9P1cKJwMIgdAaYNjb+t2mGb2XppxKX3d7wjg=;
	h=To:Subject:From:Message-Id:Date; b=tcIPdenVdBAFCUy15RZRgjO4n0KAFfYtm2p+EuTo5KvZnT1RT9bvt+dcgxMGPBvwtIKjmjQeGr11y+MjOzcs/bOzdMba0U2FQYySDniiMfSwCtC9uQN7cqONQB+BanvJUe2OhopAzUGya5H0W6/reZ/+3JcSsY1QrIjwwpNqzN4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acF/+g6X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acF/+g6X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD46C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758843593;
	bh=YDONSNR9P1cKJwMIgdAaYNjb+t2mGb2XppxKX3d7wjg=;
	h=To:Subject:From:Date:From;
	b=acF/+g6XwX9lIA1zocgJfA5zxBwwaveCjqnIuwRct6sPL1XY6TAjadbDQ9SZUScdL
	 axnLWc2DRXzx6D15IubAPQHjjvmddd8fHSpwTPA9lMnvU7TTcDZAe0hCWOb4MpiB3E
	 CAcR+fj9qcHbYORAyflt00a18DBUGZ/5xS8rQQf8G9o4B/uKbNwWsPhCyy7BCVHYEs
	 jbzL0CqpZP6l5qKQOzI8/Ez5BS0xmjTkHwqmN6yd14ZzeCbeEgHdGuU6YOgXpaeL9Q
	 TlEEWeEuS/UOnVmPe6vftC1Wq3ADVilNG8z4EeJs9VFdCmDwmg7hOilWL1Oc8y6xEL
	 JYi0NGfTiqxPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95878CAC5B0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175884359360.27242.9527266887900354851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0a15ef059123e714046273229c5aacc99bfb750056631b4507471117024a702
Date: Thu, 25 Sep 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758843593
