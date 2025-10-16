Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F6BB1DE2C9
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760610594; cv=none; b=CNsSpyAKV7jxrDSAhw1TGIFwwpYrWagsizY/zCJPEnNzNlOwaHUUsnOlH0aEPobXl8M9GRjqKI6ErkOrU0eCchUAYKpxw1/hUL1KbDY62Lih28GYIULGpLpblVuaT6vw4T5InBJCGXhCgBk5eHPWN811ISxb3e6dHw6BTx0EEyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760610594; c=relaxed/simple;
	bh=SZFIE3w1uU7ef2n4HOGYxCZk0Zhpeh6QEaC75Fgu+Hc=;
	h=To:Subject:From:Message-Id:Date; b=GkU+WUAW2OasPu/rqsTnud8dS9hllt9VImjMMdkfMo5BQ0CdzAPEn2fIR2DodHBGyTtyWcdqB0vbvdceGWOeo/kRBRW535ujCQyqCCnw4nzaygx5DUnq7BDrgQiV2HJX1YUfo7lyVoe9LDhq8bIrEI+CymC0RCPSNP0P52oBTGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tO13MTe/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tO13MTe/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE11C113D0
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760610593;
	bh=SZFIE3w1uU7ef2n4HOGYxCZk0Zhpeh6QEaC75Fgu+Hc=;
	h=To:Subject:From:Date:From;
	b=tO13MTe/emoi7sbVHfSpfZcjZgWyv0XB9Y5UxmksnI5ZW0nigujYE2dYTguZTjWn3
	 ICj03SDPPMzovINwucTz+1+28VK2CNZqXKOIiT2v29bmaZ+L1Li7Q0RkEDuVva+7DX
	 TnwGsXcgfbUkHjF9h3pVKTPMOXTKOCkvMnyJzohu8bE/pkyL3kHNlaB90mMNSahQjq
	 AcWT7XSSRyP7CVYwnHQdMFX4qnc6jklyPIt/NDrYW48sz53kRgC6d4txNuqdQQHMtO
	 NziD0sy18MmTGBQTdnNHwJ7/G9/69euj9bghJdRvWNMvjU6v/4JKyLJV7ZqNa9HwyS
	 qY/iOz1zB+rew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90439CCD183
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061059358.12791.9318467777949255185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14ef6acb498fe3603c6d730ebe7ed63e21dd6e5d7c627359df74657de8107134
Date: Thu, 16 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760610593
