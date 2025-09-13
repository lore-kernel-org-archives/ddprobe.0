Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE646FC5
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757804394; cv=none; b=aMQiLsU3W7Qx1Xj70HXpg+4sHWqhVC7u4deh+FJ2AeKJIv+4h0/LiWGXZ7oBk22kM2tTYsMH/D1HCh46OMRN6gHwqSI5iwE1LcZcvHN9jERKYWw+GZsGhZRxZpumSxVXMb0uihVrps7zgTP1Fz2hEp5vrv3zyYBN9Wos+Ouu6JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757804394; c=relaxed/simple;
	bh=Xv4vIm4dM54+NH58WViiu6pC9xuSqoxzWVfs7P3/4+o=;
	h=To:Subject:From:Message-Id:Date; b=TmDGmgY/H6bM4Fhdr7VTL94XIxJrg5/hLsOSFYFOLeyztrN7bguuErRlf2uofOZjnoKySdesOkr9yZ9n2hgIm+v5IuIKXI33Xq5SK89lOuD3bUMHTDQ0NLKngeftWxOYrEdKALab2EOJDbjdTogO9bMI59gj8vIA4eRX4zJXTwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XC3aM585; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XC3aM585"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C94C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757804393;
	bh=Xv4vIm4dM54+NH58WViiu6pC9xuSqoxzWVfs7P3/4+o=;
	h=To:Subject:From:Date:From;
	b=XC3aM585fQHGbAJBrs+4ea21Wezw5FaHsoBPoVTQs70Z/RvfscsKiV3hX2luEz8OX
	 vuN8gtW7Ws22xwj3MdB1TL5PTzbg0qlNuzMH4BJuX0Dv1fjA87Na1jcdo99pN2sWKp
	 GrBZFusv9Z8kbe67lEQb6aUV+pjzEonP8592LrZp39JEX1Dj04p5eg69JRiX02g7UZ
	 yMBi7veOncBTe5tg/StseLi3E3FJ0I6VQy5+pyBGNri85YrbPZA0OzuOWSdH42loof
	 xdZ3Vn+NBV2gQnNY+XFfNGeGDCOTdAWqBWt1u9Xm3zxubNLegeL0+jayfPukvblumz
	 CuFd8UKTstRuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9327ECAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175780439358.1436.284531869411721620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c31ba3038401598d1764c2edded698e3c1e518a5220574c27ec82464a9924e1b
Date: Sat, 13 Sep 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757804393
