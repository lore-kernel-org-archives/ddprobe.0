Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7CA51C68F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706281097; cv=none; b=GfGXth0/r0xCpoq5rA2epuIjaG9pSYdotXIuTjWLxarbjm8KpK3mgs52Ih4DZCv6fxBzxZwphnvuSJ9ioMsM2SztL0CKhVR9DClSJ23UQFBZ3wJ/b5ajBmalQjGN6zvk7l5FimRtYwVw6Eg+q6hkegzLX8G7KOWFp+aYy8Sw6k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706281097; c=relaxed/simple;
	bh=2ycbMiCFwyl8kcHxryNfb17M9B8xVZBMe7SL/bg4yc8=;
	h=To:Subject:From:Message-Id:Date; b=g5lZORMbFuISANTd4XMdmEwQCBNx7Ny3/1EulZAE0naIf79dYs3ikFQvcU6ilxZ1PrQLCDyn0L68MOfu6WXllG1EidO5Lfc9dpxiK0Vu9vMKJdVbF7puOvyF6MHI9zoatmirIqUDl9ipBt+Ssh2Rre99iHVpvuQ+LDuYHZaNAUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAJ1XawD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAJ1XawD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71976C43394
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706281096;
	bh=2ycbMiCFwyl8kcHxryNfb17M9B8xVZBMe7SL/bg4yc8=;
	h=To:Subject:From:Date:From;
	b=cAJ1XawDqHwQx3w7tb/ji5a1ygPVJh0+vTlNnsXWEhwOJgeQyyVsKcq9kvruAUakQ
	 GPJPMDzrS3shnJMdfLCqecl4/71yvv2Cf4/JvWEcj45qu3jy8wHNzUT6cgFs8YevEZ
	 c3hs1AF8rN/7HhJQMbszWeFk7FXr/8zG81/M3T5l8dmS4cSdS8kM+0NscGghL7p4QZ
	 0hdf4Tb+m2kmQBBpBKtJAjlMp0GWIE/UEK2qOybEpnvEpDM3/kc5b8VBnBvO1I7YUP
	 Hf7YF3SUzQblhTxPR7redOGGkK16GoX/piqsnqMpAyg+JyhM/W2B0KkCIuz4soaE1G
	 3QsFiOXjWD0Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AFFFC47422
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170628109636.17343.4034342264562830721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dadf0f456a5b7fed67789f1ff8c683158d8abb8e2c23d351b292b75589289d6
Date: Fri, 26 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706281096
