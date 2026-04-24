Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31312F3C22
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777038453; cv=none; b=Yha4r9Gc83DmY2GJ+NbQg9CdmhjQdtLLE4fqdbTWtfICs2xctNeM9nV0LXyFjhG2q6KJ9EhqFBk569ctXD4IscmCnrHDs8GSMoMSLCbX9P/K//Vn70XD892XqIDaOKhCYgFrvB9RhYd+SYNQv7b3teV7RX8IIfSHmT6AZaT6zjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777038453; c=relaxed/simple;
	bh=64eBAe+taHWpxETfvdbhgNnVvnxsrY6bcMe5yem+mrQ=;
	h=To:Subject:From:Message-Id:Date; b=TULei4fWoOda6FenEaPQMxrF3geGh/0uTJ90v5E76O4nKSEbFHYTiEp9qtCnfI+ihgNNJq3JOkShEOanxjfxPwWrGKP63iLrdvtT69KzoAVKnP3GNB3kMVfhDrradU8u4D3F+723rXYcDANP/t1XuxcXKLczctYZwMS0M7kQRqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiHTIaaK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiHTIaaK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8371C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777038453;
	bh=64eBAe+taHWpxETfvdbhgNnVvnxsrY6bcMe5yem+mrQ=;
	h=To:Subject:From:Date:From;
	b=XiHTIaaKXtAzD1iLFFB+jkuJFyMI63HRIE5bHn0cJDjOUThbvGqLvSrb9DhDvZ8Dj
	 5oZ9YMftxxlFeb6Zc9O4IT5m+m1nM4jnjtOjZHrEDnbqRYncsX8+j4w2yWSs9JXEzU
	 W/ucaCYLGvLWxDPd+Dzc4uA3gqVG0rkQ9iK9ddHm17WGxesZA1sAhpyfSZnpctVQsQ
	 OxQOP30O6e7bMclJPCNh34u0oPZOaEAQPmY87fKkIMf/6/I2SUqed8DERCsywTSmw1
	 HT1D+FzOasN8+8yv4uMhJlbC5LFhiuafnjpPcTCnVZu5gqDJRetVSwbOKV+X/KuQOJ
	 XsuuoJ/cvZ6kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA85AFED3C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 13:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177703845368.14460.10710146777111566534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1c1cbbfe41c65e0e3e68c21e73d0bafa0216718282cc1e1fc6a9a025b839135
Date: Fri, 24 Apr 2026 13:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777038453
