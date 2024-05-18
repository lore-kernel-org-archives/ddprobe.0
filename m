Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E433A1B5
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716060143; cv=none; b=YW6kaCRFHpUvlCNSf3yUk5/sY7oz+zjHuMdM4/rLv8sV+IVBR/i22Itt2E2uwsM8vGCoEVZ1+0Y5w0He7W3mStQw0xn+OuTknR7DHmPTQ/oYR9H+gSlU//OWBHHEXb84tW/dd12tvHQ/nADU+wHTm9BZogpqnXS1pgo+kaPmAzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716060143; c=relaxed/simple;
	bh=D1+5Jul/tf1SwjV8W/1tG8wAEUZk+UQmuepIqO2pCC4=;
	h=To:Subject:From:Message-Id:Date; b=cBfL/zKDR/2rHvO8YKlhiuzlyNV74zR2hLG+0O/0DeQUPINzMOlO8dMc1L19/kMA3RMYnUwm6uhKwcdOZ408Ze9RLXGz6DUlctvGqr5tiItjRPAOtcVxPnwfy38VepEKe1B6Lq5Y9f70lx4YLqBAS05CnNODLzIsFl9Lb4NeAK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bdWKsTvi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bdWKsTvi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8515C113CC
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716060142;
	bh=D1+5Jul/tf1SwjV8W/1tG8wAEUZk+UQmuepIqO2pCC4=;
	h=To:Subject:From:Date:From;
	b=bdWKsTvifD6Yet7DPghwejFJOJ9GLz0VdTxeebi9c1Fo1+QPSxfCx5G+Nh7uUWQNb
	 expuoTUJJwoMQkPYeZ1URiqFSheH4/5KnssAk6chBWHKxNNm9llqmiCfs1enQMX2BT
	 XWzEvw4UJg7o1HHTyWuUTPn2wmUassRfw0xclw/VD5ZMtjIEZUbgwsmpObhht836OQ
	 mfTMmuJPk7nCEOpbeyB+cw4qz8PQSPfRH3w+KESUdqvotjSLNs8RoCypNBXT9Wd3e3
	 si3spRDD7g6iEPvUYFS5vDnF91igdg+NhP+4OP9/B5+sfUmA5UFd0PDjdWG4kub1V+
	 85oeM2EdMirSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3400C25B74
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 19:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171606014276.16732.17003745316949580419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a63f5960c5328aa635ce117c64da8a13bea246a8d790cb85d2cd92930c63575
Date: Sat, 18 May 2024 19:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716060142
