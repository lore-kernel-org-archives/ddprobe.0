Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC9733A1CFF
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771950894; cv=none; b=KwWe5jHpD2k05hmNul8FCMJhfppGCgsvLckUOZ6oQy8/o8iVVa7kuRfxHvCKTFqeRiq9gtWKOLbitxiKcHfweruwaGeuZLe9kb+BMWQPEDvMakZLnMT6ZVKQfai5imu4JSt8MpLM7vXqKv0jeyGlK4TElCyd5rTstLIp27sC6h0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771950894; c=relaxed/simple;
	bh=IxBiXPVDH7gf9a4msDI+PvBIbunhQrZim3YIAzw6rKM=;
	h=To:Subject:From:Message-Id:Date; b=E8NGuJL+xIL0zs6Unp/tGuyEqsfyPeeuo07RLepP2Ok2eAVF7fQgeZ3ukBHK7aWvZLgMSXe/f1f0bzUdNurYNB8bg85MGdaJieIX0Y2IFJ6w621i75vvFmVAr+j/BJZOaaCFXi2GLbloWp4DUFq0bHR4m2hv5dkFZx0bqjHhw5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kDBWOQQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kDBWOQQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC18C19422
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771950893;
	bh=IxBiXPVDH7gf9a4msDI+PvBIbunhQrZim3YIAzw6rKM=;
	h=To:Subject:From:Date:From;
	b=kDBWOQQnT2rZjhdxwk1YR64FC90eeJg/ot5Wy1rt3VyDqrqbkhyiiqiRqfjupyUVJ
	 BAMUZbOqfgsiuJwb9LmmXCA/mQB+5qxENzhubtC86jye31DccZIWIbFNTVjgojZYpn
	 M+mqQvdKDDnunw8XZK+CMrdt9tMozA/XvLZphULpvzxuHovVKMbHYYz8/M70T8nXQw
	 dYgRBLef/HD80oMo8JYpfwmdOp+zTGJnKLA1G9LwDGeuhOLE29ixTIWbn9Jhc+meJm
	 tDcL59mBPMO6CbWAYWaY4v8GOrpIESkbI04kFJagfsV/6qeucsxLl5h8qgXuXZbmD/
	 auog1CEgtejhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9020DF3C9BC
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177195089357.29319.16782392466653636859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b24941d2f208446ff6f66ca3a28419e61ff5758dc4bcd028a4f18d1ec44f78
Date: Tue, 24 Feb 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771950893
