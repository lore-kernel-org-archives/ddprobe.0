Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5360137930
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726635353; cv=none; b=nqoWB7pJ2Ey3smce2L7OLH2GHNroxLH21k3cLqEhwQObshyK03oQ9V4qfQGe1TzzUyS0Z0OOSvPoQo+LzT2YYDVJrxweB2VuDtyqtafF+ieZjLaPWFSYmxit/zHx/nYb9ywfkAKPwQsS90fBvzUk6N+Rn/GdrnO48LOK0zLT15w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726635353; c=relaxed/simple;
	bh=5RoyJX7+wYU+rz97hrWfN4tjDJz57SPU9KssK3OMtx8=;
	h=To:Subject:From:Message-Id:Date; b=rejQHM1i4oeihsG+sLonlRO0xB2rosSqn3wd84l5Oz+eDss0413Y3bSCDYe67r+WK9ofmNu3WTFK2UWNYVtWaOv7SeMsuYcCE0p3GyqccrWdK2jBdjNLQ7DFRMSOaXPgZDPYMN2ZswkIOLY62deO5wkQ5fdDUL6BMjgDht5FH9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gc0dhE2H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gc0dhE2H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B410FC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726635353;
	bh=5RoyJX7+wYU+rz97hrWfN4tjDJz57SPU9KssK3OMtx8=;
	h=To:Subject:From:Date:From;
	b=gc0dhE2HURnOxJ1jUo732vbIQYzUHs2awWL63ODub44Me7kM+9Su3ETTKlUIvO/b2
	 BdClarZUCTrb++KolUDIFmotN/u1o1942dwZVanmIljkYZ2UsBHhYk5q0N6gNaGj6J
	 nsKCCEbkkIAawWsGsXq7Jd9L5gLcuWFcc93HilTeUiAplASOHuvV4DCMpIZ/Kz2UnM
	 ZhQF+ENPez0y0NhEnlmosx4T4gAmGrivbhXQy7UE07gbucfFFY4AkBHcKtmztAdkbe
	 PJsEscE7zDiDlGb/8gH99+crtM9sWwuIi/6yb+CL8zihWTWy0r9XgyOqV0NuecnmXJ
	 0cpfEXtTq51Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3077CAC5B8
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 04:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172663535362.10448.8126800497580059963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ade24d6e67733d98e797c205010e8f797c0533e1e5b540758f433ee70d291b
Date: Wed, 18 Sep 2024 04:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726635353
