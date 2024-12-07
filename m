Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F9B3FF1
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733595354; cv=none; b=lXDw9dJZalgndwqu0lYo6Wf/7QvekAq8ulojthLwoGOwfEzmmuGCN9wkYrW/sqsHuc0YoSfwl/E4cH68I0jqk5Whwx+ophYS4yU0G4QYrVz3eVrC+zKGbsLSRJW7C6Gmhpp4cKa+4vzBcMtblIhwCHHwFYwocwCioSvCB4uhw+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733595354; c=relaxed/simple;
	bh=g5uGH2y5Tl5oe+c6+pAiLq1IXYkBsBGP0TFzZj87EtI=;
	h=To:Subject:From:Message-Id:Date; b=lbauHO9Q5omccj3f5ePVFO2p6cOL5fyUPAs1PBD/xmHV3cSs45jhh3dHiE+rqa3Raud/MkGXvcZbcEdCHfL526Zf02noGrDdxdfhf0ZIYSXDyRmu+F1yKeKYOv4U7fvkCjgqLbvexh8Y/1LUtN7u8qvxlt3pLpMGIIB0FFX3DMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcjO3wDK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcjO3wDK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78BCC4CECD
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733595353;
	bh=g5uGH2y5Tl5oe+c6+pAiLq1IXYkBsBGP0TFzZj87EtI=;
	h=To:Subject:From:Date:From;
	b=EcjO3wDKr8TUGKdI+y0b6QhWF3m3aR/bZYDZP5dWcf7wjnSiaFgpo7s7cEbc9/0By
	 5yBubyg6+v4cDEUTOSAXFmtonJ3bcDkBZ+wckB7Q7dwop0ZW5NIHoptpVhAqBgNt14
	 5HvMxgb3F/2cGUUZlWyWdhstXadl32LlUr/ZV9uh1fMf3q+EAT8X/vH20OsoIpJfNJ
	 Vg+WbDKGvj+fxhAnXFHWRl2VMswJRSZ5pnXBydHgz6gQjdlVygq1R2OQQ5VzvWKv8H
	 nLkuhCU66wlGoSnBMKmeQYxd943K4evmzFBtBMStDTEjVCO4b9iPKIMqcsY6q9ikih
	 cYojH6kfk9FGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2D98E7717B
	for <ddprobe@lists.linux.dev>; Sat,  7 Dec 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173359535363.25876.17690547508515894365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f13bb01ea9583b25e33bfd32e291f4bed9824f428a72841d97c0a47191548543
Date: Sat, 07 Dec 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733595353
