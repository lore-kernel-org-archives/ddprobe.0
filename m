Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C1B1DFE8
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717105463; cv=none; b=OgbFgOL8GIqk15ZODrQ1nEE8x6uegYwItjw/wDYildaBO06be/adCtVvTEdgILj3qb6uNXZZgkst9qiF9HDDBbNUG7vAWQbkSXkEYAJiXwb/ToSj5lTa6++Y9/lK/plbfqvDI+tRNAHkD0tsEW9jOXvQXTmoJefOZIOKJNQTqgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717105463; c=relaxed/simple;
	bh=c0pdEZbm41QT2bieaasTL/dkt7V4E1KcSToA+44LvrQ=;
	h=To:Subject:From:Message-Id:Date; b=S0OtRDDxCTnBjzLqucnQvSUPyoZrFOwhmzON4KuhYu67sKvdirKXuWhDzM2fxVlOmRPz/FFbF2GTgd58IwgZ/IRDW847QIBHlDFm1+0YB+oZF+24DpxdeUbMZKE20funiHIDyrYi2b7MJQxNyLdBhQHe3YdO6iNMgyM56AZwbpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5zJueN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5zJueN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D778BC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717105462;
	bh=c0pdEZbm41QT2bieaasTL/dkt7V4E1KcSToA+44LvrQ=;
	h=To:Subject:From:Date:From;
	b=A5zJueN7gS6YIv8jJhUgi33KYZUnwCbcUaEIXFuPLjigOezWs0Hs9y/XpN76ExrKg
	 X/3QnHqFibsc9r3kziiVSaFTJ0lrfgoUgvVLWK9aMj7kCZjVTnKznPrv+qyM0kH4Om
	 YvTCdABaR/6lwIlhMY1queNEBGZOUvTf4UKpiap6iM9Wc3x60cvmxLN9PxH+2gWfQg
	 gMgJnFcwAp6aphUcAaW6RfwHWxm3HMKm6YS4QMTY8oUuAC4iDzKbMauVOCxpXtpY1E
	 cAR1V96iMqLvHdGvzDuuDjLWKxOGgxcSqHWHnN0s5m4I9Wb9cRPVc/s0HMLhxtu8ef
	 lh+/UvMRHM6EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3BE6C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 21:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171710546276.8601.14646370895365398994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 412ea209d6e97e200ee59ae72dafaa36c364d774c02cb887c980e5bfc697bfe2
Date: Thu, 30 May 2024 21:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717105462
