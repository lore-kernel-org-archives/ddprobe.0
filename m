Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44ACF182D0
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743146994; cv=none; b=tgn4ThujC4DmaXAccZvW0bRAiktZXO+i3rVV0mp5NxjVjYMeqsNRvPOzTY+d1Ek60y1fd28rTJdiarNANyr/TBbUZxMTLoKNWcPDtt1jWD3Xj04DWBjnJWzv+JdeaIOEvOjZDoo3MNUoJvY3Ay/T4BcAsUSw8jnofoeUiW4wFL0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743146994; c=relaxed/simple;
	bh=ZJrCCpwXDT1kDRngWkLIe5djB3GnROTAgbtWROCExUI=;
	h=To:Subject:From:Message-Id:Date; b=p7fhXrMQal4pQ+qvjSaat+fJ/F6/y2goHT+K+ulPsWKlgQOJRKtlkDO/hZvUZvVSTrAZ91mzwzkMwuooMTJ2lOlfXowo8t3Ir6Ey/3fikDRX+D1Ce9/4Jz46sbe30Wuxwt0Hj/2WTMf6nT4u2phJ3CNSegrLFMAFJYOrV+6mYKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PEKYA+2t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PEKYA+2t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AABEAC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743146993;
	bh=ZJrCCpwXDT1kDRngWkLIe5djB3GnROTAgbtWROCExUI=;
	h=To:Subject:From:Date:From;
	b=PEKYA+2tuKVGJh8KCD9uZ4K7gYIk9Xa/R8nkuNrqNg1QBvXVWB7ylEe5bYMqo0TF6
	 pFj9xU+NHLDZSIM4YqoOhYPM16HU0KVIpb82xQDP1lgRB9vh0G7i2PM3xrchKaghwM
	 qTcC1jCYP9IlUFMj4v+jfGD1uHo9rv4aCincq3dTp+xdir8c1FIhayXYiKLjcR5QXX
	 uiMBAhvd6aefW4EeqtN8svLRJ+k2Om2l8uFEqV9cdonZYR2qveFzj81QIisc8S1Jdy
	 f64vQ1EypnE3m/DPkcqSEfOGtAxTM5sey1qssqld0W0ZL4dXNa/v/wbPIzJMIe4FNn
	 O6WD1Zc7sLsIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9848EC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314699359.24191.223596406349864087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a1405b89b6bac5fd983f27e61b7dfb1e2812fddc2ce4c4bc4342c7db32d6eb1
Date: Fri, 28 Mar 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743146993
