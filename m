Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609103CB2FE
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792263034; cv=none; b=TheUHs6lfFRkO9rgAhvmH/NBm7TD7FnTQUTi2ufa0sYjXejZmszHtej9TkCLCOmui1xEcDRtd8yviB4iGoIV1BhVL36v0dPhQYsbX48df+V+toEjrBc157Y2k1iZFVa/PxpmjVVisiNh1SJLxXxibzNcec8rcAZyWpOs+xw4F7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792263034; c=relaxed/simple;
	bh=7sFa2ogpBzDiJpot4cIgyacvd8AASuJwOBmWONOV2ro=;
	h=To:Subject:From:Message-Id:Date; b=Ada3HOjoxLJserRoJSkT/0tRT6ReI++c/zPzXsYap1TQWKdNoPYOumaLP8X7eE1IlPcUR4nXm2OPyMQXAJlD/uvN/6U6bJh+X8o2Brl8YxPei8QeltT61zvVeoJYdQFbQEwNxywUiWpqt8abvEVfK0amiQ8BH9oG/q6JRUrgo78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bn87xhXH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bn87xhXH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAB06C2BCFC
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792263033;
	bh=7sFa2ogpBzDiJpot4cIgyacvd8AASuJwOBmWONOV2ro=;
	h=To:Subject:From:Date:From;
	b=Bn87xhXHgexcLpF2G9NgtcdoKFzuGS89YDIiXyHJDkaqwRFRTkP9cXaSjLZYGHg3A
	 ukAFAH1V03gcnV4FhrLlZn+/VGRZqp5F734ex6MgTgrPUaktWVlUH+TLK4og+pVAH2
	 t1trI2ESSAeeTpZcCcyYUxr6e6J7qmuU6719Nwwja/D2lEKnL4VzEV6x24UUjVuHOO
	 c7nSYYdrGp8W1fYgtRe9pobWmmFfXSIKA6y6GHP+9WktwnS4sqHVBe7tsgNouOqo9G
	 5bPK8paIv2sF6g3tIM9nhFQGg1uLjoZvF/CMv6US0xLRvJ9mplwIK9yyAfO7gd2bBs
	 EgrnA0/tSdAEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9AA8CCF2C9
	for <ddprobe@lists.linux.dev>; Sat, 17 Oct 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179226303372.23542.13077352738076812598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06cb65104fef7a4939045962dcf9dc3eb8bd50a459fd3af95306631f6868a662
Date: Sat, 17 Oct 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792263033
