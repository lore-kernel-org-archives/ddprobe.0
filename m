Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0131EB48
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729618554; cv=none; b=WzvoExSA2zWFbDJXCddP+xYmVAeBAOrfjr9UnhQc10sj89ZhxrD4/ywGRxvjReGh0XzR2WHpPPlvVb/6QDDW9pXXZNPxqyd2YfuUVJWii7vIrTaVm9wGoWsY8zseuL3Qj9wrHcB5ZCytF67+sQWa60kmc8bzNT7mddtl1V9cRvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729618554; c=relaxed/simple;
	bh=/l0k66eQ80ldC0PTJ1xkdi2cUyW1E98q0G0FdCf7FPk=;
	h=To:Subject:From:Message-Id:Date; b=pbyPE5Mk1dSV3E1GNipq+zuffY/lwgptj+9GQFvfZXzNaFLcUPZ5xYPJr76daEEkktZzQEpyYaKKWFdGfPYYdlAnRGbmLU8aVMkOrYVmre84i4DkSALJ/FdxOgejt26S9wDOAdhelunktGL1g8+RIditkKXYOzSdSTqKJErlXEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HTPVZC45; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HTPVZC45"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC3FC4CEC3
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729618553;
	bh=/l0k66eQ80ldC0PTJ1xkdi2cUyW1E98q0G0FdCf7FPk=;
	h=To:Subject:From:Date:From;
	b=HTPVZC452Rkh1edV9yjHcyBaIndGqUOyZ14R383ClO7Y7OMkuud+x98Jygb74IRvD
	 ocOZ/8w2tvvMU0x0eQXaAs3AGAsHvYsVM5SpItLlH8bUQDbq7tFaL3WoQSnSBZwhgO
	 BGOqLSI7TEMSCDJZtQxlXnOPYUYKZ/Ij0lEpuDlcwhSkajIBYCRS27EGCpCLKfhYWA
	 vHzUdm3oSg3t1lpDbICQn+ddKJzlY4TcumwhQBwoqiFGeMa1RyHo/l9VD3eQ4RUX7b
	 E1LkCyQV7CYI2DB9W2OebEgUWBYbrS/3+ZiUUC/4VocizWczxZwMcT7n+U+N0ugEcd
	 nzjdsBaXfjz5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9788BD2CE12
	for <ddprobe@lists.linux.dev>; Tue, 22 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172961855359.1328.3250179020862003293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317a17ac64bf1e33e1b1803972d6b2c907614e48122af12fcff15547448fb8df
Date: Tue, 22 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729618553
