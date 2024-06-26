Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45400EEC3
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719392003; cv=none; b=QzFgvk9QdTcQSwoQjYZl4RQ/xB+M0/VPIkfyyDcwq7Eo/QSEw/4AGqHl/Ta1JnNgJJz50k2AOhrjRHYYLd2pc5kdkQX8mRzAQZQFN9dCRKnMMSbhn40jepaVWO5O3erWA+Jrq0BBHjlERE0p5T+Yimtk/HYDcLgjsae8dVj0Mx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719392003; c=relaxed/simple;
	bh=4n9mvCcJSCHNxkGYusb1e13ZE95wnrqCNO3ngZAGbWk=;
	h=To:Subject:From:Message-Id:Date; b=LERBAsmSIVQwL2Brf5wiez1jYTz5Cu0XsEcn+Bx2tvGoQQDAKhWnRmsHp0A6Ub81fgha1NaJj86SwvDbBWAmlqLDfyEvDzYphYb+pYIOSvIXRqMRp9fmDx7KzCX/J+xg2LmguaZXy/yYqR8wAPhXO9hKJHr8sqbzIVwSfxvJIhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oWiFD6zx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oWiFD6zx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36BEC2BD10
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719392002;
	bh=4n9mvCcJSCHNxkGYusb1e13ZE95wnrqCNO3ngZAGbWk=;
	h=To:Subject:From:Date:From;
	b=oWiFD6zxsQQq8bHvyrkWkfS7SXkLPnJI9aftnMaE3caDVi4vILBjG1zY2JBStfExS
	 YEMI5idMOzHZtyGAP6ZW8JeesfJOzdLD0yoOUqmOFGzljFTo7J8qi3OXuUG0v9Xb7C
	 KrAdf9PVuh6+fh9f/mzYB2LQxwKrmXB+zzjX3stY/jwETIjffBtGhclWcvS7b5AVVD
	 HCSpPraMNHC9b9xQ/QugmmQmbOyOP0Kwds7fwhepSwKErqaUfYIWb0JCH0Sl2yVzKn
	 YXYBftuuoslMg3Nr8My8jSnYLSPKkDHTdFUoYTkWP4sNzlPmIxE6OqYpkMzSpq0PSM
	 XbOLqmGKK3JsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2423C27C4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jun 2024 08:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171939200278.29091.11580840049702585597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45daf9c4e9aae730964d7de2adf9f039d3c30b24385479826d6c1c017df3194
Date: Wed, 26 Jun 2024 08:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719392002
