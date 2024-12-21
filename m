Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CBE925949E
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734803154; cv=none; b=kIy9FnCRQuB45+ijeb+e+j6manSSuDUH0I2M8JrM736z+JU3PpzrQURZSE4hdNRvYEe6mkY/tJQSMpgMQWd30b7LGFSxk3WeMXuEfNU/+YXR00bLvv3+AVUoRVHsYPUFOtXKujPQISNjcx6QrTbKhWwrA9LpoT09cOXrtuCkNBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734803154; c=relaxed/simple;
	bh=RN6YgdwHSsjP46ijebi3dLSR/mCNTqn0V6qF9h76uBE=;
	h=To:Subject:From:Message-Id:Date; b=h6/mK44GdZw6Fes52e1QHWIRw5cCfhPxiBeTYcjvZ0F5TdW3M4Ki4Bdk53UgC7oEDNE2R68TJ/tWHH+lJ89jLP+CMP+RaDaOIUZX8Siae2Wj1c6dbKXcAVx+IJFLewjYUdRsRYafI6bR+xpgHjPkHWFqGjzw4ummDrJcnxGiycE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fmj4amVJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fmj4amVJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0875C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734803153;
	bh=RN6YgdwHSsjP46ijebi3dLSR/mCNTqn0V6qF9h76uBE=;
	h=To:Subject:From:Date:From;
	b=Fmj4amVJPHyoLN0WXzsf9ykOHqHWOY1dMdBC3NpFy9KLVpOOOpKTM0KwbE94CgmCq
	 poiiY9Qm59Cu0GpSCLRxe3rpVqBv0mOjkL5KUQbnaCRgLG/PIem5oLdQXl2p0pcsQY
	 JIO4gUt5u2n+J/FLna6baOnUSXp/XyKKrkMKCq+kZW9WFlTsVyLlD5hCESqTehCQQQ
	 Ndjdhq3k36PTn2te57NS6yuRA+AgeIilKUoIN/g0S82sRCgyiE/zHnuHbut9uF4r0Z
	 8nk9zo9oEj7wiBqMGu9O1mCDozq+GlhdAHYHfOTbZETfRLVcM6XGHl6aOqYdf1yzDC
	 A9xzuCB/mNotQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9862DE7718C
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173480315361.1737.17372619430580397054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71205c6c625b2b398b2bf3d7e72235238395232e601e6f0dc291a53a4306d42d
Date: Sat, 21 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734803153
