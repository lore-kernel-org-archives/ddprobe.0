Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1935834F263
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771773894; cv=none; b=N6rWl9UMG1Ehk0cjb2sbqGntbEihMyaHeUmW7BMlygCX4vipibbK73TrUTgjnvVNgzjp/fSpeuz8kUfvxFv2h6OoFMrIjvHm17vC/dYgCBoTuTtab4Mp7LVrGvviY5olzc+s+y5V3I4qUm1IFoTaRgrM7ZTVQaVMtFQjzstP3kQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771773894; c=relaxed/simple;
	bh=BgWbijnA3b51KIbxMeR0wdsLQ5zpQmR2XCAZ6YsyoxA=;
	h=To:Subject:From:Message-Id:Date; b=VPqabZYmN3Dt6Z/8itDtWB6kadzUfLheSt1MkJP230meJiSKvdjt5K+QDXgjwYlrFtq9vNzGgnwLjnNhE6Rmp/U7U7mGQyniWimvBYG3ulZUraGCQ9PKq0puZnVAlzcvgKFZL9dmQJ/jKOUue5yx7l3HMmzOVGiV/jZrr0k8R7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYzu197B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYzu197B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE252C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771773893;
	bh=BgWbijnA3b51KIbxMeR0wdsLQ5zpQmR2XCAZ6YsyoxA=;
	h=To:Subject:From:Date:From;
	b=FYzu197BY+micfU9UYy+lGpxB0/UHX5ofMG+X/phRYotWMToFJWTWDeTIeZeEnICH
	 AbzqgR5X7D5/G5M0EgWF3W+GHbJ5BUxOPVsBAXaH2HrTsAk2s+bQc4ca6t3LI2i5i8
	 ukoAiImUh3I6D4Bx1KhsBqTcsGw0TEQtvxD3TEMBxWiitaRqobl8uMTAM3VV9lNsPO
	 0TkbnZgM2FxhTXT6/yHnWBANVHs/umTZzGls1dniNe20kUwFt39jg7Nnt1xHNBsjhA
	 dzmcr0OqFQscl+H8phg6Kqf9BsK0FpUufwHHqdmlTn/pkfSOBRXZ7czzzh6bj3FbEZ
	 JZFFaUy7/FILg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E78C636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177389358.30352.6525500001445245687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9732f7a43d4e1417e80e508606a6c67f2d71b88445ba92f6c144b0f87fa7cd5
Date: Sun, 22 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771773893
