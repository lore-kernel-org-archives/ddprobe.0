Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4058F328B6E
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770697434; cv=none; b=cDdXgQhZaJyPxpA78HXt5oKDXhEc5v4cfQepP+MqivUq71VtQkGLa/d/upNs1oSivNWvmUBJfLUOvlglpDI7lk9uPR9aCInHLYRjNYR5X5a/v89A1VrTP+m8n+x47YI86L8Opo/Pw0AW8Mpbfft9OP2QQ08L/zwXdinhShdcpk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770697434; c=relaxed/simple;
	bh=aoxSCkMbrsjcpDNhYDOMp81rjhpIJuJyUAIjkDHwn9I=;
	h=To:Subject:From:Message-Id:Date; b=eL1Gsbj0RsYic9OYe7J6zk30QGP1zZbzZmjru8TzRl0zXKxMV3K/qbWJ2BLTV2DmTo2oEwsQVvPH3ysV1OZPPITekt6lEf2kYt3j1J0hfYHIJIyGHOe6ULt9a4j5IGYXBP8KDD21tw74ROE5a2PczHF13mLa4RvznpI3Hq7UVBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VmsptEA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VmsptEA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECA9C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770697433;
	bh=aoxSCkMbrsjcpDNhYDOMp81rjhpIJuJyUAIjkDHwn9I=;
	h=To:Subject:From:Date:From;
	b=VmsptEA6Mx3n7dUF5Sz/uHgXlLeYR1bo2I8cY1eASW0Hfhv4x/stqhH9e3GaYu66a
	 IdrjlA5vtgT6DFJFdHZqsnYynrwRiKKDtDFwDshnIYdy0YuV0KeI6B6hcJPsbUtWjp
	 ghpsiwwveHaij8oEbz2BM1UsESiiRwjjg7RUb/7N7b1TwIfyDKtIzaaV+kVHnHJ00K
	 w4mlH+7PbxgTqFwHsrXho16TIK2XgyMRxi7PLxb2csCboSKAi8WUHYG8qwmP9HsFf5
	 t3EvImR7djFP1DJ8loB9hApV38XOUNLxpDbfBMD49fUOeUAAsozobE1zbEy9y70Koe
	 fcZtepPi3j1eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF627E9463A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177069743364.7468.14792515405579925810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f62e958e2eeaec519ab7eb2c0bc7600d0bdd3beed81162996c2a9702b854338f
Date: Tue, 10 Feb 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770697433
