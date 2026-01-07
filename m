Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B0422097
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767819834; cv=none; b=D0KhvGtdSO9dWA0/LeFPK0aXDPIXLL/HPYqtEjJ5iiYzRfJ2eKp4uXfdlwdY+3iT3BQap0BOVwy/qNapwteVQ+41DK9awQqo55DchHma+gMGJL2J21k+50HrhxGayuyYJrFhvj0yh77q79wDrMiyJ6FnwRxkkYnGEvBdxEl1/DE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767819834; c=relaxed/simple;
	bh=BvdoGvaqysinOI49aW96PU02eE0fhOkUAawazKiOzXs=;
	h=To:Subject:From:Message-Id:Date; b=a2Ko/WrFvQyMOguWntAyWI9agfa2mC0yyHUNZfr9PRCQkbBej5rFd/DrI1GG/fOxQebkprCO1M4YqhAZnZX2X1GTfT+x38S2RJIny61W9xAp6FcW3tyrU3473S/nEYSAO1ptj2V+WlQ+yHZfDIJAV8SVOxj4o5u7n9EGv44DSy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nh6PG6xq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nh6PG6xq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68A2C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767819833;
	bh=BvdoGvaqysinOI49aW96PU02eE0fhOkUAawazKiOzXs=;
	h=To:Subject:From:Date:From;
	b=nh6PG6xqB3adJCrS3RwPNnN08N+mKFlU84J+8VaiKXhxo87nzMsqioed2kLJXRSKJ
	 Q5eVEqAl1r1Xn7EnFJ3uu1s/j/eE+RwkFIzWxP6f2zMNb14RJF0foBkYStNA4HJo0l
	 PQLjb1HBdGDE+UhLnsVAZ+mODGOacwmrtIoTI303HUKLfZ3N5uM9gfdsoDiSIxw0HC
	 KwcneanSLr+/k3ibQlihRJAvp9B4qwdiLFR6gUIbUNCXvib8Pr4edqCr09conOpzhs
	 34oxovZDg3PZfKGosTLx3YH9KWT+8IbLPRC88LWEzBkRSgyWgAEbAL6vJvVoK7B1Cd
	 2o27OjTYVTP5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 964A0D0D170
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176781983360.8088.5764568364662133826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea064c90b3ff0fda73fbe74e091b918786e6d77ff19a046624d0e07af5dddffe
Date: Wed, 07 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767819833
