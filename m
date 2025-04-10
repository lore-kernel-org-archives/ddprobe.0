Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292D5280CF8
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744280994; cv=none; b=s5wRR5DX/Bf+krdpUBcNrWQzC7fiotLuZuwXX+O6as2ElHvccczebOufmDOR4YG9SzEWtb4gKL82VR5Xy29EwITWctrdvmcAvKcSVEK6oS/OWSmjJF3VXzA4VsiD/W8cXnOtcNk9ougD4NQeTjbGrXEJ6AEaML1MW8Qz+kbdI5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744280994; c=relaxed/simple;
	bh=g6Cir00FwIYi8yVjEXOJjyrtUkqC+4/XPRkOTZJfcqc=;
	h=To:Subject:From:Message-Id:Date; b=MGhBmIhVkhjZbJ+OKgVlgOp7DCRco4duwJEbTtA8HPo2KLkqW7weLWYuvhBEp7DhO6Lsg4kmWmPxVhwnKjO7Q6/AiJRVfF8DDuAAuPwXDJMym/2EGETRvq6qe9TE7LI8fgrIr25imcgTuxMJM0knqrkHEsYEQHzSpCIt1ltFx/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2F20BMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2F20BMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83C5C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744280993;
	bh=g6Cir00FwIYi8yVjEXOJjyrtUkqC+4/XPRkOTZJfcqc=;
	h=To:Subject:From:Date:From;
	b=F2F20BMQmou4VU3QgNs0DbtZjdfkK1DptMiF4+m2/Vw2pcF1+SCvI50JXYimL4u6j
	 5Trebpv8iboe0H2MKjLf/uICADJrokQAg2tKa4Mu51xA5GOjyMCdCNc9rYDFAeYr2u
	 nWAxDVodixvBn5ZmDK1YRMmyVa1wutG9m1lzQeIigpnk6u7ntsVh6Xhw6Q7mRenrM8
	 eJnBvu3R2fnnJyyWJ84uvGYCesP+Sx4PUaRqZeJTayF4Rpkq4VnToSF27Vi9SCo7Y8
	 sjanyeslICKGbgzRZCyNMA36p++I+p0kaUKtIwijMgxAVPaaWaQ6ENsIiKMqRepy9p
	 RFhoiXgCC6Sgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94015C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174428099359.6783.554653136853096944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0cc7544e0b283858f252f7591538b9330b8105abdc60e58dd3de7b3f8249a9b
Date: Thu, 10 Apr 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744280993
