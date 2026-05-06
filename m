Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 034BD24C06A
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778050654; cv=none; b=ri6lTWAcvIN/MVHCbyQ2iQjdpl1GUletF2kZy028Qm4QINnp8hcbAoRLJx5FHsSdsKMI98tBX/txC5WGkWi2taMkx2x9OcQtZ7d9UX+Ed3x8frMHihlJbeBUr5zyDQ09ZE1YmdbrbGnPJI2zHLNyZDxpLvBAXz1YH9ATswvzuCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778050654; c=relaxed/simple;
	bh=3ErFDwfcdCx68d07LAfzZ/KweawquoobhsbloTFRhYE=;
	h=To:Subject:From:Message-Id:Date; b=RI3hivI6wsOVE1/A7rkPGwK9qRjBACd3Ybf5L5xy1oDnNyKXBpEjrua3nnafpYP8js71hozm88WZVT506a5fymmX6nV7+hUJKZJtvtEy0QWkm3DEhAEDpOBN5rMkdQrTDGX14dyOm1FWTkvdmF5olojptj8jpHG0XDLEJdc/lJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMb+pfRy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMb+pfRy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B752AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778050653;
	bh=3ErFDwfcdCx68d07LAfzZ/KweawquoobhsbloTFRhYE=;
	h=To:Subject:From:Date:From;
	b=pMb+pfRyiGbEussYdnBhKH659n9c+++HzKC3ap8aci/cfR+iwg8Ffev14lR8qlFB+
	 OvK41LObUIoBiVVhtfEXIrta2I5uuTOPl8Qos/y2oQ54kfbIqByuX35+RDinIvUDsr
	 OWIbEP54cniRDu8psBVVFJt7qPLvC2i2JoI9djjfCqCMgK5UVpAGEG86mvnPgXTptq
	 S1OmZLef7Z4cUZ95veWmOnRx1ep1K87DbEUXR514PXzbNOqzaq0i5UW9F1IDipZhdH
	 lSwf+ZFW5dJjaXZLl4CKeCYREUuQ2VtN3BZgFk/zT/qF7hpSAUMnsDQqSnTXkpGSug
	 Jw3DAuMYWBGYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CA4CD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 06:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177805065368.28404.10908198189741522268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b380200816c6660b79b9286a5a42be82547c42493797b4f1fc1e81362aa5ce
Date: Wed, 06 May 2026 06:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778050653
