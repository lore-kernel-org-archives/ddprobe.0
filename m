Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09045274B4A
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772249694; cv=none; b=KHRPzjGISF7F3rljP0JTm7H+HBy6tXp1w8sn2TDccGAOUog2/Z6+W4Aa9Uwro4M3HoY4iRYAwoOINyTLUt1u7en+Y6QAXX+1DrCsYNoe8tYYUHR3gYF83bIrIHw7zH/rBvl5Pr9vzAefySNox21qE/hdRf7Eq+UPWvhB9O5F/LQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772249694; c=relaxed/simple;
	bh=jdeJK7efvwzzOjCIttu9/9SyAKUDHv3wpxhGs3tSrEQ=;
	h=To:Subject:From:Message-Id:Date; b=E1tv9DgI1onUzPWNp9F8Av3nwkS0+O4Hg+Fm0BQKZ8EyTmZt1aBSvx90tOJsnlqdeCZlwwH5Md+xxfIUJaMsWdH3K/vKuhQdToUJTTh6nVOiJgIoEQ5J0+q8pdzK3BoBE6V9fACc9U1hvsNvm9QRO3d2Ah2K0XTrzmk9fry6Sa4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghOE/5S5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghOE/5S5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DB2C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772249693;
	bh=jdeJK7efvwzzOjCIttu9/9SyAKUDHv3wpxhGs3tSrEQ=;
	h=To:Subject:From:Date:From;
	b=ghOE/5S5u9jF0clsSdP3ImP8TC0KdkJS9uQOaxA5lVrUVBYzvUozdRHPX2WM5hcG2
	 gLIM4qHEnC1R+TeeHfWuKVBxAxTLVh/fqBP/NmRX8TZviA13ImbQq3b9jJvEjazBo2
	 pSzsysqmANoK0Y1+4QXLlU3N2cBMcp0+CsZQasSb/dX/3w4Di5k6Bnrt8KSCKlaEkJ
	 Q4xwtfela7eP1g+rT+eV51/7daiQYybcSCx1ktiPPjHafb5oXrI7OQ0P4VOMxXVlNV
	 /6PE7ZwGFSJqtH8G4N9Ps0PxhkWIdWpqEE7jEtcPwKZzDae/RvOgXfYGRLJvqk69Au
	 GfD3VT1UK6fdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCC2FEE4C1
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 03:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224969357.26265.10202444584106042351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4564d419ca6265b2948d739d0f0ba5dc0c28dcfc8500f981a59a58cc9c6a35c3
Date: Sat, 28 Feb 2026 03:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772249693
