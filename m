Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D550C5103C
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711611496; cv=none; b=teYUzYggArtTo5Dpx/GkggUrvBipYvnuxb9dnR3D3F+YyuHnYjObvdAJz5lYnIW/HIEPhWtFL+t+1qxJlhJXepkCyLUiLaLv3/tN1dM+UpMEbTRt0wrqRmvJq4VMbNnMsKmrLg2Np3n2t/hO4lb6r92XKIfzk+ryufTHfTerADc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711611496; c=relaxed/simple;
	bh=FSpqguuNyfuhWeesoorsLfVS3kIF/rcduHpqmBe9hJo=;
	h=To:Subject:From:Message-Id:Date; b=KSzsyB+HSqnUTqEhsm1TTUgTWcM2/ax3DXFVJFTPu14o+h/92kSUmhatultaMNSIX/VbUEpuVAwZY1aNUGqIyvKRgA8x6I0oXCZIaat0aBlA0Wt+AgxiKy70SNTUsyYW1svcnJDdNcYDLrei/MHCFGzo/YdigxyyeTFeb3kovZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjF8yKja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjF8yKja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78BAEC433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711611496;
	bh=FSpqguuNyfuhWeesoorsLfVS3kIF/rcduHpqmBe9hJo=;
	h=To:Subject:From:Date:From;
	b=IjF8yKjab0ZNHV3NG+FQ+xpa8RF2crtKuBDV0ygNdahCrCjHSD3+WzC4DnsPyUH9Q
	 yw8QSgI6iPVX2V8kqTXN1ytn7VYtPMh2orC948QEiLkffF+r1wUtWXWM8dtpIpk6jf
	 mzlyb4qImA7ZaNoKNuzlxAKhvcde5LTZfrQ2mp2ytrjdSLvftzZOaqI5bcwjuqK7Ug
	 xIIOZ2471++VSBgzQmmprx6xyBun6Loal92S4Q1lB8Kove8kK4WP9d8tTMAysTF3Lt
	 PqvLjbUi+eouL3g1puLscn3TmLYflWX1MBJ1RnyWPCodOltXR5FsTuQJ4UQ1exqH22
	 yn60N7yKakWeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65DF2C54E67
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171161149640.18763.6240103327787327375.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c80dd85aba872b73775073f61c650a9a7c490f39cf465294ada91e4a3927c4a
Date: Thu, 28 Mar 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711611496
