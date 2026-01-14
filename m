Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00C3516F0FE
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:23:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768368236; cv=none; b=E8wrcTk4wQGB98ZHH5uHMfVO7uQnxIF6az2F7yyBV0lJsGpXeEx9pDTOtjk019t1iPWfNp/bMsbIS8NVB0g0Q38FQoXHdd+bYfQmjHIZahsEtUruu9chccoxJfVjoqG0UbjfQohxAw9yiPowso5eesRP28MwZM3Ih2ASxwEbrQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768368236; c=relaxed/simple;
	bh=ELrgVLNg1bT+1hgAPe1ir10tnSt+1Ss7lOK/y9o/kf4=;
	h=To:Subject:From:Message-Id:Date; b=P/5L2qnaQkGk54h4Ev/ukmtLYgGOmKSbD6WEy8BYSJPujgWeb6P7M45ZdbbviRtxxF+xox2bHfYTMWg0roZ1BYeH6mCs5UfEgBORBBV5yHTShPUJyEKwn4dPfxE7P1FPsRjC9Tm3BmjsxyZtBwphjdwrFOA6P1FqkUBT1OUXMQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LTCuuxoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LTCuuxoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50EDC19423
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768368233;
	bh=ELrgVLNg1bT+1hgAPe1ir10tnSt+1Ss7lOK/y9o/kf4=;
	h=To:Subject:From:Date:From;
	b=LTCuuxoo2oex03MIbwAM/HtkoO3sUlHlROGXlzOFMdjR5YBwVHv+aTEhGIBtGPlcZ
	 Zlpuu87HqEyGRBKkvVAboPQfcwmJrPKndgY/169efGMsBhBz47uOblNy//CNZmZtKC
	 hwCVv0Q1NOjpYnBXWJtkudr0UtrJFmfmxrJSgIWycZHjiTSh+LjqanQwfv32ZQTcWu
	 WjpuoDcZkOE6VyRfZKm7NpmOlt2sl+7sFbKZgBn7Fij7Nj4eb/JfjEYdvbAdH98FAE
	 43YUzNLITG21PgVbIGLmDryEccpYlenhCOwmfiMt2lgqsFHwr2xdjG35a9y9Mc0fgQ
	 rOt5hai1eBvJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CCBD31A0F
	for <ddprobe@lists.linux.dev>; Wed, 14 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176836823358.27495.5545095486351829403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 992cfe91358d674f8afb55169094fcb52a8e89d59f77ff4ea043e3f403a0ad91
Date: Wed, 14 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768368233
