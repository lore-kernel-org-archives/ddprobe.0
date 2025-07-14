Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1995C253F2A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752502194; cv=none; b=u10obkT0CJDYAb+aPomhzb1TM74dwyl+4+3ZkB9ef+HO3c+4gyPxzz862H5kRhaa5TGrUdtMHNIXtujfj9sFeru/5a+dO+qW1Rczpe17mHqLqfJKZYi1bkmPNPN48OU7GhVRDSFkX2HYchQaUDvBpbHiixs9tZ8/XS0PyZO+j3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752502194; c=relaxed/simple;
	bh=e6pLmL6gHhqfRO8BKDb2WWoXHLMMy12BAKY6v6smROE=;
	h=To:Subject:From:Message-Id:Date; b=Fu57M7x6nKxy2qdmMEZSy3EK95O0G+CO0ShQ0uhTCjXx9u02ihZueMGNdR0CVgUVYBdCG9eny5cQdv0GYS21m2lHisg+HBcMkEK5m5fp+giL0tfVSvLRrCWjj5hhRii/T0rQisWxStadWU4QZ4c9ZsU/x4byZtQ9ywLZBpXtJZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXFRzFXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXFRzFXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28E6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752502193;
	bh=e6pLmL6gHhqfRO8BKDb2WWoXHLMMy12BAKY6v6smROE=;
	h=To:Subject:From:Date:From;
	b=DXFRzFXIrmnJSArck33sGS1QN0pctps0QRVO0z5fHcVYLg9HslV9TTZR2wSEO4JLL
	 SaHIV9FFZkl2W+Jzqz0I/44YJmZYKlg3YZUYK9kwf07RDLfeC9mApDLLqdJavRXZVQ
	 J3RI4l/3TEzseIDYbHFNl0OnnxWMuA1c1o5DJMwkZv+te5xUwQ56N2+3bko4hRPMft
	 qwGFRkQwUC09qGzDyK4PeOSGM10AtN/3N2JmieqT2NKJ1AuRnOQSwMIocko9aPeOsB
	 j0m+gER+X/xwxD7CmL4g4ENLjwKhInnJwZkRAUB7lqSlD5yoTstIucV2t/G1Cqb6b1
	 HimAG4NpYw2wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B61C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175250219358.25841.16739891887800526048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86ed3aff6c46dae31f05a417cdd145aeec799475f9a24f81add2ef94c3c44314
Date: Mon, 14 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752502193
