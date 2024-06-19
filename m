Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574BE153561
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718815163; cv=none; b=fVENr2o8CnQMp8soHwkJDUfpBVbGFvvJM7+42YRBo6xhZZRev+GFPn5Q1X6ZhO3iyAORC8vApasru0JDHIjK91tJLg2cTH+GyQbUdvTIFJIpLlfdONsC3VxEC24iAahw0XcGC4f724QU74CwEUZ3lo2/9Yv9OvLrV+1lwIBUyhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718815163; c=relaxed/simple;
	bh=YysZw8BQxK8nAXgDvn/8vBl2KeZjfy4LuVnoqDetSTw=;
	h=To:Subject:From:Message-Id:Date; b=MPU3pwkRilbjWP+wkeBF4i6G/3bD2KDlwIIUgoe7hveIEFsUw2c9G21Ogh0ZTB+SU+FgLrww31LvW50uXg3vlnsuofu5QzS9+8QRha4LA2zAP0y6JMHsSrGhtGERRs1AYhANBSa/6WxCr+TYijRpJ+pRzsYaiF8mGpPv3nyaACU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NHhk2s7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NHhk2s7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D743FC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718815162;
	bh=YysZw8BQxK8nAXgDvn/8vBl2KeZjfy4LuVnoqDetSTw=;
	h=To:Subject:From:Date:From;
	b=NHhk2s7Y0GIPwl8xGUXAld4YFCVloFFjtNHhIvonyYJKsMk6Jyrpr2UaXSCCWyudW
	 7bblqEtWDzLKm+DLaAhbyKRJgD7PX26r7rn3hHB6s7i1RlIDxnB5ptOpBtStothpEH
	 KPfXWo6by9Bv5mFD/zoUt67JmZ6q01iZIKTYLPBchjNXIsjNBO5kC9xYnko6oC+dpS
	 3y0ZK/IlOqo5v0XYIGS/HkLdMWJE7X9W8flIuDI01MnJKqrBFR4YAeYgZsllP4YOMe
	 Hq9hlopHFIFAwv5brWS88CDF6YA/+oKU60imhFy3nQ90kpFD8YuU403Osg9j1ELIrc
	 A1y/u08VxcC7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC889C27C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 16:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171881516282.17216.5843563874550841784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b837dcb322a21d824293dbaeab5c5fdc25d7d814e4b8d73225349445ef765e87
Date: Wed, 19 Jun 2024 16:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718815162
