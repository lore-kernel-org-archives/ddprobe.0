Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B7F21400E
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758435594; cv=none; b=oTT+xK7i4AA9A+vHvmxtsi/C85c+xmhlXEZwv+7Kx4fDX9MTNIbh+4MUdz+XvnPXx7D0heziGiBa6DCJoarw+lX2Uapk6tIntcFMdH7g8d4I5PUBR9GlNzApgmoyOij9flCrK/pKYWT8rhd3ANkAYxEl/cUz2P8xX+YxPotmdJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758435594; c=relaxed/simple;
	bh=Nc02owpk20lqNWBsoLvvf4c54DaipzGlarZDalRTX2c=;
	h=To:Subject:From:Message-Id:Date; b=LEDuVjRqncvxCdF8rg/WBdRdXgyV+0I422rm0Ffzgbn75vvkDGKDqHWD+NhFPpD+92PwNNog+FNY3oynEKsFR2/Zzh0mIUmi1+GdAJo2Zb+pNLqy1LEHz22ObYJE9BLkz34KbTtLojcd29KSEl3jtDAhekMfAcGZIGU26Rjg1Vk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DcU67dmg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DcU67dmg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A951BC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758435593;
	bh=Nc02owpk20lqNWBsoLvvf4c54DaipzGlarZDalRTX2c=;
	h=To:Subject:From:Date:From;
	b=DcU67dmgoAFJcluN5VDFizfYm03KFdzzNWVUX4/9uElPpPetLECjs0SprCHMA9cDS
	 pOxhWt39Cy3Ae4Gsv4JOW+CZzL3Dct02axxd6Hdf2/r6C9Umr44KPjYOSgDfmboaox
	 RwNAYrTlJG+FCG9hJ7s8IN5kLrqWdmqCHgMzJYdAhZ210gJy2+L4rYVhwc+mwlMeY3
	 3Y54GcAq6Ej5Wp9dhbVUhEOtSLcXsybYNeFMM17vEGnADFnbPFsyBItfbxnS0qQGJE
	 EVqNuvMva6vmugsmdJRBtxN5eS9RTA9c8qvEhQntfdiF/7ZcDOMFuMVYxNhUnZo9z4
	 krok+p6SBZWSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960B5CAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175843559358.16578.8218437179148288394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57e6d4053cf06e735cf49c83454d166b2ce1b57fbfe434c88334f5c52db1663d
Date: Sun, 21 Sep 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758435593
