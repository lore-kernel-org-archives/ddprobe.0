Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3345441C72
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782955714; cv=none; b=ldVPIk29BxQpn9oEDntW+rPAEbnmH5FiR9FXyTy7RC3y0Un90Tvqt6AivTLL9lIZYiM4e7239ImiY+XX/ujIY3tM89jbSmppDYemN2V8vG2McMJrAOU7wxVIkJJMYhadXJDtPIJoDqcoGfXsUlNEGs5rcxkTwvx1BofTW1eGTtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782955714; c=relaxed/simple;
	bh=VvxiczTUneSiNIp0/09GymdBR2msb5Nwcpede5JuOZc=;
	h=To:Subject:From:Message-Id:Date; b=G9DFlLN+f6tNANCNJJ5QFabnJwHHhh2sYTixOyy8mUDzNzKjry0M1BDD7vzWM9uIFmwfqhmqBZ+FrszH4dl3hy1Kyp8pmzhi/qokMIAEurp5ibYQ6ZnWJDvpBUCGA0uLfn/mFGMsaYBqr0zWM1EySHTxeK7DpCLleYimN7mwoo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jksb/r/Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jksb/r/Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF9E9C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782955713;
	bh=VvxiczTUneSiNIp0/09GymdBR2msb5Nwcpede5JuOZc=;
	h=To:Subject:From:Date:From;
	b=jksb/r/ZLxAKhjLtvwty8c0MopKvrfNBBEB9QkBHz9KMI2ZbPD0Y3Kn33e6MQj2Xg
	 i6H1VUgwjShfrGcB0bMnlgTRK6EQkTIX66Wb9AB8JLSrepmBhi4XutYp/shcP+QHlm
	 QRR0YT7bcywp3mMt9VvSF7J4FScRrFYm/y16nbXYz/YR2rNu/gPh17GtEblsiM3ULN
	 sRGPpO1KxzvVMLyt1uOyq0atHjNVBW/WRHNFqm/6pLwKdRIZq6SXUxWV9VNuFYHAdi
	 3ckqw8g93nDsrxjS5C/l3k63DnVm+94iw1mGbBtqAKo+8SC6RzCPgl/NagxfeHE8wT
	 XwZxX+JFTY0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABA0DC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178295571368.11185.12342557223183044503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dfa2eefae80387d1735d1a00ab67909660e0d54bfae0cf99efc0b087d88603b
Date: Thu, 02 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782955713
