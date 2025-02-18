Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FDEF26FDB2
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739898534; cv=none; b=agElTaOtjXSm47opJ0B3ubv7AD/Un6kjvbMREWX4vvDs7v0OJ0poM9F0/Lx3yh6J2Zb8bSX7HitGbySPqtGok/CZekZwYVvc1Yc8wKCCrhAGV008aqRhdV75RWzF1z18LPNliq4JVs3twuvV9LFNEjzkaMvCYTP+mqXeCBIEPHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739898534; c=relaxed/simple;
	bh=kYnwfRIbd7whygB9SCdYwUyMOG1BSvvf3ix82XipmOw=;
	h=To:Subject:From:Message-Id:Date; b=tp18qyE7s71VApgYN9v1Aou6Vx3GU+060uIB5Kg26T32VtfGbj+ZWM/bvtuWrPHVtyaiw6JB5YL72nzm91dbxFQZ+7MGPE60NcV2dQONA4bMwD6twEUKw652G2ppzrh3mdu5MvOCbvvYm62FUD7CSLoK52c8E/2aJJ4FWZayjbw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gE89DHI/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gE89DHI/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B415EC4CEE8
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739898533;
	bh=kYnwfRIbd7whygB9SCdYwUyMOG1BSvvf3ix82XipmOw=;
	h=To:Subject:From:Date:From;
	b=gE89DHI/TCQ2XcnAH5bB3yl0Bs+HOBn5rSWUIU2xH2zAAkyc2n4GYlRtb/O9gWLkD
	 IjrFzeh2eSAKLpiVDoTYvKIwBPWy83eE9voYUSHF3mJCq3PpNhCw7UpObmJAHZIRHe
	 ZzPyWpcc66L52ubuxm0/juOcDr0KyaZYJ/cdLzJHQOMQYWe8CV5ti4RqEKqRum3Z+i
	 M7ie1KXS9Kk/lvXsZzhqv5EGrHoJ5x861dJAj7JAn1/6ESVBA3qL3gy8xH221/JO0I
	 tHFHQS7E3L7qzoE3P3v1re3O+xCDsspA9jUwDmxgUt8BdaW80tqbYuRjWj3mji9G/W
	 8DnP7Ntz8UZxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A457FC021B1
	for <ddprobe@lists.linux.dev>; Tue, 18 Feb 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173989853366.11984.1749204412505420280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 259b29cd3104e311cc41a7514a7fa0c5f75e0ac0fd750a87c906932d9fe7ee54
Date: Tue, 18 Feb 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739898533
