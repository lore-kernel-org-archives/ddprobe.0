Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4C93D6D
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732596954; cv=none; b=TV8lUZhOX5PDjGShH1/r2orjEkXcD8U8t5XsYF3hHSRUZAfYsmJ1USxFJspc7tW6xQJ+S79mKu6bUEKlXrGeQU9NYRLhSXpg6mPETSoHxNVG1uHjEQF+t38H7uq93VXTsZLppAUR6o2XVAM0K9IYEP9/wY1wHQgftzPICS5AKM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732596954; c=relaxed/simple;
	bh=WAVcFlW10jJx5RiZGHwaTvGV4k+KHDKVCZBAWd86mY0=;
	h=To:Subject:From:Message-Id:Date; b=UVz/0odGGdF8KvNZNPp3LcFrQKEaHrpTWIGAjpXofj6Wb5lE1FuFIPl55fTmQ1rnNmkySkfA4RSfePn5isgQAdPFZYh+VXexcNgGsdRL5MlspNafiGC7piO+svfu6tzPymSsJJG5hgb5tEU0ZQNF6VtI7WeZwwSu1z1wbMoXVfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FHyIkWjG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FHyIkWjG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B673AC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732596953;
	bh=WAVcFlW10jJx5RiZGHwaTvGV4k+KHDKVCZBAWd86mY0=;
	h=To:Subject:From:Date:From;
	b=FHyIkWjG2B4wazxvY5aC2Mn44CMs4xXzTcvmYf3p7LQN6Hw1UjdwjMaNKCok1CbrZ
	 /t+llpRdqjpC5Z/VogXlu9GqQHvXGPYmMWP47nBq4nfVhsUroQGLdfPsGmLtR+McpU
	 zTYh770THB+aKcxRo7vTnlX75fLEdbXzzDom0ajmCwKudzKiK4JARnXhRvdM06/83F
	 2I5z2PV/m1ocYFda3Kuz9Iee80GPoXQ1342fm9i0xzhqPR20mhNnrkp5E3lkrnrxB8
	 ztXXuR4QnDkIhvWAMP4KxmaOpIJPdRLzqbx7Tq45+U0jGsG1GUYmonfltlzUQONvcX
	 ynjMq97xOjePQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0E4D5A6DF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173259695360.6750.9673383920760245488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b90565bcbee5a6848886b475b343df3cc2e63b118bc85b6235d628dcf3a0823e
Date: Tue, 26 Nov 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732596953
