Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B04E209F42
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740139134; cv=none; b=J4+2CQtTq4+bF80/GD7pHOvvxzaupZS7oEmdI+2ZTpOWYTLtcS1eOODpN/Z5fxv/lx4lEGyi18w1eLC2mvuxzldrVhNd03svT1Ar6j8Ncq8zPXbNzxCdrPA9U4oeEL0JheiJTPJtIr/+DPqPr0TnxD2bEwTUss6eOD2vTxlT5OA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740139134; c=relaxed/simple;
	bh=TW6bW0N3/UBxNH4nEq5zsNHLd4TtFOUmfohd+8XY4Nw=;
	h=To:Subject:From:Message-Id:Date; b=pZbPUoJO8IdAQ+6yHN8JcLB61FraC4mjXoczrxkwQu6Wpwj+LX06v3Vtk3TOoCkMO0RsZDdA3EJdnXtXfwC2Z0gk4nz3IuXdtGQzqoVevUx9mPOvJ8Fo6c+iy/0R8ndmwuNHk5ZCQv4mB4ONF47FApP6Aw4M1DCsCaIyRMDx5qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NWkisQJb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NWkisQJb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26D7C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740139133;
	bh=TW6bW0N3/UBxNH4nEq5zsNHLd4TtFOUmfohd+8XY4Nw=;
	h=To:Subject:From:Date:From;
	b=NWkisQJbbN80CZpNfRHp635J5Q+ipJZfrzl4qPr3c32SzWfO9OAn2fct6fp1jdQoG
	 kGQdhvDIO+hNdydwHSq01SiSGn+NFyvisbMUFXTbDgPyBv0ThYeL/8f0xO6vDNDAKm
	 6SiLz9XibpYSv9biH0pdyVaxSjAguv8nCMAR25ihG4llbEEnFDjuW7uPr39cvgmVLv
	 GdUUrKsxGF2H09IsRpcW20I7SZsJu6Mzr2zBugEdkvN1a3YzH8IfU6yflc+Xv0DRf8
	 mSBSQwIScTTTS0z2XRI5B0eXvGE0Otcx9RNdEQuNNcNo3IINFrIeChdD0qEQmSbwqN
	 IeqG4bIEsuoiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934D2C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 11:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174013913359.28933.2208994120241730963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145cb6dd76316854830391e23b7ab15f8cb8a3a40886e364c030636f29612e03
Date: Fri, 21 Feb 2025 11:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740139133
