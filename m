Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A551AC44D
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759055394; cv=none; b=oOYGeyPO5/rwLSZAPLt/x7vmEecVEaFROeGhHif0Te+YH9PsmmBei1cfUJ3wzM7pRplr3VRa6Ku4ixn10kWFX5uGvgLiOcc4o8SxhDjTsEBNv4TSdGbAQcv9We7CpVdnV1nIiKOEzUU3uIwh1e/vWzePq0ZDduad0j1HgPxNhW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759055394; c=relaxed/simple;
	bh=+lYol6SC2L/DZ3WKLiQSIaKdOq2uJIav7iOb+hlQIJI=;
	h=To:Subject:From:Message-Id:Date; b=lp5sLQRoPuYFe1QHBKszCdnIKihIGFKrsUd6idcYWLtRN4ewzGt0xH7y+TgFilFjyOzTVSHoneG1kKyQ/+SdvRKMgidhs51VZo+MQrxIS8tomUjuz18B555NjKJ40aftW6VZk6NcirZRk7MG4/bk8b5Jt/K6ypqsiRD8BBbn+eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oj3uDoNj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oj3uDoNj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD202C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759055393;
	bh=+lYol6SC2L/DZ3WKLiQSIaKdOq2uJIav7iOb+hlQIJI=;
	h=To:Subject:From:Date:From;
	b=oj3uDoNjQnjVWwTh57Ah+/5NzPgfybzkggjVFl34NVU7s0S+ZbdcBcDIJE+hv4pl3
	 T7bzq5hiylqugpCfvk94xgnuxC0ZeBExnb/20dShx0jxnOYZWqECJE7Q3FvRAx9zBQ
	 S0btJcaXAXScKndWhq2/jpJID7qobNRj6+PMdcbAQG9OcLGTa//9g/sW2Tzs57n5Kb
	 bY75s94GW2O2h+1LjjEKbhYWDYzpWKFS5qzjx0liKf7SCRJO1oGNtvKk6QGIhWwu2v
	 jhbtkj6bhxQFQq30jU69hbXIxauudZYfiaqkiV62yoS9uKurp4F+QX6SJ/ff5BiZLp
	 XedzNxvSrwvTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9867ACAC5BB
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175905539360.19412.15017798945593958944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 075aa89f057f5238bfc5890ee8a1170692e1b5af04dff8b71f53ab42454cc010
Date: Sun, 28 Sep 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759055393
