Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A90B350847
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756303794; cv=none; b=GUHzKwFNHIqibnna5duVdgeMrca9XS0MocYng51bKG2pH3Wqy4Ko2svVrMkf5BDDBhD1bsY4HOpXQpy8DGs49LdInvbBjoUKhUxJSToApmUj7eEKEHV9+FRYZgabD60Lmz8doHioU77/5mNgENM4ONdN+nIJWKsP5YrWP/g1rds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756303794; c=relaxed/simple;
	bh=/FpNYLxq+AzecMML8iZD4r8fAs7wEeIcvX7zxkzdvwI=;
	h=To:Subject:From:Message-Id:Date; b=GSbd1o7wELutWbM/saBqyuHdX0cNpVgVmUku+pms1zsA6JVbsrRxSbuZ67VN7bfhoik6M/gG+mbn37GgiWcR1+qJ4EqGvXHth8Qql9ai4V3Op877Vwmz1MhNgypPTXqwsEju03tvUdvpQOwvMKMogjCajaCKSAqtKNhj3H46jQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ym4p3okj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ym4p3okj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D12C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756303793;
	bh=/FpNYLxq+AzecMML8iZD4r8fAs7wEeIcvX7zxkzdvwI=;
	h=To:Subject:From:Date:From;
	b=Ym4p3okjhKWV3BjaEYkKKo9kABgQddStFESkaxKodQ+cgEYEdPIKu3NSG6m0tClmK
	 LTb1eYgplHsDtS9prxZmpZjFqdIBow+xUCO9CVVuzOJKQHAYXwHfNo4FzK+2Mvmbq7
	 JzgdQoXQWCeSZAEkSzs9KpA5/85i+GG97K5G7gOc3PsPT//10LY2hhj4dZfiNACXSD
	 4HPbObKQQT/dvPwma498w3lW8JJX8AVWzdEk0lbK2avEr9t3YbGSI/YKl66doxeGRO
	 iCq5kwKR7+xeDLwgT6pjCzDuiQeRseZO63e31p3Gprgto8S74rszm8WYeTqXU6B0WT
	 agJGEye8R+3Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E68ECA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630379357.11773.1551873002640291962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe01da4456022692094c7b50f036256ee9cac5a92c7fd3a9758b1cf88f1e09e7
Date: Wed, 27 Aug 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756303793
