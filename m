Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C867B28A722
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752133193; cv=none; b=ZagJpfB8h4gj3XMirtvZqZ/JiWHRSgurGLH5kAjF7JZXKmhlhjrSDd5UPILgEM7yyWeFq7JV5uLC6tIVlzxieXG7dWbsMjg7zbeyz+6MXguIQhRb+Q38mtZMSKOEbKozKkoC28iWUuNANvX1ai2ChB6niq1+X+p4z2TvycRnM3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752133193; c=relaxed/simple;
	bh=RnJCBpatKd5lBs55mzxJO9Egrenydikm0NWVpnn8UMU=;
	h=To:Subject:From:Message-Id:Date; b=MKM9KLVm1c3FBbvCL26l/Q1q9etVqVUIulgTesocg75SkYV2w7mBjRPDJGL7ZdjCTddV49/IgS788N9SbGEcRDpYBGoSSx5X0EtyLkktEKRPd9d0EzzoNAt4MrQfQgoOSFaoZXnUEiXICVVjAZtpIUUZAnsKjMfN2+B9LxfOUQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IsJUzPNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IsJUzPNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E00DC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752133193;
	bh=RnJCBpatKd5lBs55mzxJO9Egrenydikm0NWVpnn8UMU=;
	h=To:Subject:From:Date:From;
	b=IsJUzPNrS3YQ0n1bMLYi6YOE3V4Ouk/DfJKW24JM3wJo4XMZ40p2azRzbs4eIOb3D
	 R7cpgK/Dsf54LUkAhMmRdJyAIxhYHRdAd84HgOUP3yWN9mKYzzy3k2Ia02n4M/PhGP
	 oqeMpTA5FPnfrSQ7hJ2UttIvr2MmQ61OaEIouh1wnVfD+It/eHn+ceiOc1xJXGtELD
	 IhFInUBcrsJ4ESl7kGWi9RqmacO43PFF5u/pxvXxs8TLu60H5ANePpep+W3oNnQDdi
	 Pyr05e0XN8fDlHHFx1zcTiYrr+BaWoULYorPRXK4e0hCWAacxlmg2i25pCMKHr9SGc
	 zywDp8Vl5n2qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC65C83F18
	for <ddprobe@lists.linux.dev>; Thu, 10 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175213319357.28035.306562378903373125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592502f5028a6fa929b02138757e797696d82b6efaa0a1519e8b24b0448ac048
Date: Thu, 10 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752133193
