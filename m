Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3379853362
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724679354; cv=none; b=LXBNJz8fH208Gp0rHqf+HV6MwEgss4BRgjZPM/JI4BW15FuGfLmav2xNH03/LtlcX/L6H5a8fDPiszjFTC5c5Ge+KNVV3DKtw6KFzUrxV2I2kvNVyp185++NmcuwiPyHpQMJ9eO6f0fX7j3LOqs/Sz/StouL6gIKpXpRQVe8ypQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724679354; c=relaxed/simple;
	bh=AyPiyrKrZfg46w9MZ1rKl0PRYBlm5zNmHTxBqIJm1pA=;
	h=To:Subject:From:Message-Id:Date; b=pczS9dESV/mgSBuNZrboDdl7bpcSfunOy9tCZzswXUccM83YBh9jGBbf6o3zvYjFQMFQ3Qf57d7Ce0xAlyNIY8XmpisW5z2owTIwdi0FK40QmO1/dPJES1RcqnM+o4MBuR4wxkIQKZPUarNFzA7rQvJCIxlUYipThKErRJ9sJP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L1u5Hq1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L1u5Hq1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB56AC52FD5
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724679353;
	bh=AyPiyrKrZfg46w9MZ1rKl0PRYBlm5zNmHTxBqIJm1pA=;
	h=To:Subject:From:Date:From;
	b=L1u5Hq1jH/UXUjKYYI0GD3g8yjg7+dwLKvI4iMOP2KfkIcjhuh0/wALed7LfxhDAe
	 7EgtqscT6ewLnCFqJcoRgxE60YLNES3SfHCvczsgqH+oKCJFxZEO4619LhHR2I+rzW
	 tcuQncmENLa2g8uy++pQjpP5l8231WlGy3mZwnmOLucdmAUS1URCtyP3uXTPZlVmMe
	 uVku5QrQoSnF+D2gIffFEsJN2IKw4ac4AgP4iCmhZiX6e2HzHr49E23glfcZii0Cct
	 SO+ZPl15AZb3jxIgh1wCKNIwVjE52GIWB4ECrNVGzeZ3/xZFiKf78+U43Y4kHX+cgM
	 vYbfhbtsG6YRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9144BC5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172467935358.17300.17224895339801065801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd2d60f5b8789551bcf00e312f925c7b4d9ca51a900f5b99726333e44eeb39d9
Date: Mon, 26 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724679353
