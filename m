Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B6422749DF
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784783374; cv=none; b=cg6ISH65peXJK8cbHChzl0VTaQCdB9UdFCmj+J3siezYtmz54oWC7565EqSgnPoVnR+9gHO0vUMnUv6p1zcz/p1Jy/aoCbaRH6Sy2+o9dGxu0aI9zitsgEcNpqpMSZ4jGnEavCuor+wgVSWfHWQ1pegGdPu/NlRHwGvhfoxktLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784783374; c=relaxed/simple;
	bh=Gv32E5hkVHzzkOmRZl5zdQmNJswY5B71/lshpulBr8A=;
	h=To:Subject:From:Message-Id:Date; b=c2bRqBQR7O4CAMCVLfDdLUjjbv5AFydzoB1BmpNsE+LR/wbgJQWGx7aC9trv6FCRcQNDeMJw3Mbo2lYuK2dMmssJOiOxGXkOTtQawB+bG4tS010aTYCmmv1etA0IJ+kycTwy8edjrOb1BxI/VAdv3L6nBOgwzTLLYIyutkgFuAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4La9Kyy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4La9Kyy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C0CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:09:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784783373;
	bh=Gv32E5hkVHzzkOmRZl5zdQmNJswY5B71/lshpulBr8A=;
	h=To:Subject:From:Date:From;
	b=c4La9KyyKWYRsVeXPdLUzJShcfBUrLVXVfbQPMrr811UzowV5wlZsLjKaUjKdvFS7
	 zeUdM1LD85L4DXgw4sSDfHmKm6uiTeNxteRWywMlnUsy0VO+1sEGy1k8V8/HhExbpi
	 ozNgPI8E7V5Iqkk59Hl0hpi0xiv5VV6NTQyzKY1c6SsPsOv4ETWQWAkxceCLyBvJyR
	 QJJjF8xTSU2BaSIatFpJXPBfwq5kQmxkgusqvAvj5DjlZd7AQPNYyygf7njbGITmN9
	 DLnfdBZXh/B72e67hWTyTsP41CHEQC4tjcL0MobJjtOYSw2a584H7jfeMbyNUh7ayV
	 s9suC8itTRVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC73C4452B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 05:09:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178478337369.8724.4865629831263375298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cafd22ce9099c0c5a21da4d3f52b630cda6dcb08c94f4a4eb6152cd3f05ff03b
Date: Thu, 23 Jul 2026 05:09:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784783373
