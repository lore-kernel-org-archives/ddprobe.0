Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356CF294A0A
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750927794; cv=none; b=MogTowOc/I88wE+ToFMa3LVNU8Kl9iFRf/fMIZqX4fQefnOnEySA6Y79NNLfvt6bn/kn6/5aa7WnJIsK9SD1Sg5sc8JvJwsRaU+TbWVsE4JG+5I8mkYeeFR/wY0uGu1ZW8jaIvo40bC0INzgJe0OHn++XEzROOO65B/743jJ/f4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750927794; c=relaxed/simple;
	bh=qW0js644P9hAA5S5/vNB1y/i7JHWBMbLZIDsgWEHIlI=;
	h=To:Subject:From:Message-Id:Date; b=IqDwVNqzDFCvN7+odJvOspgam9zVhuPUqkkaETAFmYEBFYyst/UcheUfCNPMeGyRurG72Nkap4sGs+Aw34A47v4EArfqTHbFBegGPZFfokx0lKMCcZRgsYpn00IQ6qA9oe/ke2Ali3oi2zobjNPqx7AvBxrDxJSSe4wSmICs50Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/HtQvWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/HtQvWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475CC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750927793;
	bh=qW0js644P9hAA5S5/vNB1y/i7JHWBMbLZIDsgWEHIlI=;
	h=To:Subject:From:Date:From;
	b=A/HtQvWObqyqjqcnMmIo3gwtJkoa3YCSs27CbfvPayc4oNG692Rc2YPicYuaKQMc/
	 OdL6q9blo9mt/zXDyVRRDFRbEkszNUUb6Swdf+0CxOMirBIiXxK/n3CQZByWIXRv21
	 ZAdCbU2CWrfxMX/ZRaAegHAwiX79zKjavNJVVxSZ4Y0SO8efm+9CdGfjTI1j00rafy
	 oiJ3f8e99xgmYC3kVuH1axg86voqAUk63LQt9Hg+unBceO9WFCfKAGhC/sUD+2qGPl
	 lxUf3zYQnLoEKXwFTWHp32e0jPsOPCWoea8BOyZTpnCmsu+QgaEwmr00VUs3yk56N6
	 qiISsIleFR+2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93799C77B7F
	for <ddprobe@lists.linux.dev>; Thu, 26 Jun 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175092779359.14713.10434480210830040677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 041a2d63311917b343c5565ad269c9fca0534d0e4682753ffe3d43d1e411888b
Date: Thu, 26 Jun 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750927793
