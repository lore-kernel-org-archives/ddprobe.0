Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A6E23BD17
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761850194; cv=none; b=OvFemYMl1UsATD1YKwM26glg+Rd2gXck7ZFhCEL4Gnz3cws6SiwvGBeHHnrc/kEg7BJdkPo/iicCpTLgAH+lCRKWpsbeqKgrrlk/iyyVtTAWasa+tFzMVCXltZtUM7SQbXC/ZKLLPGYBXauxwMRY5sr7y4qgDpinUTdU/YHemZA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761850194; c=relaxed/simple;
	bh=fizL53X3CdQP5esODROVTZ5pSGCnJBV1qIfsaY+D+gY=;
	h=To:Subject:From:Message-Id:Date; b=duWUjT4fUs84wsaaLPshgUETq6vKQW3TNeCdu5m/cu/0NTgLO/m6lu7LbWN+FOnhnqs1RWosh8yIHZEaxdXqf5VCflR+P/x4WfBvha4N2FwCztTIrZrb3EGqzlMAfa2yzZb5xvrPdciqMIUovNo+zYvwEShZJc1yhLPzJszbl5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKlr6+bH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKlr6+bH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B223C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761850193;
	bh=fizL53X3CdQP5esODROVTZ5pSGCnJBV1qIfsaY+D+gY=;
	h=To:Subject:From:Date:From;
	b=lKlr6+bH2M3LjUe9gaks/r92IHKLTh41DU+fspdbDWLI31kuOzy+52aIobnagUBC7
	 srmP7qR8MVK46xwNl7v3Hw4sQ8/0LHsBgJq2nxou1C+TnJNlYZQr3r4BU0lyas8ePZ
	 DdDRpixCZ4sHHhHS94ymilVdJ14sG8pJbOdkohW94+T6kJCceF6CyJHSbZXAiL/46j
	 6N9SxbqMpEvFZoJaiEihrtRtRRV9u5PIrIyCJNDcd8SxGw/LNe5el2o7FxCcGvCfGg
	 kqXduFDoL+j81AfQ/N4p7Vz6/w0PlTg4kRKS+SWNKlPXYM+xh9UnuKYic+nX73Yr+S
	 0vbn8eMgQq1nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90766CCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185019358.19642.15864022813461626106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bca4038707ff7921a81e2d26568cc18048e0b8c4eb79d9ee7ffd02b62f9259a
Date: Thu, 30 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761850193
