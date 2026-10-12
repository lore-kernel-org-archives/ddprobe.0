Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484F536F438
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791812434; cv=none; b=dISaVngKL+C3/tqEOpduyDb31VvL8A9dSwTGdz21xiZQVpxG+n7lU99GJCLIytgw4EaDP8BjyYSx6g89ekFhMBADm8BT9vHY6vuA92RXIJvPfBybAMhmsAKcClkjX2r03CWGN8SvEMKJncrqvvz0e75xVcfS31GYECxu8yt4P34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791812434; c=relaxed/simple;
	bh=2AbWQyuf4pZkGGyZuFEjLrYx2vR+8JomV0LPnM6EieM=;
	h=To:Subject:From:Message-Id:Date; b=oICI3glcFl/z6LuJk1RncL1FxzmPuEod3JbXKwAtiMYt0z0DQbjPLkPTVMOLpUgKfrvUQyDr31uQKK6J+feR/Hzhy5n1xKMbIn+s0a7Y8aQG6emzb4GK+PiZX+XhzLlWI/n+o1zRIbg2VExZE7ohoSWi60C3SD6PKMzZoj6U/Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rXUDLm6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rXUDLm6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65EFC2BCFA
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791812433;
	bh=2AbWQyuf4pZkGGyZuFEjLrYx2vR+8JomV0LPnM6EieM=;
	h=To:Subject:From:Date:From;
	b=rXUDLm6RkR6CGMKU175nos3WaKGUSyhTf1ydMos9jpdoCvXsK/RtKpEpYzsBn6Gqc
	 zZnp/08qp34EnFXrHphDYOvrwqHGnQ3XVBiuW4s1neekqUfSpO2MlInk9QOj1GvNu6
	 zFTlCVXWRJA4rh1NV9G3VIGxFIKWHU0ETbAqt4lZLAzcQ6nl66RamvUALBt0ahd25X
	 zofpQ2ZmQB3RsfxAbOsiy9RkEEDe8BMhykskBoa4AhjJ5Rja7w4KkNnAfdyhiLwUsc
	 wHttLeh59p3/mljkc2kphRPFY0PUaLws00I0kkH/8CsbpyavgWwMfX7+IGEhLaAIru
	 lkdi7CtPLmjHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2CF4CA9EC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179181243369.4138.1179447694292828854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e763acdc7f5f78d6276677292b9482697702c5ea10c32004b37a67c259ef0569
Date: Mon, 12 Oct 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791812433
