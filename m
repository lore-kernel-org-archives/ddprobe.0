Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD4D2BB0D
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726106754; cv=none; b=mBNuKlJnqqgybJXQKjxumgDmB4SVrHEKXV7K3sF0nuZZWzKZN2z/V5Sl0MqnHxnxiT+j+pAUmqJ70gQjgtlbuZnBSi5a5ThFVAywqxomqa/LiFLeZHEkagchlnIo/9ASZSlMJbBuElSZtc/m1v1xEgCW/MrzpbhxZHMvWMAqf8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726106754; c=relaxed/simple;
	bh=F2KSKNW3AyrV52kpXAIAdBYfv20AWiBSG67hyMRb9fc=;
	h=To:Subject:From:Message-Id:Date; b=UNQGyki3Hf2spdCmYcgHrbSEbJh2Z0s/H++ql9IHH/clMI5daXPGqWLdm6gKBb5tLBreT/kMqMuII/rpC1PDclBk132WXOpEBKyakeImbO4SKTwR2INE7xfFCfcRH4Hy8bZ/ihtemoUcG0YIvNbWs9KWEbwlBulMf1Lqtyh8x6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ouaYa16w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ouaYa16w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEDC9C4CEC0
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726106753;
	bh=F2KSKNW3AyrV52kpXAIAdBYfv20AWiBSG67hyMRb9fc=;
	h=To:Subject:From:Date:From;
	b=ouaYa16wjraFu4Qx7vntNQaRpusjxocShyYu9bvvh8lgB01cPVi9hf56rXs4fsSg4
	 nTP+7E1/RHwDGRtv9AHw2yuMluPd8biab2QojMbcLl6UU2Ax6aI/ltPFgmiZd9Jqzv
	 KrQNxniA9rLyBls8+muiXAhURB2/JBn6/r2G7XfrnZGpg6OlwNcFPMzj2LJttqZPBP
	 4sNRAmPXRMZV1DOAejOG3jIpK9G72GKzuxNfRplui9ZVTSLjHSJebK9mPVYmQQ6Zmh
	 LkRcV4WOau6Lmapa8cjXYkJqbJhWxWT+5eWMCWLdhuwWw2dN5NdFvSoV12ujemdleY
	 Xaf6mnc9fcjLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9892CEE57FD
	for <ddprobe@lists.linux.dev>; Thu, 12 Sep 2024 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172610675360.9810.9928392311758804167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49fe5f0f93c53a5e0f95a611fdc2a74059afb5d92406e19d7bfe6d978047f58b
Date: Thu, 12 Sep 2024 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726106753
