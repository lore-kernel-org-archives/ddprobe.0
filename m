Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327EE18FDBE
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765045374; cv=none; b=aqy3G37iXgAiJXdsK7xqKbXgbEG5a4P2it4AFqiXpWYkGxz988oj13me5iAeZi1hN/BTFapBnIi4ee0HhxkAX3XXERz/yowwT9BU9NC2kdZ2KSrFQwXBMuQppAdWtj0B/T14Qqh8E7W7znvczUjAYtOS98WG2MGzqrTfgnHXtt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765045374; c=relaxed/simple;
	bh=NeCDNLG6IIIkTSRFo7MG5eEBvsS0OKJeis1sPNj6He0=;
	h=To:Subject:From:Message-Id:Date; b=mCbxsWhFTdngwA8zd8GIKVIE/2NO0vOj+6I9uXE+ykwwcSKiBaBsGobZH7+Hq0BG1J75u3hntbOXE1Cw+ZenYyG2Y5ahz4G73eG0S3HLvaOJ7Wrlj9AAeJC7jc7sEY0/SsIOKpFmyV6n6YevtwikWpgrme6Q3jzb5fJJRiFHWQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VzvlAMkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VzvlAMkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB5D4C4CEF5
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765045373;
	bh=NeCDNLG6IIIkTSRFo7MG5eEBvsS0OKJeis1sPNj6He0=;
	h=To:Subject:From:Date:From;
	b=VzvlAMkzzOuUMvdgkzz7FhexUvmstb1DRt6Pyqyeug6dPqNSaCcQejLNgRKFUoeNN
	 yzEERhPhHZOh0XrAzHvPWMK6Hw6mgF7IzdETYHz86kS9R6f4f+D5d/BmO4OcVlB9S5
	 y0TRUFo8opz+kfr9mYY2zNlr8t2vdLoiEDkWoIpotzCYD3HwobEJyxlIRutHta/UFz
	 Zo+Gceyk75M2L2bai4X64kq16OauvdeENF0QWXzwTQFJnkw/fZHcKKiNT5U0REVkaD
	 y1LN/0T3O6M3i0qSmd/EUmH0S4++OYW3dH7wsajcFC1RoKQmcxsnKUyqHoxDN7E3Rw
	 zOZ4RZOTyyaPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C58D3B7D8
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 18:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176504537358.29167.2368921034991243924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f19ea9737a5e4b33b57738b825c28025749ac457daa6ed1f695710c093dd9e58
Date: Sat, 06 Dec 2025 18:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765045373
