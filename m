Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 263DD101DE
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756488594; cv=none; b=Cy1HB1McQTKHP5lMfNOiqHXQMW9N0naSNdj7YzLJDf36a+jtKW90wFI38EQoCvN4G+oaLYqtfe71yNrNNz0u5Y6FgPs540mlAinzO5xRxjJeyVqM+FWiITDxI6i6jsn06VqHJhUd+g/wp1u001thLOj6Vw2MgQSYn6bC4RuhrBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756488594; c=relaxed/simple;
	bh=rICGDc8mRK3tAHnIaPimDTSyA0zOM4V45ygw0WzNUaA=;
	h=To:Subject:From:Message-Id:Date; b=b3y12YkPPDsWTW2D8onJyxl5B/Ehdc1mQDPIvDfyHNvdQ9m8QdJYYBnnUPQCUseuW9bBKYqblZ5+wzmTjiWWoh5GnhOiaimsdOyNI17/p9byWPlocGKroFdm9o9pASra6kwvc0Sg7m36jOjgZg2BIfItRrDflE6uj3oXwtAj32E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riRqbDV/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riRqbDV/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4324C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756488593;
	bh=rICGDc8mRK3tAHnIaPimDTSyA0zOM4V45ygw0WzNUaA=;
	h=To:Subject:From:Date:From;
	b=riRqbDV/PQzJju/GfkcZRQgJU7kDLbBgt3hQ6+XjoTIMPV8uG7Ho8gBFl+wPI0gBG
	 wpoooKxI/6U3iUKPEJegf+yg9YxTWNDNA7c1nfKE1Zn+ZDOa7xZieNVLX9fdVxMDx3
	 HT11UHXuWb2LY1eQe3lNaadtsav7fGC8+ET6gwqDPLYiTn82iDeKL650k2LsT1wC/Q
	 1/TaV64FYMHm5FMR7y3N8GSoBimU3nD3oI6srI4MZBFMoAedO2c9amh+RNuuLnxix+
	 PpEwF9JSKhmAp1HtFbe9AwRgZnH83GVAMl08utKwv7glYNkjUyfr/qhHVYdPJf4iPp
	 N1dWsw7mWot0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90179CA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175648859358.11987.13092432364843564865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043ab074ee50f9b9b1f944c6e1c9442dd40ac4bfee2d2a08e25f303a80016f84
Date: Fri, 29 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756488593
