Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CBD02F52
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712897963; cv=none; b=A+xqP7mjpPd0+f1XoT+sLf3BcZYSR27HvVR8lqYnvdtoDYYOvOC2ejV95PSV+kuLbc8l9fDii6BeeVHsKKTGT0N2yBRaCLoiLMCN69/Ivy57lKE68MmlcPpAleyXMqRMfq1XMbbTXmvqf3gDWa2EkV1V0BNsHHqJTYvsfqm/3FQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712897963; c=relaxed/simple;
	bh=tal93BCz+46gJXvwmX+76HHoydne+LXzJ0VKQ6RpLSU=;
	h=To:Subject:From:Message-Id:Date; b=l88HGE7GswHcFw5vjuas6sYpLARJPgtYdIO1w+2UPQpEJnLNoKsWOeHCXsrVVGHZm/VNhydC2vUbU5l1Y3SzDWCC+0gqcY9kYwjWXzrfQkkoNBSp8PCHhFR+Mn8zDEcmpyk/2ggAOd+NHSHoCpm+yeaVnaaGRN9wbI/p9DZ4vIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XIutco5V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XIutco5V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0AF1C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712897962;
	bh=tal93BCz+46gJXvwmX+76HHoydne+LXzJ0VKQ6RpLSU=;
	h=To:Subject:From:Date:From;
	b=XIutco5VlRCeSWB1XRwSBca7Y5+/EmEL+8SwpbQhHFc6K2LWycuZwJfJj0e4Cxyrb
	 bLZe5v3IMCyZHVRjOKhub8wHz9aop8KbSfS/ziH/TRQdiVL96krLSij1QgjSeNcx4r
	 K2ixscOGOoi9lyy1X8IVzElaux8MQY+6L5ENuqATcD7a7hMxOZlx+Aqo+vCOO/XQ25
	 nuLJp9+mq2Y3f0t8dl55AgemHAsYn4GjnECJI4uX2k6q2xHqXeYyRR1DH/P/2SAT1V
	 L+Z/Mm5Ue/7gaSj6tZV2SgmffFBGjwVT5gJ+4QkkILrxhTbcrSU4bUj4FOt5IBO37n
	 hNIhhDN6TvxFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAECC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 04:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171289796275.5314.2607959647107624196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49eee94136b7a011cb4148ad52511f413f81096738229254c52bb03583ce0df6
Date: Fri, 12 Apr 2024 04:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712897962
