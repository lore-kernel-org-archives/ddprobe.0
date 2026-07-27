Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A325374E5B
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785127234; cv=none; b=h7U9aAbzOQfXh4hjER/YMrp0nX44oxRGR9jcGihhn8cu9suPMX84UBJoixWrE31Vqp3OHTq0osufQzFgcDKPUb0xQsx78rPcMKbnKEYfNn5vQ/4zM3M9OiGHSSDQiU8GOKPK3WpUr07LU8oZ9NEqQowpck/0RoGLqO2dTx/sDY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785127234; c=relaxed/simple;
	bh=sQW2z+RX62MqwcQNf+PV8hcA//l87BTzRenDH0BwTKI=;
	h=To:Subject:From:Message-Id:Date; b=hgezs1/zCnYzt6L3UdzTAtE7qNWJyXk5CFVM0H+URDoubTXuQIOwf+xajv768FN3pjPnenM1VMUp5QcQxWW5GnTcQv2DDO4gZ1a/WWw6LnEOHSQtvuF0S/BA/ekIYUfD3FqFWWr37uSDAq5BLM9ZWS9V7VFbvB6mT59ggaWtFNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MV/WSEkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MV/WSEkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18E5C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785127233;
	bh=sQW2z+RX62MqwcQNf+PV8hcA//l87BTzRenDH0BwTKI=;
	h=To:Subject:From:Date:From;
	b=MV/WSEkJk+a1VD/Pu/hSKpWVuH5bHhpaURiNfSjOUhBjhfS4SntyzNG+f5A7fo3Y4
	 0t+CGHe7RMVkr5nFxshkNldh+5No2pBgtxrV9Xp1MD9ntCyUaA2t38CaWFVTCFh+ME
	 TPMzX4O8H64C5nHWTwTU2ACG4A+qcI9kR5QxeuXQfpXeGJhkMHmcnj5F1uUVcov98T
	 xSdvUInor0wEgzNwkXq2hw9sXUYbjKKj1YV3QL85eS2lbVb/lvQ/upkh+hOUsnSVsY
	 K4PLDbIHlBWwBCgDVFqA3WuQW7m0+EQNUU1mF3H2QVEp9GinNOxEpRoHJwGmcsdwl2
	 2cFRsxJ3Gdw4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF518C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178512723368.20517.3296261307587260830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e8f75f86ce508368ee0ff671a344d51c726612eddf71031e5eed005676761a8
Date: Mon, 27 Jul 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785127233
