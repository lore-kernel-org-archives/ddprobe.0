Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B8C3B1BD
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763917314; cv=none; b=B9OPNeRs4wl1I3HPi2UNZKM/IjASP+MTFahBKeAXx2IHYKoV3nH+uV+wwN+RYQ6MpIbnlepMk77yIzb962ono5vhUEF4f+8/rA9W/vOJ7uVJ01KQfB3tcdDt2eSxOlXZyahs46ZL9Y0IpAD3PQckfd8o+kPbmDM9P+AK9Rk+G78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763917314; c=relaxed/simple;
	bh=DHIP9RJ1eaZK0iz6/igIpWUv9vekBIUOGW16Um75Woo=;
	h=To:Subject:From:Message-Id:Date; b=AW1PlFbv6bxijwpZqW9Gzs4wwss48VPlFZOKt7e0XJuprsarMJ26yaY4Z2nnvmaWN5coLxeJmUzlFnMJAf7j2uvQNxV17rYOxcahc6esNoFsl/4DEgusAWCqsgOdFoCYHHyZnS38u/MeLaYL90qCNjHPPem3QtIxXXsKit+igEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9n/Ta7R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9n/Ta7R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC564C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763917313;
	bh=DHIP9RJ1eaZK0iz6/igIpWUv9vekBIUOGW16Um75Woo=;
	h=To:Subject:From:Date:From;
	b=S9n/Ta7RaHUwlJRKA+3Obq6iEIKevP19c6oYnTUPDL6SmXphzwGiD3grFIpWQ2JzQ
	 ygHQZqvp3Pi83TJ19e4zw4lC0AkdyuPFdh3GI4hbBdtmvE2C4dh2pHz5D3+MayNh+W
	 0hPkOzUl9J6gxbc98qvfJPaLg4ozDWZG2aHgtWtzpOFMxAeoxwahcz4pJS8OzZG2Q1
	 iPuyR5747ldQj65cfN9vI5OAtpAW4rJNoOS3JxeK5PkNbbMdAgn28hL+28v4IzUyjd
	 QSuCUcSQcvghcrRAZNjVNqSXn8sEKvFT4xvt+9KkpYW1q0SfVEjkZP+N/Z+u4do81k
	 TFbMoMPUvZC0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99489CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 17:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391731359.13363.16314577748404706397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8521c3d46616b99e7f1f3329f3986b5fa74b34c39c036f73439f152a6220fb6
Date: Sun, 23 Nov 2025 17:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763917313
