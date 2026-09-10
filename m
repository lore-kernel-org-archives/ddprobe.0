Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B2D4A2602
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789049434; cv=none; b=T1/h0Nut0ma3cVvsQ075cJ2wZ8CpHJOLge8KdMI3XO4jVruT2+pwQd+doWPvsPKcDsE1ZNTnRy2OO/ZyW2XKLJF6HKo57jqOhzPrmoUmlcn11E1FRpBo3r/y19T/XFiPeXMZ1jTIjq6/bX4RhEJCCPFgrwFA7L+unzViJOhs1k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789049434; c=relaxed/simple;
	bh=wsAi25lpjfDKRRSb7QKh2Fvax7aMCHFhCHqzBP1aafc=;
	h=To:Subject:From:Message-Id:Date; b=nR7DxzBk/8Y1DEOrmjA5xRQGCU/WPXpfX+A4N0MioOOivc//I9zKqeJqDmGt+N96/ZLP/ubnXV+ce4pL6yWrGyxOjvSEmwG7XNpn6vrGjQEk2ZEX3mvJiAoX2WjVK72rsPs/JOaL4uCwM8kCeouWO7u5pJYMtIsCUMoAbHRFZ/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrQSzj9E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrQSzj9E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF515C2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789049433;
	bh=wsAi25lpjfDKRRSb7QKh2Fvax7aMCHFhCHqzBP1aafc=;
	h=To:Subject:From:Date:From;
	b=qrQSzj9EAmF2rGjwhNKxiXG6UOF2lRhVH/z5UaQtsl9Iq6QPY4y2y1mePHyoEwHMe
	 rOSvAY1GG72Rdkb8ZErss0N1/dzHzT/sdM+JerCDGYD+t19D7Lsjh550yWivwEt5GQ
	 1A0mOe8SvmHi7DfgBTvoDFytFwVyz983hJSwQ22Rd9aML3Qc2/auhYsJumO1GhHwmn
	 gusVhYWK9YEUfSojW0dvfMjmJ/KGaLGNC3Y3eHlfYuqxzyxUdmsjhZLBi6ghn5NFST
	 HjI/bLRHJ3garoPxWAww4+hyuZ9CdCoK42OmvnVj0etq26Lrbv8NlVrpUlaSocdGgR
	 15VT1BR/RbfQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD450C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904943370.21621.5229859486586562792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c718f6daed70c627510ed9ed6586fb176fed3897df272385c60c1ec1b42b8ac
Date: Thu, 10 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789049433
