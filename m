Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B1B7280A58
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752119994; cv=none; b=FMX/UsR1aHUVlyxclSBYIPF7/IXXXmk/eqgij+48DzRg+BcErUQa9tq6RKg0UkhLNvtIP/awbKxn85ZaLaC/2FIvKgmxwXQ4ca63Ov+YH+mAhTXbzRvenS5IF+yMwAnDt0VqZ7TfGgfOwt1Q4JwX3KhyqkQ9TdjO1J5KHwzoeqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752119994; c=relaxed/simple;
	bh=hJ/72Iz08RwTqh+qHesk88fMLk+MDX94ui3m9PbelhY=;
	h=To:Subject:From:Message-Id:Date; b=fwxDdCeHulc5d35Holzw5qfyKjRt8pSscDMmEPTuwJf+2y4cdxDUxkUpJJcgnBZxa8tNxFGBf80QmEDK8XSBszHswmNMbXxczGfq543IzChfJTnMesHRkVkRiN6z7AYF7B0gant23s8dutWRAh0B6K0aYhO3d0lhS4TMiD52LW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f8RaVezH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f8RaVezH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2E9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752119993;
	bh=hJ/72Iz08RwTqh+qHesk88fMLk+MDX94ui3m9PbelhY=;
	h=To:Subject:From:Date:From;
	b=f8RaVezHiRegH7wSRE2Eax2+B2DroMEiVY+B04nvvL2p+YMXUiCEIrGIUCtKw7z3C
	 ZoF2VhGsAbczMsW6DOzGdQApxGzVkVhald96pHppn6VaFshxUZH6MSttYfsqQ1GQPk
	 Bk01yqE+7QdC1CPFbz+eSZ1hcflL/PSltR0tLBcBH1UiGiD+zMEXf9i6MbEv8f4cBF
	 WPHN/QR3pHjJu2+pC3PdQ5+mRP8hPVwdm6+GSefgza6+RvyVefT7ISvDfXhyEx8MMi
	 3u1yoUp9A5ufyeChtp3L81RL+++4OdKkgvNtBTk4zk1k/TgovA0I1+n4RkNZfhIOwP
	 5lkWJDTCDX2DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C24C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175211999357.1036.5015016202345789739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9b334be300b15681a0b5d5ca730ba5996cfe3a7db8ae8aff17929281d60ae0
Date: Thu, 10 Jul 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752119993
