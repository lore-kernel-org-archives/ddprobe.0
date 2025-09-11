Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2209622AE45
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757611194; cv=none; b=B3daZC30unWNhBsQkFrxuPczHTGStTmDEnvOvswVpMYDoGmp3LOZvoV3X/jCiKtP00XM5CckRvQ5r0lVreouPW8o0Nn1cz+8q88oEsv/+VdDE03cCUSmw2L5F5TaIZff+O98JuPffCZMDKKcgQ1FbGut9jWxmBEL3AbZn4liXLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757611194; c=relaxed/simple;
	bh=X8uK8rstmHaQjTC7x7fTeHwrwwrhh6eNZ/NiRwtSqig=;
	h=To:Subject:From:Message-Id:Date; b=G1TcKF1zwWNJxY3VTDsJ7fUuPkgeLy2DFwE7U8USFcZIDwQTesegDbvQV/g02lGg8FRVsdjYyt4Yz0q+fYcM1srlO4fZOAYxigr/Oezu3VBCqJtdo+ioyX73AdCB6rbb5OaMubT3gBXX9+Fit/BrsvZw5uEOjDmy/o95ZwszHMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwXCOy9Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwXCOy9Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D645C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757611193;
	bh=X8uK8rstmHaQjTC7x7fTeHwrwwrhh6eNZ/NiRwtSqig=;
	h=To:Subject:From:Date:From;
	b=mwXCOy9YBrybW4lJ7IHGvyRuSCllVymUyaHFb46vMOPvFsLl3KCADRq9pMMFOZqqQ
	 4O/h96LeMYgXeZs4L6k4/91rHXliLSeDuRTKszkZjeZjZS1pmobpim72pp9iM5an5q
	 +OOUfnKpeuXMClPdtzYr/0uUCpKsKbdAN1qaUCjSTe79lWGg2RFs4JxBtXK+ZtdPz4
	 i4Zl4yLasCl2xEBLPemL08SS635r4PYiFPdYN3MArQgZ4kh11C7KV0zyF60P91R/Bu
	 nSqTPZ5cxnifUMGvTUS0ip6D6x/KW0+5obvyzz4AzCs/FJsEEQlL5FVX0vcZtbJfPP
	 hyMjvxsuBazAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAC5CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761119358.5241.11147142911635311675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7038666c150607ccc178b900c0a3a4797919efd517b78b664d4e76abbb406291
Date: Thu, 11 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757611193
