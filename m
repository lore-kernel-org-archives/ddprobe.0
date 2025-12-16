Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A527521773F
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765866175; cv=none; b=fp0A8CXh7hpFoWkOt89H/PYQ3taLz+wxAgVMivwG5KsmLZCynUiz1RSBYU6OE7vKz7iV/TQu3jEWYY/pHaCKgKwPb9+3/Tc1Bi69QpbQdu8sQ2ey5f8u+yPimnwyXwI/h+XxIn8hCA3F5+zcr+/dEM5JHt7ynh6Cqm4UTniz+zw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765866175; c=relaxed/simple;
	bh=heqcVaN64RI5EXC5FjmyQ0ekEQ6TreQ8PU/Z1lCnLA4=;
	h=To:Subject:From:Message-Id:Date; b=aAubYptSHZS24pX27oxi7QTta14D/zx9QTDTlkLw1JzSHazLv7YVJyuyLgOMZLPFAT2mklnJG8UPY+pK/fSTkzeQKU+ivuMPfnM4h3Zlq+rjEDYqJdVDp9g4QQ/q7EDvfLjjnwdLrrNdfp3XUVYL0Wtn/QZfNRbpAi7zTMEr+6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bZTOvOOD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bZTOvOOD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE5BC113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765866173;
	bh=heqcVaN64RI5EXC5FjmyQ0ekEQ6TreQ8PU/Z1lCnLA4=;
	h=To:Subject:From:Date:From;
	b=bZTOvOODADWE/Xvzm7CVWfnktmeI+u8PpyL/hHz82AyZSi9uYGD+yndWYdARhUfc5
	 vHmM7hFpb+VVU6xSKvkFoFAjSMVcBH2lfRENrUSdgDmzgmz1YTH753/tLmLbVsMnyy
	 QcUEF7Fp8nveZeSgMmeLkqSI48QJKSfNOpGOdgSyxLsc7vRsunY2L3xHE6lncyodv9
	 udzGstORya7LczhFlZdMCzLJzDXgztGFB5F66U62b/0vwx3ryIZuKm+N6L51G3WkJE
	 4WbDKnYrAClnajvcGYCQOZfnxTUeKCVW4XxjKb55Jggy/wbRpYnL8WdaVQvw40Q9PW
	 ZzZff+Xqd2CiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9108DD5B87C
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 06:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176586617358.27623.9076676292754460228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2758487804b6eafa11873b11ea1af51b45d98dbd659d90d8ad0976a3c95d95f6
Date: Tue, 16 Dec 2025 06:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765866173
