Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EF817E4
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738889754; cv=none; b=C7XWsb6GG+tYLfQ4A/XWw7ZscTHIn95lT6AD9GlmOhA7qFBqZNy15O371SkxYIogUAqBd/Eyy78t/nb6gBl21q/M+0ziderBmGeI6nZSCJVlOognryTRvch1hi0SNB6J8maVB82gIWrGw5MJuZIscbXyZarNK4uhzj9to3/bRDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738889754; c=relaxed/simple;
	bh=6N0q++2uvnJ2V6Bsi3fUWnR7qwj37tFv/nTZ2Zo4I28=;
	h=To:Subject:From:Message-Id:Date; b=YwZRfpdb8C4dKy7oq5/P0KZua5qjAU+g5hlO1Myc+Vtzw2FglEHPfY6HZ6D0ekh4WS3Np8CkMYD1MPq9CeDGcKTVjpAPYmkgwg0rKxsZFOiOlyIm10x9Bg2zURUds3RapceBh9H2aoA09Qs3CBceOqePHDCuVMvWsPYQK2e4G0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gmq2su9/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gmq2su9/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC620C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738889753;
	bh=6N0q++2uvnJ2V6Bsi3fUWnR7qwj37tFv/nTZ2Zo4I28=;
	h=To:Subject:From:Date:From;
	b=gmq2su9/Un43m8Y2U2LyEQd8paBUuk2ZY2X4dLnEO90mAJwngnmLjYS9sHFrUtklz
	 awbFlhdvAHiJpRd4+dHankx2BSfOSkDL2+LcvRQSz04Co0v8+880A+28Qw1Cq+ik6T
	 0jdAL6NoYHgTWFlBe6NMDG036t4Grd/Jlgq+6dD0KJ59gjp/NJj5IZPcVI6mF9TMVv
	 gCHrTvcmBLAP52xamz3He8eY2HJ1QOvp7x0rc3qNzaByn2oMFGGYJqag+wEhWvTXQJ
	 ehG5VcecVu5hfj310JdzYecHCfaix/43+GRyEP8omAquPnlq0uhnFSazHZ9kI6XnSD
	 BN1rEfdTpXy4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6930C02194
	for <ddprobe@lists.linux.dev>; Fri,  7 Feb 2025 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173888975365.11757.11373923493171415381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6104c107a62077fe448e625602bf1762a69ccc581c81509e56099b23c01d47bb
Date: Fri, 07 Feb 2025 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738889753
