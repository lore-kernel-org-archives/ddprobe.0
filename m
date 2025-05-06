Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD47372
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746562796; cv=none; b=inT1KPDSBEuAmPM1B79mOC7EsO2/JjAVHypYOyHXYZ/6S8kwo/ACKvoUhirZHAHdyQqDq8P1pQmE71vwR4bCi50oqos+r8wZ71Ir47bYg2Hslahawf6SuoIThAk6lhLsF1d2UR2pzel83bNX9TrUqAcRtRd0WnQGUGzU2C9krcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746562796; c=relaxed/simple;
	bh=ga2jeLAyuhRzHt/p9AimFQl2rTcKWD803Xk/FlnROvs=;
	h=To:Subject:From:Message-Id:Date; b=T+Cli3ou6HMg21R+vgiH3RmBqttpq23/UD4XujCvAtrMIDL/iyO1XmVgd1hOnGOfQ+9+5zEFHaGTKSNfw3Gkcl9Ef5RzDqjRxYQPfjirINtPCKOQ0VpjZnnqJunft7MbKYRF60G/YxhW3ExXCY3YD5T8niZXcv5GAjQ/yt3U57k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=utkMZqYn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="utkMZqYn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A118AC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746562793;
	bh=ga2jeLAyuhRzHt/p9AimFQl2rTcKWD803Xk/FlnROvs=;
	h=To:Subject:From:Date:From;
	b=utkMZqYn9gepPKxwGmVjkjIgzQp1KpGAXyUZsVqXC1r6m3JNQjD8WLiFiUeSfZUUw
	 8fb048kNjBfHEqdFnaCjZ6nZmb4BWtj2vUheCCNRdWJj85o7ugykwoKoG7MBhRCLJB
	 mxO8KiAZ/UIPOmE9SGEuOKZIdIS4REf7MPm2mMhDCz7+09dN28sb2coWmVPla+1CNt
	 cxeoS7Ncs4sSKsEk2EXIsG1Tzv3UqOgVd7dd7lExkELTRv3TlL8uClVJaIX6QneRBq
	 H20migHLFJem+QI3YJWnlXez+yvpgntV8iN5eAbGgKmYkHmhzV1xrCxbjNNQD/+MK8
	 f8SxPS8a22hGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E84FC3ABBE
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174656279357.16911.3281185770089573747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29a6799344450dabcb0303326383e12ba41e4cfae0f24b09ec5339bcbc61855
Date: Tue, 06 May 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746562793
