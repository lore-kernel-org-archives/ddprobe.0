Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3533D261B70
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761329994; cv=none; b=hmkiXeV4VXWC4XZ42NOHLDVFvf4LwaySdpa9jRx/l0jETKrdmqGdPQCSCoejB+sy2rGr70gXgnCqFIf/uqbZwDb5Kl0R00ynwYhv3/Gu+nlfB5SYtbTHE07TU9Qt96lNGFsQR+0lmdzZMBOmypNexK+EZ+ve2dJUOX169nMTPDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761329994; c=relaxed/simple;
	bh=KysTH5CvEdQnUmRx/06IM8ZFWcVjvFa+CFh2h04fSvw=;
	h=To:Subject:From:Message-Id:Date; b=Ur1/YjBDuOGCRcQUDQ3XeXzbyv5DPLbs9dhWHXMPuyPrBKJRpwNOd9xCCTymnwGq1Fgu/INMbNFfglNRjWVicJRThWmKkAdsTSe9ph3D3FNVqU0CnlbCTSVNibGY1GwFUo2p0/M1VsPbz19rxaKqT6VNahW9OhVyEUvhp8gRWXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W/8FK81P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W/8FK81P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA72AC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761329993;
	bh=KysTH5CvEdQnUmRx/06IM8ZFWcVjvFa+CFh2h04fSvw=;
	h=To:Subject:From:Date:From;
	b=W/8FK81P6ZpA4wq6bGJckWvsgC1LVJjx2qmTCkmVfS2tuQWc3eO5o8tCkG6Z8C6Nh
	 bKSLYF7E2dfOyKtbeBkF3X/AZw9r6LonS7u6Dxyi9shZTPcTkw5Q04oOsYJdTC82Ul
	 O/FcFxjHBzWat4C9G2pxT9apwHsF826D+SNWpw/KUFGvch1+9uy+z3IeyJ9sUiZSc0
	 bBjD44zzqSvZFL6eEPSxMEojcUW4vVHQOOrH0+jgEQ4p7LzcUzLrBI4a+Fsrgfop3G
	 KjDAS6kyDUw+hYTKhxglC6TUH4NKDiNaeVg8KTRqTRycnIvBTfNCPrsM4DNVaJg6qo
	 aIRGNoCoCHCHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A42CCF9E0
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176132999359.16555.4055349432522815578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 849ff7bc97fcd0cd9c26399ae868bccafc565beb75784a77fda75c030bbd35f0
Date: Fri, 24 Oct 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761329993
