Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC0F15A8
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726676154; cv=none; b=uTyByj4NTrr2+9UQnBb4A0yJmGGQhchO7SFENwurhYdwyolKhGdnwTKNigEbIRJ01rOtxjIzrQ0sz9ffioTehMNP9vBQXzVh6kM0SG9ZOja0gz6Vr7PCnxCV3x6nPYvQCJe13i5MD/XrGr2ui90MKmm2RYlaNgaJhMmT0l8wTg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726676154; c=relaxed/simple;
	bh=8FwhuWQCObKs7d5vX5oohvoU4tqMcJqj0WMjd/vHNTw=;
	h=To:Subject:From:Message-Id:Date; b=NK9SIBOL/uvaOLL4FHQvEvF4oOAA8xe1W8YEfo5vi2qhtKAMrB/QB4vyaZypSteL1v90jKRmerG1HG862z8l4rxR03VOfDB8goyKARnprJzXb+mo+NGajmoI0PtvDue0VLf8tv8mfeigaBf9c+ki8dIzzqjWuprg6n2cIG7YjKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KpZzQCb7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KpZzQCb7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15A0C4CEC2
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726676153;
	bh=8FwhuWQCObKs7d5vX5oohvoU4tqMcJqj0WMjd/vHNTw=;
	h=To:Subject:From:Date:From;
	b=KpZzQCb7El1QbMUrFbfNXCS+mDtf7WoZLbo890Dypi+pkaic/zsEbDF/EWfh+GxIe
	 MaoBjrrDwCJjpA66eloQsb+ADAQXJE+Ny9oyHQzZig4GA8Zj5UObOmlEgEFkd2xZ7J
	 G+UKbqmt1rHMh8V3nixcx8+erT2dIVwQIdby0i7H6GMUH2BtbvZfoBL0DYbhvOn2H+
	 OmTUSMdLePCcswnXFpDbKjRuC5lpBK9j/+9sReA8gA3SbkzveWZIaReDFXP4Crw9Va
	 pKEdrYsZgRO9QxutgzHahN6fa3S3/uWm6ktKtht+r8V2pCvgACilfhBCj4tLjlWynn
	 whagkYF/1eooA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D71CDD543
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172667615358.22310.10278498536267233959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9be949a4b487f9d856a817da526817d52e328e6c2d6b67a427d8caaeba3d8551
Date: Wed, 18 Sep 2024 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726676153
