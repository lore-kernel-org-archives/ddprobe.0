Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BB5264A8F
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753616994; cv=none; b=kMXdG7hObQsksskD7Yp32Vbg81FFVw8GjPEMHsMnS/hWx8mVCQFy19gQLG6DkoUUfnaGVecKdzsKMvAXMfiBNJXpIz0yXk6hl1N+ZXrqAjpGW+8vzWnqB6aIhWvYO1PPcc7Hjace0jmU6U2lrayM2uL15dEYy8/E6j+QlFegqa4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753616994; c=relaxed/simple;
	bh=UPfCFvJ4CfS8tHHv/9+0DSE8hhrIpPg7Yv8BUSFA6w8=;
	h=To:Subject:From:Message-Id:Date; b=QeYulzVslSKw7z98ulnKay9Nc1UK/WWfu9f+kidxON9RYqhFK0+J/u+YbQAFCrUJDcpRtjcSF5CDNO9hvxwfMQGWqCxZCqg/FxsAfRA9j+2taodJ7V4ypP8M5R5xYWN1uZlCEa8F/OoNaCNGks9bNbWfdZJtPVLyyT2sBYsuJPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tlFR5+Pz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tlFR5+Pz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2532C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753616993;
	bh=UPfCFvJ4CfS8tHHv/9+0DSE8hhrIpPg7Yv8BUSFA6w8=;
	h=To:Subject:From:Date:From;
	b=tlFR5+PzIEvD3sCMmiqGZoUCl4x5bvyEjKW0G8h5T55eU/y/xektgOxcCI2n7t64L
	 dJy6yrVP7bdKtLa6ApsAHLS7fIUmEST0oZOts/NhOqvC6kpLqa4Kmhnywq2pm/ElPu
	 1nvj6W5i4OaDFyAuhq8SYcY+67DkZYJ0I9IWA2bafq7RMNr/5126aud/nZVnYoWH7C
	 o5DpCmWttx/WWaEsa6AqPIKBOaRjfNDUp+7eZJ0Q6bLCVeO03guwJeop+AIBu0PUt1
	 3sCDGz1gXWbowsYNsKKbmRlsZl6KfRJ+91xcj7Z10oN8P8vVN8JiVC3YDe8KF9mbCg
	 FVgtQyIMPk72g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8BBC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175361699357.23048.3223351525060018873.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbbcf77d51f29af724c7c2c4d4614522c2a8782b98cb585e1ff6fcff96c5e6e9
Date: Sun, 27 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753616993
