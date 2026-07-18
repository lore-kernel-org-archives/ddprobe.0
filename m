Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4500B342CB4
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784354314; cv=none; b=dUdd4dqVRWidPe/8O7APqeG75u0UwjT5JdsVKMcoMg5E56If9+CswmKnpNBsxMscjxPv52qBBemrNFWzlGGBQ49IY0KG96XcSw0bNR+8R2ZZesJDd9QUK1TAwz+OTkLwcoUcHMBkPwCr5Vx1STCbHoEws4+R3kqLaO5cRKQSESg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784354314; c=relaxed/simple;
	bh=cicCgKBRF68oOZn+O5rzJ7efHytYzTQ7tNuTYRASSZI=;
	h=To:Subject:From:Message-Id:Date; b=b3nIVihOXwAPmxknYbDOGA0z+WnSfQyNzDpCo9anovLFaULc5wL6QTj6g1vVfHiXsPArVz1xnfhpioa3AQY/sEujsDcnWqAQ6mp7KAvIKdXdB2J0og+r8OX/9XfnPP1QPWDIpulCpJ+zT2YYD8jl15ru8Lu7sQyHY0ayuqObOaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CdGGRliT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CdGGRliT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCB38C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784354313;
	bh=cicCgKBRF68oOZn+O5rzJ7efHytYzTQ7tNuTYRASSZI=;
	h=To:Subject:From:Date:From;
	b=CdGGRliT5eGA58m69OepaEV71SDd1US4VRaDwRow9/gW7osScW6cid5KdwRiHgzJC
	 YOwB9IlBfg2K+pFqJ9+a9aITtfr0EPL/1eoB/SIVzdtS45pw8zB77/4PNn5CrKi8yF
	 VWCrJPW3xhUw6K99krphtFgsKKO0yaoidRBV5OcsUNgKMUl5wTXXeI/HwGW6ykYibD
	 sAdDlAOgUMNndWjD1ys7LHRtQYVs4sLAPvfFMUGxo5bB+FziNI63PuqEIzBedfhGqV
	 lifHXLedAv252TUUG0ms4Cpug7CGrNbX/t0ZwPPvFJo0z7qJTbPxf74fbg1zunIs4C
	 8HfXVvhOnEZwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D5FC4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178435431368.10057.8754643975395204919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b586a2c56c54bd2c728bf38b2ecca767a63e2697231fab378c8e889628c4024
Date: Sat, 18 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784354313
