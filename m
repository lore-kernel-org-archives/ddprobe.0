Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C597A23
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730333754; cv=none; b=R5SOvTmph+1LUpnJ7Bq/zmchdb4lpI0ONO7rj3fybvOP4sS4S22WAPxoaxstDz5QlR4a1WTh0vBxr91ZsKo5FQJ+7bjpC4OS3OJ2IClGWbNqCpDawgLaXiiKrMvGjmjYZMbB+CqwNn2Tm+vu3JlgfPitBvk5dlmCnXxTWQqtRy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730333754; c=relaxed/simple;
	bh=+vVvYlAR/3m0EDU7b0cYzLI6OSufvSSiCYFd/qy1r2U=;
	h=To:Subject:From:Message-Id:Date; b=vAgkGu7Z9q1HxB3kLTK8eiv3t+p6CJmVgp0DeRH/tBzJ8vGvKjweVDUNjeWB0TsyznC0A23dL0uIpgiqLNHwsOgI3vET7mEwDEos70Hv84xo0b91z3V41DopyLe7LgxolzfVKWD7yl8El+tGmpm31sXe4+ILBsgZ/zb5egFllP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1wuGz/3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1wuGz/3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9220C4CECF
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730333753;
	bh=+vVvYlAR/3m0EDU7b0cYzLI6OSufvSSiCYFd/qy1r2U=;
	h=To:Subject:From:Date:From;
	b=X1wuGz/3GUHo9xvMR1Zm4RMVOciX5+AdplMWU7A2Xp1SZaOEi85LKB0CNLCaxbzJt
	 Lu5YQCsjPvM4zKJfUea2iijgb5NAy1P8/65cpTUeKzb2sFij9NCX1jYXpt7dOOSyL2
	 292TsRLVMdTwm8jPPlKewHNp9qbyAXzvWrC9t7fYWgZC2NMW9+zdIEaqKGm479Jy64
	 NLAshj3v39YaN9XKr1uIspk9ZROTAd8Rtanqk5BDSC5merv5ie8VovlhGe6YZmK3nW
	 U3oYqw2QHOjrlJq23cuF04U3Nf4aXoeX/aSo34O9OPqpMiuF+JEZGcb6DcpI+cJ47c
	 +C5ZzL5OL9ljQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D6FD5CCAB
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173033375361.28764.1876417987616585636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753f86615b53694c64227821cb6a25f0fc6c329b4b3d4d186e37a018db55eead
Date: Thu, 31 Oct 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730333753
