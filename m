Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E84533C5
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735966554; cv=none; b=XR6vCvBy84CoF3MyaB4ICum/N3ezCoFVyP0nGGCThBvZihCJJhzCu3O+REaa5RZLvauRY1srBgpLIg5p0c0SsSwGD38Vgi33J0VKQpjWisxtoPvI+C9TotHiWHa8ZNk+vXfARBdAiU4Q6hFi0hL5VQXQ9ACKo56kiCu2KFnHv2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735966554; c=relaxed/simple;
	bh=By5JFtVvku9bwPj11u0J/bLv4JnEWXo3Aiznb2gSqp0=;
	h=To:Subject:From:Message-Id:Date; b=OGfm4QxYd4CI2F20Zk3DhCXEXseH9/8DI5t1OG7AHaBiszr5NNnjYh+6HywD4P0vMfEzN6agz4TmwvXrFbR76QWytqgso1BTSTE4l4654GxTNGraAAoJ3/znUnaK+itk79A7HZpxClgBFmxPeBY3ImymStgYb/Fl5CWhr4HS9ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGRbHu2T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGRbHu2T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A728AC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735966553;
	bh=By5JFtVvku9bwPj11u0J/bLv4JnEWXo3Aiznb2gSqp0=;
	h=To:Subject:From:Date:From;
	b=mGRbHu2TbizXXNz6vEXeJtAm9Yq+l7dXmO9Q8+merNeqcbbTrkbiFgU2Yg8CHEDQQ
	 VCyWKtMoKOBYc0/+LWnWg2pkHo3UC9rmay6yyQcCDyfd2OxGym66bqERFQdnFEFD1F
	 kLfH/jsGZDRpX9QHuFzZLKvzYkzzuJhc7EVH2Jt3QTuxt20Tr7Ac4a4JYa/zi+atP0
	 ooUdCvAevBmdMPUHUJOgmge2FYPrJ6fcOHRXThvfPSLON73pR3hD1cJnjOA4Ye+/Pj
	 cOfWKR1molFjFib6/Y2QhweMLBrqNmNK78Z8MldzzG9TPFNAISV1v/XMadf6DToItG
	 wZxCguLZS2hyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA37E77188
	for <ddprobe@lists.linux.dev>; Sat,  4 Jan 2025 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173596655358.1419.12331360772877756640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebeef3881aae3b56cbcfce5dd1f55971faec26ec3026c8128b1a90f9c5faeebf
Date: Sat, 04 Jan 2025 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735966553
