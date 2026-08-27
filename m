Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 434AE345EC6
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787865634; cv=none; b=UPKE2UTLEYxfL7AvPaDN5ipDIGYixCdgaehl5F0goT4+QJ5pnDKSNYvJObGDE+6coQkeLmnjZOqpk7STZ3vv7k/lqO1elwZW6Ht1wtaTsOAAyHbUmQLYYeWr2sFFI3BnlZ4AvO4DdYlu0PnDz1vHZ3UjiWKLzUxQEJ7vNVRrOgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787865634; c=relaxed/simple;
	bh=of3kmWsy+os+FnBg7JaCJbe6e6xtoMJiOU8rTlzJTjM=;
	h=To:Subject:From:Message-Id:Date; b=TypzJPiOgoZo1QwXhPIMYLpJgO2OMaySNUEPRGyCRRAVH/f6pb5whHGcBlW9nqcCYL/YEaUVGrpMkoY1Fy9xM1wNOV9ubsVWIStRyoFsG1Jt2LyZeqgOEG9Yq6Y3UeCAHKPm1MRvm94b4UYPm2kN4EN5dAJ1IWF89ymS5ThDmsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rNPI+hqj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rNPI+hqj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC50C19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787865633;
	bh=of3kmWsy+os+FnBg7JaCJbe6e6xtoMJiOU8rTlzJTjM=;
	h=To:Subject:From:Date:From;
	b=rNPI+hqjQPHkJBYasHArQMlcjbU/xTJNdkJFDnSkEvVGR4zivLYGAUulDz+ts/o3X
	 KmziiAVsOuc5EGhFUgklgtUjHGKrQhu2XknHhsXC9qDil23mjDt5zZeOcNCcLw8vML
	 ULozV9SJ+oTPqxR24MO1S5WbfBlx/GBLvl4C3belLul07tg5WZYMjAXbcZSWifcEhK
	 0vKRbskIHBlhzgla03v/cRx04Fdrtdr6/Qkn6/wvdufwwfrijnY/2089P990Lb7gMP
	 5iLJFGDgaoxD4fchnAHzWZqw7P6m7+2xsHztcLHZ1saDRyvQ8Z1+Px6NNNQo/8WdqW
	 MuzayFtlWoVzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E5CC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786563368.32200.3274769270949603344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6eff65caa5348f17b80e2304c7298fefce4f6db90add200a79bad4a006483202
Date: Thu, 27 Aug 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787865633
