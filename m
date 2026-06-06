Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A23B1A9F88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780727074; cv=none; b=uoQRZLSKhBwzoUcwI4VtKkXng10wMVp6Q+Gj1jqtejDSpX4STIGX16WTiZPhmaBoHsGcezYO81E7UKvp3oU2ixAXn7WgZ2B8hjnrDHtkSi16MrBR3LeuQRQipOZkD/Q6x7rnQHX42oDyVhF3tPMXyVVE0jDvB83KblWKQJpz54o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780727074; c=relaxed/simple;
	bh=763RSV2FFeV2cFKZ+e0zpa+4ys2MZQqiWk4fIwnQPuU=;
	h=To:Subject:From:Message-Id:Date; b=rzDyz9WAn9w4NONAvxJnkSJnnK7AVYXwvBhhhPtVs96cd7JdgqZsE2thP8seNotJ7e4T9XHyaI/vS3D2XFrRJZFCouhLX5CRb+A9x4Yp5929Nj82h7PkntMprT6u64MldpprD9lxSd/jHBPtyI2dYtQvT44XcKyLYNipWLIgV6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sqc20KWm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sqc20KWm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAD4AC2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780727073;
	bh=763RSV2FFeV2cFKZ+e0zpa+4ys2MZQqiWk4fIwnQPuU=;
	h=To:Subject:From:Date:From;
	b=Sqc20KWm1fwYOhQvw0fs4nv+3x92KJbBaf1Hgo093MQQtrYW16HDKOg/nZrjU5Jwm
	 hRTwoZCSvMZdpUZMDoBgq9JGKbQAkIREcYROaXg2VsWFZcLms/63YE4Cok4g3W1JqI
	 KPj247g1MJu6gVeKRKFZgiYrZtg5kLZ4qKLnuuL2QJ1yEd0oD+nivsSI+gX51rsY0X
	 dL06nC9LFd9LfCsN4ao0W/a0KJaOU15DkVyLhTP5ayMD2Av/e/ZtbRbF5t1q/gj/5F
	 ZmsHhjwCMqIu7ZW97d52aLuArNCBUEZMU3ysr9ug6WMQjf5SAEnfnR4UnHb+Gx0Rlq
	 /FSkFFsK+d0VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE65CD8C90
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 06:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178072707368.8426.7690361892910367243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8ae6f33ba4d40eb45a49f4423570749fc56fc75e0f34cef232752f8a6c45e6f
Date: Sat, 06 Jun 2026 06:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780727073
