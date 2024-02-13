Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0786F12E48
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 05:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707802097; cv=none; b=hYVt32dyJlcWlrxyAPWLsEEx72iEwrr/tUGQQSPHgq8Bs7FRi3G/WEJfp3HJoofpAISZ5wK4wBKTwqiMeB8SPTgnxMYHh+gxVmgZnu2BjyIln26yLi6uIQzm69z0Y/gUf9ooawtW1ojPlBExYdowxcKvQOLwHz99D8ps0GvYvCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707802097; c=relaxed/simple;
	bh=dmoqyI4VymAi4zbIIZlLAj4D8tjzElwlC/1xOKc6c8Y=;
	h=To:Subject:From:Message-Id:Date; b=N15+iZgBNJk4sdl1tKIllOouONNl4DRh4Oxa9o/jCbBl52c9jOUA4WU5/5zeyXvF6ZsGJdZvZ57D6maNMgTSX7G/FwBGjQpJWUpVyfp1ple5sWAukpf29KmfPxjqrD2D3CXnzslY0aPAjJ1nrddX4Q0PLY745fAgobIZ18H2oEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jq+DPPT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jq+DPPT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A85EC433F1
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 05:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707802096;
	bh=dmoqyI4VymAi4zbIIZlLAj4D8tjzElwlC/1xOKc6c8Y=;
	h=To:Subject:From:Date:From;
	b=Jq+DPPT106QB22ko5SPJYLM+NnGuypr6ndrdj/5i2TovqPcNhR/0oHbnme/sEIRhG
	 4nBdI2MVtQxGPFJgkTna0DcaDoJrX2EcTTFtQzK1F5HG0w2qGH8TaUir5b12akSQqk
	 fSxJjnbo3FRFuVbuisK9JjcWlvfeBWaWE303EJ6lUvYed1jgotwe3tGXTaf4Yrtx7Y
	 ffcRYQI+i+yy6ZOVtPe52qUCn11S13XEbBs0StDMF65X+XX/DA5P2A6CPCUNb7sIGI
	 QjICTdBaVznufYphaxLZv6JUmXu/pi2hr5f8bxfYV2jITnpohs/fL9SrB12j1CGKYH
	 qBRdz/DtJQOwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C762C4829A
	for <ddprobe@lists.linux.dev>; Tue, 13 Feb 2024 05:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170780209637.22847.166377848950997593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a08894bf266c6920907e99caed314a4572975d98e2279dca5d62c99ebe57ea
Date: Tue, 13 Feb 2024 05:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707802096
