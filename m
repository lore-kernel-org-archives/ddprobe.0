Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311C518C03E
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735080954; cv=none; b=b2+YJBMObymA5zuRu/U6FG3qxkhEaT4EC62QzNqNZ3gy+HCRSRc/ziHvescKN0A8oCVBLhJPHnHXSiwPOhosublwEAsCKOjft/yNdW8WUGyQs+CLYXVmiaC9fZOmDLNkFwXGM5lSdRyRzY9w0BT9sjHrD+eYAp5Y6u5ve4Fddxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735080954; c=relaxed/simple;
	bh=2PV4lXZ6Tve9HTW/MMpOUn76RPusQCnaFTHFxYB88ns=;
	h=To:Subject:From:Message-Id:Date; b=o0AMaLYC52f81N01iyhxO3fD9F6fydlVqXtKLB1CCdx8d/I6UxSAI3ExWC1Egxe5x0Q12WgzRpZPZcNbWhsBs6e5FpqfKbUwHAUclPESknZ4RC4yiXQn/LYAzyo99qho5W9+7jK0qYBuhwjFQib7pCSp2c4BKtVOIPBCVV2a0hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tqBpnd9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tqBpnd9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B582FC4CED0
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735080953;
	bh=2PV4lXZ6Tve9HTW/MMpOUn76RPusQCnaFTHFxYB88ns=;
	h=To:Subject:From:Date:From;
	b=tqBpnd9f5u2wwj3XBisrZOILVIvLilTMuvjrl2Jbn7OigaDvpvVpbjvA8iD9XRGuE
	 JL2knuUQI64PR5Bj4dzpZ686Pa9KfUxJneP/UijPfvnRVeynqUVNGgz11lESPhb6bS
	 d+QYghiwXRMaMLA3B9pmQVmgsO1vIHdvhgeEjeoQr3crOtMjsNGXInWsOmxn37OAfw
	 EedU/2JvnO/stGvnqTPAMwGOVnbtL6JZrlIC4SdrdyUFCNSsTC3ItuJUKsqIIty53j
	 tzazDgjUv1zEKzoag4pSGnTWs0kDYbWzIbPPYBJgwKbkX1HTlI4+ri4ZG2m/tSy2Sd
	 lnbzOO8N48CxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC26E77188
	for <ddprobe@lists.linux.dev>; Tue, 24 Dec 2024 22:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173508095362.16708.2957122856391735049.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 835ac1692895327daef2f9fd737572944fa386eb9ec5ee76f45bac46e52bcb5a
Date: Tue, 24 Dec 2024 22:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735080953
