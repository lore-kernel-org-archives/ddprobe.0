Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF6C7EF09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720783103; cv=none; b=fFtYs1FIDnXhyBUo7rLEEPouf4xD6JvPGRMtAPYzxER9eyXMoFSnFZWYUTvtBksTh//h3dFwufsApP3XYKXbdPeGPjNTVAgB6LtZL9FEBaBP4vFAIci9YA5ba+6Ga77E3rpnDRfacgJk/VYSLOl1o+kAS6Ks5kZhuB3H6mO68Qk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720783103; c=relaxed/simple;
	bh=y45JAuHmwNJGuNsyImZ1xlCkQa71ILFzW/UjkmIsi8Y=;
	h=To:Subject:From:Message-Id:Date; b=Fyncc/dKrXPQUhPhKVLvpNz976JussqA8lgRvfLC45BGVKdbbID0RvDddQ/zQrqSUTy2tP+JPtHMbokxqGPNRokhxG4HKXT4TVJRo26LEzroRfrB24uiLn5gs4E6bE9q3wB0mhgJdLfdjLUq2C2zlMeWou5vZb7V7va055lGWdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4PivmZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4PivmZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8925C32786
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720783102;
	bh=y45JAuHmwNJGuNsyImZ1xlCkQa71ILFzW/UjkmIsi8Y=;
	h=To:Subject:From:Date:From;
	b=p4PivmZl/hd9zA7XykekDX8ju3ESUTA+DPKckPHvvzii+cPH+luf1jJNhBlGeNavr
	 K5ZCsKRSXf5rUZCGy3Z6OUdPFtNyRkdQgs1aONGzsjDSoZJ+cBJnovxd+6XcCNxbnY
	 +b4FhuMs8BjQ7mtQfV6Eg2cEXdF8uk9x0wIUKiGaYqDmQobNhQJf52140LhBIFBBf9
	 EXzFCVXPgFNmt2/Gi5BWz/K9633AO03sCW8cbzuIokwJyR5/ssQjBj3oFBakmqviKF
	 b8Nv2KyckpbOvrQKM2XH+GpehRWVVTkDL9kHgp5GAD4L8qF+7I4lukCUu6KiVEE60w
	 itEZ9zGks2oeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5D4EC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078310279.12860.13980979124577501624.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cdf98b632fc056025932bc588a0721b90f18a4b7400e11a0589609c54d8a2bb
Date: Fri, 12 Jul 2024 11:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720783102
