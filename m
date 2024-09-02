Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40C70187357
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725267354; cv=none; b=Bmm+goCs9d3WLxuMUPoX59iFiF1jxX+mZPdrABx38Qg0lt+UtK1NdnSF/6nHTafkwzF5AnVKZYiMkELxYzfNqYSFD58TioOJOTxn/wolkx1YBRWrM5whfFUJdfGKmVrfqSTg8GMRTrh6zKjYIfiIPe3dN8zp2L9WsrF9/TR0240=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725267354; c=relaxed/simple;
	bh=Ood7xL7i6/uubIWDE+JD9BpeH2SUnnabSazmDfRFu9Y=;
	h=To:Subject:From:Message-Id:Date; b=AXD4tG8JMKun1KiYk4PKIYY7MLA0X+v7mDn8YDHYiE2MATrUv+0rmNA8ro9Sf+SzhkqzLTvMlMz4niMlCwWD6zIPocrjveomGEfwoSaKt/vGxrfclR7pLD2p9pv/exZmc0SaG+Y8SHYH++jywq/Z6kp99I5Ohokpr+j9tpC26is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP2HBaB3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP2HBaB3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5C50C4CECA
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725267353;
	bh=Ood7xL7i6/uubIWDE+JD9BpeH2SUnnabSazmDfRFu9Y=;
	h=To:Subject:From:Date:From;
	b=CP2HBaB3qNYmXt//wC6MLXQvhN3icwKBb8yrjCkSiIvja3e0OVGMdxmWal7etRrDt
	 7KoiGez4+5+fZXtRhpLg/DZe5fFL2jl1v+1vfd2XniBtMZVJL3B0ZtklydDKn9l67I
	 17ttWHgL7lf/Zca3svpwvBV20HBd74WvCxhM0tnrQPUZArVPluBG1CGGgqwWhPJQVT
	 29+nZy/awUqydWSs+AIX8OV5NN6oyXsg/4vpzLuuMzpA2EMJk5F2DwsqcgP0Mlb8jr
	 n3bDOqKJZT8pu/w+3yCuBA2wXr2nNoG7OX/Rq6EvnKc8XtglV1o0JYh2c6HMHGynDv
	 zHngdb6d09Bxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA85CA0ED3
	for <ddprobe@lists.linux.dev>; Mon,  2 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172526735361.17464.4807170531143361462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476c75975c60a0c8f405debfd126cebcf5a3362bb63771f82f3c95d77772f3b3
Date: Mon, 02 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725267353
