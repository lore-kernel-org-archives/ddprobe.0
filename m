Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8747F2EF64C
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:42:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765831374; cv=none; b=hxCCv4sCYWAfCzqNOysuxfKFallUGZM2lsQ9POYH/GrJXL7KsQHlLBfuFpqDrhiwY9V2qL9zHLcCUBoaJoyxdLLfmp/GazbE3Mxrd98NU4KqgMl4UghisPGvb+ddSL07/XEgMDH/IzYVrvCBCTn/k8nOpkjaYQghObW2ulwBEVc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765831374; c=relaxed/simple;
	bh=3Xo9E7tQFqf3utgO5n4WZ1csFLxc+wRJDnlTpoDoGhw=;
	h=To:Subject:From:Message-Id:Date; b=F17V+e5DgPy0vlJ00tDIdrJomxw/V82u2lXBzA0fGymYbSvQvr3ULRmxPoWkwRwwxS47+NQm5Y8PgNip79YsrMeBrwAd4WO7AwTWmAEhGnM3RNorPnSARzIk51u6FtKYPxLjljF5Xv6xeX84xyilO/x+c1US8lgZIH5dW5WYHCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bh2otxVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bh2otxVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74C0C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765831373;
	bh=3Xo9E7tQFqf3utgO5n4WZ1csFLxc+wRJDnlTpoDoGhw=;
	h=To:Subject:From:Date:From;
	b=bh2otxVDAWZhaVFSsqMYa0QDXO7wJCl3TbpMaZT3mUACjy3pwPc5GdmqrK1s3J0he
	 8/wMbbSRfzGplC7+8vhFQHgpOn7NTOe2ydAX4v40DO/cmuTJ1pdj8tbapyb5Y8AjVs
	 yNHHdA011jiazD076WzsiEflV3yS+sRUsMkhgp838IuQ6xBsfu5kPqvq796YsSBoO4
	 ijTefMIIP8ki3STBuadglpZ6slQxD807apb6v88PxpELCbES43d8GJ4wJcJUh3E9vR
	 5XnSJ42ZsOFdOOvs6grC37x/ej6RzYQyMIREroearQ/eaVZcHBbF3vmzqHHx6gIPU6
	 dwtoHcX53SfXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9525AD5B868
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 20:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583137360.22916.8074470688840962724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f20142a2cc165dce55928733cbe1c091095144f15e915a6600f4a291846d284e
Date: Mon, 15 Dec 2025 20:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765831373
