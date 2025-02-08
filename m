Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A234381C4
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739015154; cv=none; b=MEyV5UP1AtPwxL012AWp5iMmx5dRv/teXWPeq7jc1vR3FUVbxZ+gldfP6TDK2LmVpem4/2U6hSF/ePx8OYjlxFAGyn5xqIYTsAy9/bRjZxFc0dTro7PDSmoO2Jx3zPcxp3QhAhbf7+L4vFmdTVGhK+5o50inJfR4jbu59lZhWp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739015154; c=relaxed/simple;
	bh=NuPTU+pnfTRKSx3+ZkqTbIL1McznkC/aHVHbrIu2uAs=;
	h=To:Subject:From:Message-Id:Date; b=eP/OxWC1ekjMXAQdc46zMomePxODD9b2Osm6gKWXErmfkgMou9uaWFb0sNe43yEJNmduSuyJQlsiHj+GxqS+pvsS3ayOwcizxPeh9WytKK64uKR1xBQGp5JicyHGfu/suTVVdeGRc9aSQ9c898JTuKYGPGu2wsZv96JvTpyr9N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kp5PwjtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kp5PwjtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8F2C4CED6
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739015153;
	bh=NuPTU+pnfTRKSx3+ZkqTbIL1McznkC/aHVHbrIu2uAs=;
	h=To:Subject:From:Date:From;
	b=kp5PwjtC9hhjGp4ljZ1xc8XkofJfRkg6h0Rf4cfz3lBM/fT2IBjb2bMWdYCmYtorC
	 e3xmyTWk+TDkWVJf/66zqLj1Q/TDSR7wl1v/b7BEQl7GsXpEX/q2OySlgNr5pPpv4x
	 FBqeBfLebgfvgoTRPUFBtSC0BjWs9DsUXzy4T3suLQdp3oL6B/KAM0lT0kqZHCjBF9
	 814KWkJmJvwRYwKxVfiuYOfC+9E2lp5hMB+NL5vtnBJM/4ONtoiphDI2S8WbdkHSDC
	 25bGhwXyjmojPj3OyHmFDgUgqFgPeCuSR5AI9M1ZL7jEzkL6XlH23Wl5wkmJcstvCQ
	 uJsu9K/Y0U2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD247C02198
	for <ddprobe@lists.linux.dev>; Sat,  8 Feb 2025 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173901515366.12465.10607865102102269847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e85fbc3ba31a0ad34a7e9be97bf1266b1ca8a69b94a45c94f7e8356a673ca16b
Date: Sat, 08 Feb 2025 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739015153
