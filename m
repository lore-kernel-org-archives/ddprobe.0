Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C96DD221739
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763692313; cv=none; b=bzX5HISqMDWCzhkCfHEIfG/5cbNP+8rj4oq53tC1/jSsbGOzx9icbcEFjcqJ3eSIxW7bERJkwgj+immo7C1r1RyVXKbk/zaoyoC0O5D4ieIFyNlwJqSWe5wR3EigiVWKqLhXR+DisP4QrAGqCLivyzU97bU03XnKyrD1yNZIPgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763692313; c=relaxed/simple;
	bh=eXwUWO8srs5OfIOPWM1wAfafu2IvLv/zbdoRLf6qflo=;
	h=To:Subject:From:Message-Id:Date; b=N716vjT7l95QeORtr28snkY1OmwvMem5pnM2h1boyuxECLSrlhyta+E+keHdcTGkkVO3MSqmoCXWV4L85ehmr7R2Y7U+M7eiiZ4FagnWdoW7wophuKrdbdmzpV2PdmTyxfziJlTG4Nkf0TEvK28q1xx4MhOAGjHCznJ8eaYm3E8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gnDd+mW7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gnDd+mW7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D04C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763692313;
	bh=eXwUWO8srs5OfIOPWM1wAfafu2IvLv/zbdoRLf6qflo=;
	h=To:Subject:From:Date:From;
	b=gnDd+mW7b4WNWWAMPMJbtcp44mlFtAYGlyZf5VI/UOyglbhs+NQOpFGlTYaFf1vyE
	 EV+LkgwZS0/le5mnUD26/Ja++MUsgos0Njx8E2WgADDLyi8ohvaX5+cfrUwJ2OkjEl
	 TEAMP0YN5EMokE23WTN5/4LKJYh3rYaaGPlOatdmS5+RSF+HeKhtlNG6DARsZs+8Cy
	 YlmwR+tMkJsWV5KmxGM6SuHwle2P2J0kaN+IM9FvOGiD0PzbxOVSuWV/ymFmVUgSia
	 bb8cuu074brCFDfCp7VUqwgISnTafoBdrx4cOv6KHCodD2qhgrqP9wjfiNcXv2yxjZ
	 sHHlQpSm0M54Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98330CFA46B
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 02:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369231361.26102.14396479495924319213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9214f48d7cfc681d094024295c7bdf0bb6b31f0be487499d161bf16a9af61500
Date: Fri, 21 Nov 2025 02:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763692313
