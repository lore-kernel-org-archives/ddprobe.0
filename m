Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C30263F5D
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745377794; cv=none; b=CU5dCnKb4uUCsnTgHsHhYfAofKipppwzaMLTKLR3+mPpPs53+M9MSnvhZdc6jCLT7VPD/lcz8Y4XeF4DNzQFs8Oh0cR1GNdcZojDPvjBjeKxMAI/IYB1gLYDN90+6dqIdfEN6SQlh9g7Lvt2/oK+ySNkCwEA6VVtKG5Yz2pHnmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745377794; c=relaxed/simple;
	bh=BccgIJsC0qU4cQkoR4kfQRbX5beuKotK9l7gznteViE=;
	h=To:Subject:From:Message-Id:Date; b=UhPiM+bFV/ywW7X3YA3YzojK1G67y6sBeUN4p2Tp4QPGEj3qeKcLEduUmeBuwtaadZSlrYA7/Vs7Y4rVkQwuEM1husZY/bMe3Paq3U7EO58UqOP9tAfoclck5SjpQhrqpS5u/LN66dDIOS5c7v750Tw7vj8bi8MiQGFsZEHzWRA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BidYGBAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BidYGBAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0898C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745377793;
	bh=BccgIJsC0qU4cQkoR4kfQRbX5beuKotK9l7gznteViE=;
	h=To:Subject:From:Date:From;
	b=BidYGBApJC2oOmH+IWaZ1T6LPzBhI7ctpXx8nZO6iT3A1O5O6fKWAGoUBMtGuWoBA
	 axczcbf+xSS2mLLiF7ElhhkF4wLq26Nop+Yhs11Kj4cS1kvEuEvJ1uZ6RKuj/xu0ZU
	 YITAGLKyoj2lxdkWhiHecHuJegz2NN8281CbcHLbnRj8BtfgJRSCCzk81gh4l9sR0O
	 xba8jUHPgsGM7BKhfDFB8sGm06NSh+WCQYIhwddBKO+OxpxUQ9Ao4PB2xeRkVpbH6/
	 EFU2s02vG7JdHSBXfe4IYHbSSgvsfjBfUoWEx77OMCDWLgUE/c4SNOPiQeC6i/bqgU
	 BxPVmdS6ReahQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E38AC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537779357.2157.6478394726576290978.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0d2b0b574547897791e087ab24cc4065cee18a672c02ccf26e8c65af1fc702
Date: Wed, 23 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745377793
