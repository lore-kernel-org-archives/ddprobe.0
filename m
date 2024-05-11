Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7058C13
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715406143; cv=none; b=ZQGdq5RTrvqQx5Drvzp/VynvE4SsJHcLfkuuwMvf9pIVJXPlkCIaWdrrTW8w8IVRgtxom68sWJvnazDuBqpmaxSR0NOGTZOpEXMclJtZMCn9RKX/pKFdAUdBzrQMQTX6P5zFgZ7UZ5vo08Wk3wQ0Z3rIlR+1QYG7wwbqQ79hm50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715406143; c=relaxed/simple;
	bh=Naxpql9U4d39V55+iZ/nZkVsxlFiIz7O3PIon4EinOE=;
	h=To:Subject:From:Message-Id:Date; b=lhMDpulPjM7F86MSgYtBKDrb3yL9tLgFwQmKy/qk4T8s8J+O9nOmPosJXQL2sEzLDC6ULRtQ5MSMIw1RQ8kBmRMFIsXzg0YTpx3sBY8UlO1D6Fe1qcVhqVf2TSkFsHO53JiGZBsH72JtoefbXrPA0p8Cy3EYqQgssg28s7+TfCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FH5d2LW9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FH5d2LW9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB640C32782
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715406142;
	bh=Naxpql9U4d39V55+iZ/nZkVsxlFiIz7O3PIon4EinOE=;
	h=To:Subject:From:Date:From;
	b=FH5d2LW9INSu7x5bZk35VKthLWEO/kD01DH/B1sDuasfkMwiB2oJTIwHc/GXjQIc1
	 /GPyxNdrCCBcWSkzLHv1vD949LNHGmS59pC/hlayab7u4aX2HWkgmK+W8cu0Pqk8mv
	 z/2f2HIlHbJTf6+MXH9159zbVXkrVbIxoBmFR0ykHYMU5UE7xTlNGuT7p5h3d1+mV7
	 rd8dqyM8EVDFBrXrcxo4JkYyzMY22nb1J0Q7TTTseh35PhxFGhOK/TprxGpiO31RGi
	 0FhQRkY/gMbeucoYPvWCoR/oH75qVBicd6X5nFhWqqh0cSxLTgToUYtS+LO/LqzTIi
	 KMQKzLR80k7ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2563C25B75
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 05:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171540614278.1735.1452097917386503110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150fd561ff536fdbb83aa8275501a0a522e96320d7b65541677e9bba0dc587db
Date: Sat, 11 May 2024 05:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715406142
