Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4283F3358B6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778787034; cv=none; b=Yf3eulbmw5a7qOKZ2W6bJX5c+aK0kcsrtDMnirHSUWcF3BU83PuBmI0PYiKrytuhm+BcUM1yAX+QVuoxgvb1E6tVbbvnOt3rQyQJJoj2Rp/VNSHdo5RnmjTpdsC+lc4CCVHNo9OC1LUGilkt6ZJUDv8mH36djC9YFKYMw6+xMDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778787034; c=relaxed/simple;
	bh=iYIfFGx5ZP+rSQRgmXxdCettXLKbaliOqLAYKVBlBuU=;
	h=To:Subject:From:Message-Id:Date; b=aKcAZxeGx+bfjoQtynhCHSknGxez/QBg+A8mTbSKs9oP9i1C5/grquAdQHirhlESJsqlfIdRfM1IKl0NyVEKlV3Qup0HvY4wZ9N/khELQKAA/t6HEmAmi0QsCT3PBrGaFT/EGhhVxjPxfigYjtyhvisIlmH/8Q0N0tWB95ybseo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uZCNM/6Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uZCNM/6Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A98C2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778787033;
	bh=iYIfFGx5ZP+rSQRgmXxdCettXLKbaliOqLAYKVBlBuU=;
	h=To:Subject:From:Date:From;
	b=uZCNM/6Z5yO27+c0Ab4IErVGIMxgMT0KcwnkEd/V+kQd0inl9Reyv2LROxOB06rDE
	 hQ3gaWM9Ua597DfYsNAA0Atg+A3bwwEb9/fe7XgwsJwbkaI/zjgwUsmDAdF9buX3zP
	 nK23KyTY/Y+KKNFmpRbT/9QVXPZkCZm1LHOYW9saPgYMYjbO3S67/Rzx76+TDgy1i+
	 eupQRrdZ7Ze5XfalC0kan9/TCD9H9TF+G8pYRdGOdXPS/MFahp/65gALzE/mIyEfUr
	 ZpOd/a2+0c+uUHA3L+ESsreqrfZWnLhMQNsdpQygvK6YJ5auxuLKOfCvI0Cm2+skTW
	 iaMv7mCwLiQTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1663CD37AC
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177878703369.28538.15119315308134422605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d525990164aa91e93546f046f185e015311455d353303ac79bf801517c2b4c7
Date: Thu, 14 May 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778787033
