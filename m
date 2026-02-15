Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC122F25F0
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771179294; cv=none; b=d6oEmgjgnzVoNeCPQnZ4qcbUljSSMuj8Uq6PL3M+/hR6OVZ0tmrcahnUZYKwTyGOtnm4dTMKM1P1W6J/hTbPPpuW6drqmzjX0/L7WGLtpq6u/I/jQRIdPx/BUBjzlGQk7DZ7OlMRGy8wgLbA7wroLemUWBW8pe9HJ8Hw/AY3TqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771179294; c=relaxed/simple;
	bh=fTh6xa2S/7ZonEDWaLOhHyVmj4wp1CdagQUrZaOOvxs=;
	h=To:Subject:From:Message-Id:Date; b=Pos6cLDoylGz+2hiFYr8+vFp+xZIxdVub8yKnwVapqx21qY5zRG9qNy5Xhy9sBUSLfSy97+nWmANkDx706jMvHpCB3gD48wy72Lw3IPFjfwVZj8QDvqp25uzv9RBDkMbS9jlCnJrvZASZ6au1uXDi26xKaS5gaUwu2BdEPUP34A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Arjb+MEt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Arjb+MEt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9ABBC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771179293;
	bh=fTh6xa2S/7ZonEDWaLOhHyVmj4wp1CdagQUrZaOOvxs=;
	h=To:Subject:From:Date:From;
	b=Arjb+MEtzLuFQeee0KZb7NptDf+BkR72tz1FoQrLaP++i46is+Baqh2kG3lweQExQ
	 uYlCXc7SeC77E5wHaCxV3Gn3mlVJOV3O383GyVPO501Y+5dKv4GmMzmLR9fOu1j0VT
	 eMKszDlJiACvSrf9nSKRtNHE6qo76lACyje0o/p/O63j9B/djB+Z94oPNNMLBNhD9W
	 9kfAHE7NYVRauthEAmifBOBkwii8sTV/6qEYaag0QpAoAUmBQXNamC1ifMdokxlUnt
	 bSGnGmbUpxbuMmhTmSm8WdU1mZYujGE1jtf38BPvHdX+HhSSzbKE5eh8xyTLYXjwxO
	 m8eRtW0UmTPSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4410E63F0A
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 18:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117929363.11255.6074204358325784225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9218cdceb6514e37efb2950aeb1205352c34de148f89d9293dda5bff2cacb044
Date: Sun, 15 Feb 2026 18:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771179293
