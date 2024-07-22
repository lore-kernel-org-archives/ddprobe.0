Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482585338D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721645154; cv=none; b=m1G3XEiefph2sF+xPX63j8l9BIKwGQ0gKegMxJwhLz1iIBguQv/6WtC9NG1n+uvtPkxe3Gns7I2ZjIcaaNnfqumaLwEisowKAnyAj++1G6J7JZZQiCEbwf+2Z1niM6m614dGD4MQ9LLhVp9GOML3tXKFhmviJiyJKqTkhdZH/Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721645154; c=relaxed/simple;
	bh=4D30TIHcvJokc2aHTbsFeDWPwPqSogT1BDH4dvHWbik=;
	h=To:Subject:From:Message-Id:Date; b=Tduy/yE3VjulXHkHzZ5Be9Hpb6CfDTHjVVExsWo9CilSw3kJe16tLFW3rAqYGEj8e2ZAqy5N6dfVCSTRbyjFSfLidYdyWYk01nzmp26/kuoXJdZ3I8RUi1ytaOUxFFlC89zAXr8Q9xyC8EobTNw15+rT0ys9Kpb/FBc4eMl3vF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7ved1NZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7ved1NZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5044C116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721645153;
	bh=4D30TIHcvJokc2aHTbsFeDWPwPqSogT1BDH4dvHWbik=;
	h=To:Subject:From:Date:From;
	b=u7ved1NZkHIR4g59yhKzWTmwKjfZlFPHde+9zjC9ahwAbgGcuE7amze2K8ytYKlus
	 6755Itc2mqXst15p+LspoAeryjkrYgiGz51yP34dP5hXNSqWyX248faoUV1x7F5Ato
	 a0Uv/Nwm1qXcqM89SqPW6NSLqnexeMUcnecRQgf/QpSRcRBIi1Mx70AYXBo+H0A92z
	 MhXys5a/7VgemUit0EHSku6FzeBuEvju0Asd4m4HWPIaN9okqhyG1EWeM1Z5u6vBGG
	 GnjnCKd5mTCPrvy3y3GJSIwf+liIdCOmRLYB1GEBdKkFpzvsNCrbitMk31w1z9xuNw
	 lALMimPysKilg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9487CC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164515359.15916.17551480541422612107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42e2826da733a28f989caa8050bc0b06d166cd52447cd14980ccacd176d0503f
Date: Mon, 22 Jul 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721645153
