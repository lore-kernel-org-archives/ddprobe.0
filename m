Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7541991C9
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752269994; cv=none; b=obRl7tQ2G+DIvfSl5TQv3F2MYoNcPbrBSXlNouOu6g/noeayhWHwBUOT/9w94LpM0V9HhGTFG61R08j3gk4lIcQfgrSCU7dT05z+ht2g3jAQi3ClTVSodFV6fvCfE3Py4WFW8L8Lr/jVlAZsM/0rOZ9bMAZRTB/rQKG0JQhlHQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752269994; c=relaxed/simple;
	bh=JwnxOHq2uNGrLWuP2XLka4S61FtS9oCCwRoOnNUBCQU=;
	h=To:Subject:From:Message-Id:Date; b=IJQX1LIkfUiy28GRDCfZm1HzJeWkua73mI5T15JKL0+2eHCaplABmbq41vEQZTWQcmC5Gx6b0JaeUJoYIxDBADGgqrWYmMy9E6fMsZ/pqFdrBcXNEVBBGlC+kMW4TV0j4RMyLxpcacdkOMpnix5ZcthfIoVJaa9Vr2dHUixgJgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVVEGCFp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVVEGCFp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0370C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752269993;
	bh=JwnxOHq2uNGrLWuP2XLka4S61FtS9oCCwRoOnNUBCQU=;
	h=To:Subject:From:Date:From;
	b=gVVEGCFpXG7A2rwCSu+OkcFk6vkwz+WGRgDjgZYtIY/DhdckxTNvad+FJdXn6YFK6
	 9EsDcxT6gb65QtMsOyytXBTFVFlbHXV/LIAprx9VapfX/mTN6OCEuBZHcDb19WQezs
	 98LYgjs+UAgeJH4WcIR2vFtK8B+GWNMdLWAlApoUdt5qIUHrnXMR6C8hi7vwIjlE6D
	 lG/X0poAWHVjwUCsRmG45pdKgQlOUISwsKqPt3Ao3uy8SSsuY9pKL1K8cvBqKY5Hzl
	 NE3rlhJrMk7rDKdAQ+px/pmhka92bzrMjOxHts2qCIJkSaUgjh09v5YdXcROv7Rhh7
	 4/2wXXG3aRCRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F016C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175226999357.15544.5936157374484721090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3d89274c208295ea95dc4c19a12ec861da5b7575dc3b762f45e32cecababff4
Date: Fri, 11 Jul 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752269993
