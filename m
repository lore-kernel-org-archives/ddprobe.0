Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4341F94D
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722066954; cv=none; b=iQ/lixBMEF1qE4bZ4iagQZULxtMyTC0sd30bvOMrxh9dIJieu1vsVoSxqRfVB9OxSBt6YNLKfWYingczCaNuJcWRgo67oVDbafZ2y5DQMk78MUn35+kN1V3MKhq0tUBbD7w5nHfh3HS/m+V70ZxvEWq6w9ySP2wPh7Fp2ehKAts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722066954; c=relaxed/simple;
	bh=2PMvNMg+dqykxTSNRNS4eYtK0Cmx/4kOyfpuKEbLupc=;
	h=To:Subject:From:Message-Id:Date; b=bqF22rIR9EkzH9SPlf8/1Etf2LYthJl5ixydKj3xQidDza+aCuuyuGD1c7c0Ynj5mHBiqzQGFJNrIygBcBFtX0PRUeihYQh7N7mrD8bKvRGRp9MxDzZyNsfsZXuLoWNEziKBFGABmxu7uGBurRICFK/aZBC/nCMhU73FpQI5hHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aQfsDbJP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aQfsDbJP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF7AC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722066953;
	bh=2PMvNMg+dqykxTSNRNS4eYtK0Cmx/4kOyfpuKEbLupc=;
	h=To:Subject:From:Date:From;
	b=aQfsDbJPd9Bb6yTVQl33t1MpgcVKdNR0Ts81EW49O9xUmP24y/ykmnEKsLewvbdt4
	 ctw2nLedakZCsqSxMgrj6a8vWgCjIXp8q+deNHSHSFGN5BK9K/Ih82zhBxdTdt3sVi
	 XqlZT9fRU5b4m5702Q1LFA/ILK1KOBxnNGL+eqZYa5hNLHBd9/xiBRoO3QOkWUAVzo
	 fg/Vl3ZzFkQKY+cp+cNl4wTzWoB4wnnuKZHvnX47sHIBgRSUMN22VkL9LVepgq/nR4
	 oc6TFXS23qUsxYSdaTqMho/mF+Fi+ftDK6I5w/XJPAv0Bm+EGfqOYktjFoz971mek1
	 FojWwjdFdDY1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95289C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172206695358.3835.13635197426294460687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5232087bc197b5b3b526ccc34ca568abcf93448ab1d6632125fba329ec453a2f
Date: Sat, 27 Jul 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722066953
