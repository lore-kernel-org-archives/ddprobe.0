Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FCDC3DB632
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789892434; cv=none; b=ONUE9edInGUHuYg4AkwjMBKM6nz6bM5v9T9lxUW9zolQWD+p9CLdOwbV1OZuql96xAkT4S8bGPRp7ee/pPY11kYqjU6FoNYqwHXrFMUXoYFiXkn+SF2gp9w/OmZKgtVFLxYbA6gf4uIIHmfkFUjt+HVkgo7TotwfPx9+YY9QVaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789892434; c=relaxed/simple;
	bh=huDm7mgr3JMXF9Z1wDxwK4S4akbxTVF3AY6bM1+hyf0=;
	h=To:Subject:From:Message-Id:Date; b=a5jZbtslxIVuISAHh+4OjpNR4+u/S6goOUxj8TBClwOLMELsftxFylKQrzAhljBad/ra65m0nV2fIMQcyF3u+eWgSjchYJ7PToAlEYowWdA0FAaPHPTfjxGILyQcKrz9d/ysCWSIZCITvZt6jPERAV8Gf0J81SlkmX4lyUX+0zk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lmHyXz6i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lmHyXz6i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5EEAC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789892433;
	bh=huDm7mgr3JMXF9Z1wDxwK4S4akbxTVF3AY6bM1+hyf0=;
	h=To:Subject:From:Date:From;
	b=lmHyXz6isPGc/hqcy+otsROsliXgbiDjMvuBptKEQ+0r7O+4e8s9C5DB7NzIx127V
	 Cyf24+kV+DEHZAi39DVaL6r/ABruxsjYKUx9jFqUifVteVo0TpSj8tNARQqGXkYwcN
	 ayihnLelQM2CKcxxlvaWjF3I5D4K0B7CLyko3fOLKADUy6v4yVGSXTtR9g2v93N0oX
	 FwXsVTw2nTUqv7A1lUbTQltmSKrwQkD1X+aY1Xt0oC+OEMhFk5nPtrSym0Xw2qBx5t
	 eJ/oHqSZLnLCwXP0vcgFd/Wa0YvAcb7m1glReBSdYsKIAYwEM83zh7zROxMC+47JOI
	 jmYe6LlGia+4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AE6C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178989243368.10709.13904152477232890925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb3d68480a87ed1da5fdd1893fe52fc673d2dfc5ca2d230efc9f7a0397ecde22
Date: Sun, 20 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789892433
