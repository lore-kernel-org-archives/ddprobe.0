Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF4DD74040
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732098954; cv=none; b=M6RZQRnb86JHezWaAoIfuW0+n7RtGkvJ3iAQe83KSxJN94Dc1oil+GnLNLt1jgmTlf1kcSYZbG9QnRTt7VLHhzoBMwGEsktGQCCmMir+YNrmZElt8JZg7Xhk2D591N9pfaDDORoWJ9vK/pK72PnB3D/yuQs/hrgY0RdOFn/wgII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732098954; c=relaxed/simple;
	bh=YkKHvx1sJfV2qKCNDc8YD/o3dvk0CmxH59SspAW3Cdk=;
	h=To:Subject:From:Message-Id:Date; b=RnEopaAeFTRlDHPg7iAaVJePHhwmOWRSBI9Gd9+QKF55l5Ytc7my6M7llxUIB/6k59HokrfGtBdAFLDytydrNUOlN0A2YASWR88jw/FU0AZN5TFJ8a42NUZHvQRsP+z9Bw51qIpMEDH3UnSMI3DLFQ2R3cDDoQfQmum32mVF48Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AklU9/9s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AklU9/9s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B36F4C4CECD
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732098953;
	bh=YkKHvx1sJfV2qKCNDc8YD/o3dvk0CmxH59SspAW3Cdk=;
	h=To:Subject:From:Date:From;
	b=AklU9/9sN0oaewDgOwIv0Cp6uUU8daKFbXjD0cW3VUHEFu6JhiJUncsq3HSzyUplR
	 TAvuOKEO+fxudG43bOKsXSyR4xzm9hRGYmMU84Jm4DxVm38V4O4f2jEGXn1jNKPm8D
	 burdk6N5vahMQGtjGhG5+8miUhZsOdgar6CZD3v3Y24nfi+aTse9v6rJ8pd0koyeQc
	 irkqVC6fVbxB3RVD5Q5vRAtVVhWASNNgfNPjfso+T7XhHoP82wekI2vZsdsO336RC4
	 5Q363136EWUtkp3TOJnKn3S8zlK46MVmZTRS9LpJK4/MvGJrAgv64G2IFcto6FBo6V
	 QEVkSVzOuxGMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E4B0D63920
	for <ddprobe@lists.linux.dev>; Wed, 20 Nov 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173209895363.16747.18302491028313236754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1431c929a4488d8a1ce58c6935ba3164d40c154fb83d8049038dfb5ec0ae161e
Date: Wed, 20 Nov 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732098953
