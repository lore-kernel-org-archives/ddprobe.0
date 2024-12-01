Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87B71667DA
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733055353; cv=none; b=NLfL6dXw6iolwDUJcVjfg4rbPTrCgD9Fl6osrXQwmSg7KI2Mrq5rMtqMpRKDOr+j2sOqzJW47z2cNUlnzDK8AkyO3q7Cndx9CfAF+czaHsl4I5S7sYzXGdIS17SAubQ5Fp2chS6LWuqdP4GN/jn7i/u6pi6W3P4edezsVF69afI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733055353; c=relaxed/simple;
	bh=rqTqmJKhXd0Vgb2c2+qb4Y7ueS+LcWreTx1IVRqC5Lw=;
	h=To:Subject:From:Message-Id:Date; b=pxLB45H9deOqjyU0Nc/dnmEzQc869s7zQmooUcS2wRL3bflz0ibvXqludJLDax1zchK4xzlDINRoPd7md9mR/A331kMFM86U8rTdb+gzYFgXEZJHczmEPFTJWqV8Lp4kkiHADBkcgGs/OTFRuv1mKLgyMYYpQPUH9WYolOtA4+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmD2cE77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmD2cE77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE2EAC4CECF
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733055353;
	bh=rqTqmJKhXd0Vgb2c2+qb4Y7ueS+LcWreTx1IVRqC5Lw=;
	h=To:Subject:From:Date:From;
	b=CmD2cE778nSB9EH07oxwhIswVUUnAYN+vbXP/pVwTltwJURczTK1zm5UTr2ibQwAj
	 gdHxkriqc80Nk1FIVKriZhoW//tWb6X/xDcH0v41yZwejv1BwbZRSLWjYylrW2UuXy
	 aNaSAhmpqLCRjmS119FCn/lWYWs3QXsE/4/cRODeeEGZR/RM7iS5e1CfBUn54lksd1
	 aXq8ZAYsXK0HFK3jMm5AvpdKQw1HJ78AAa13UHDaN8pajWw7yA/0G6YJSqcaiO93UH
	 h5QHlYxCdGsYaCWUIwTh8KmEzCEDMV7L2EG6XNSG3SHUJU2GpVdHL22l0v0IT5MmRv
	 z/aQzw0+0M6iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A638BD4976C
	for <ddprobe@lists.linux.dev>; Sun,  1 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173305535365.4519.4247464855240916566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60fbb853560ecfbce7a44b422df0ee16e813d2ca1c51395be7212690783e5d98
Date: Sun, 01 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733055353
